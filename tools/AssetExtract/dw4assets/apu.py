"""NES APU (2A03, NTSC) renderer for captured register writes -> PCM.

Channel outputs are integrated exactly over each output sample (box filter at the CPU clock), mixed with the
standard nonlinear DAC formulas and passed through the console's output filters (90 Hz and 440 Hz high-pass,
14 kHz low-pass). DMC playback is not modelled; the game only writes $4010 = 0 (checked by the caller).
"""
import numpy as np

CPU_HZ = 1789773
LENGTHS = [10, 254, 20, 2, 40, 4, 80, 6, 160, 8, 60, 10, 14, 12, 26, 14,
           12, 16, 24, 18, 48, 20, 96, 22, 192, 24, 72, 26, 16, 28, 32, 30]
NOISE_PERIODS = [4, 8, 16, 32, 64, 96, 128, 160, 202, 254, 380, 508, 762, 1016, 2034, 4068]
DUTY = [[0, 1, 0, 0, 0, 0, 0, 0], [0, 1, 1, 0, 0, 0, 0, 0], [0, 1, 1, 1, 1, 0, 0, 0], [1, 0, 0, 1, 1, 1, 1, 1]]
TRIANGLE = list(range(15, -1, -1)) + list(range(16))
_orbits = {}


def noise_orbit(mode, state):
    """Cycle of LFSR states reachable from state; returns (outputs array, index of state)."""
    for key, (states, index, outputs) in _orbits.items():
        if key[0] == mode and state in index:
            return key, index[state]
    states = []
    seen = {}
    s = state
    while s not in seen:
        seen[s] = len(states)
        states.append(s)
        bit = (s ^ (s >> (6 if mode else 1))) & 1
        s = (s >> 1) | (bit << 14)
    start = seen[s]
    cycle = states[start:]
    index = {v: i for i, v in enumerate(cycle)}
    outputs = np.array([0 if v & 1 else 1 for v in cycle], dtype=np.float64)
    key = (mode, cycle[0])
    _orbits[key] = (cycle, index, outputs)
    if state not in index:     # transient states before the cycle: step into the cycle
        return key, 0
    return key, index[state]


class Envelope:
    def __init__(self):
        self.start = False
        self.decay = 0
        self.divider = 0
        self.loop = False
        self.constant = False
        self.period = 0

    def clock(self):
        if self.start:
            self.start = False
            self.decay = 15
            self.divider = self.period
        elif self.divider == 0:
            self.divider = self.period
            if self.decay:
                self.decay -= 1
            elif self.loop:
                self.decay = 15
        else:
            self.divider -= 1

    def volume(self):
        return self.period if self.constant else self.decay


class Channel:
    """Common integration state: sequence values, step length (cycles), position and elapsed cycles."""

    def __init__(self):
        self.position = 0
        self.elapsed = 0.0
        self.enabled = False
        self.length = 0

    def sequence(self):
        """(values array, step cycles) or (constant level, None)."""
        raise NotImplementedError

    def integrate(self, offsets, span):
        """Integral of the output from the segment start to each offset (cycles), then advance by span."""
        values, step = self.sequence()
        if step is None:
            return values * offsets
        n = len(values)
        cumulative = np.concatenate(([0.0], np.cumsum(np.concatenate((values, values)))))
        total = cumulative[n]

        def integral(u):
            steps = np.floor(u / step).astype(np.int64)
            remainder = u - steps * step
            full, partial = np.divmod(steps, n)
            base = self.position
            summed = full * total + cumulative[base + partial] - cumulative[base]
            current = values[(base + partial) % n]
            return summed * step + current * remainder

        start = self.elapsed
        result = integral(start + offsets) - integral(np.array([start]))[0]
        u = start + span
        steps = int(u // step)
        self.position = (self.position + steps) % n
        self.elapsed = u - steps * step
        return result


class Pulse(Channel):
    def __init__(self, second):
        super().__init__()
        self.second = second
        self.duty = 0
        self.envelope = Envelope()
        self.timer = 0
        self.sweep_enabled = False
        self.sweep_period = 0
        self.sweep_negate = False
        self.sweep_shift = 0
        self.sweep_reload = False
        self.sweep_divider = 0

    def target(self):
        change = self.timer >> self.sweep_shift
        if self.sweep_negate:
            return self.timer - change - (0 if self.second else 1)
        return self.timer + change

    def muted(self):
        return self.length == 0 or self.timer < 8 or self.target() > 0x7FF

    def sequence(self):
        if self.muted():
            return 0.0, None
        values = np.array(DUTY[self.duty], dtype=np.float64) * self.envelope.volume()
        return values, 2 * (self.timer + 1)

    def write(self, register, value):
        if register == 0:
            self.duty = value >> 6
            self.envelope.loop = bool(value & 0x20)
            self.envelope.constant = bool(value & 0x10)
            self.envelope.period = value & 0x0F
        elif register == 1:
            self.sweep_enabled = bool(value & 0x80)
            self.sweep_period = (value >> 4) & 7
            self.sweep_negate = bool(value & 0x08)
            self.sweep_shift = value & 7
            self.sweep_reload = True
        elif register == 2:
            self.timer = (self.timer & 0x700) | value
        else:
            self.timer = (self.timer & 0xFF) | ((value & 7) << 8)
            if self.enabled:
                self.length = LENGTHS[value >> 3]
            self.position = 0
            self.elapsed = 0.0
            self.envelope.start = True

    def half_frame(self):
        if not self.envelope.loop and self.length:
            self.length -= 1
        if self.sweep_divider == 0 and self.sweep_enabled and self.sweep_shift and not self.muted():
            self.timer = self.target()
        if self.sweep_divider == 0 or self.sweep_reload:
            self.sweep_divider = self.sweep_period
            self.sweep_reload = False
        else:
            self.sweep_divider -= 1


class Triangle(Channel):
    def __init__(self):
        super().__init__()
        self.control = False
        self.reload_value = 0
        self.linear = 0
        self.reload = False
        self.timer = 0
        self.values = np.array(TRIANGLE, dtype=np.float64)

    def sequence(self):
        if self.length == 0 or self.linear == 0 or self.timer < 2:
            return float(TRIANGLE[self.position]), None
        return self.values, self.timer + 1

    def write(self, register, value):
        if register == 0:
            self.control = bool(value & 0x80)
            self.reload_value = value & 0x7F
        elif register == 2:
            self.timer = (self.timer & 0x700) | value
        elif register == 3:
            self.timer = (self.timer & 0xFF) | ((value & 7) << 8)
            if self.enabled:
                self.length = LENGTHS[value >> 3]
            self.reload = True

    def quarter_frame(self):
        if self.reload:
            self.linear = self.reload_value
        elif self.linear:
            self.linear -= 1
        if not self.control:
            self.reload = False

    def half_frame(self):
        if not self.control and self.length:
            self.length -= 1


class Noise(Channel):
    def __init__(self):
        super().__init__()
        self.envelope = Envelope()
        self.mode = 0
        self.period = NOISE_PERIODS[0]
        self.orbit = noise_orbit(0, 1)
        self.position = self.orbit[1]

    def sequence(self):
        if self.length == 0:
            return 0.0, None
        key = self.orbit[0]
        outputs = _orbits[key][2]
        return outputs * self.envelope.volume(), self.period

    def write(self, register, value):
        if register == 0:
            self.envelope.loop = bool(value & 0x20)
            self.envelope.constant = bool(value & 0x10)
            self.envelope.period = value & 0x0F
        elif register == 2:
            mode = 1 if value & 0x80 else 0
            self.period = NOISE_PERIODS[value & 0x0F]
            if mode != self.mode:
                key = self.orbit[0]
                state = _orbits[key][0][self.position]
                self.orbit = noise_orbit(mode, state)
                self.position = self.orbit[1]
                self.mode = mode
        elif register == 3:
            if self.enabled:
                self.length = LENGTHS[value >> 3]
            self.envelope.start = True

    def half_frame(self):
        if not self.envelope.loop and self.length:
            self.length -= 1


def render(events, total_cycles, rate=44100, filters=True):
    """events: sorted (cpu_cycle, register, value). Returns float64 samples in -1..1 range (approximately)."""
    pulse1, pulse2, triangle, noise = Pulse(False), Pulse(True), Triangle(), Noise()
    channels = [pulse1, pulse2, triangle, noise]
    samples = int(total_cycles * rate / CPU_HZ)
    boundaries = (np.arange(samples + 1, dtype=np.float64) * (CPU_HZ / rate))
    integrals = np.zeros((4, samples + 1))
    running = np.zeros(4)
    five_step = False
    frame_origin = 0
    schedule = []

    def frame_steps(origin, five):
        if five:
            return [(origin + 7457, "q"), (origin + 14913, "qh"), (origin + 22371, "q"), (origin + 37281, "qh")], 37282
        return [(origin + 7457, "q"), (origin + 14913, "qh"), (origin + 22371, "q"), (origin + 29829, "qh")], 29830

    steps, period = frame_steps(0, False)
    pending = list(steps)
    time = 0.0
    boundary_index = 1
    event_index = 0
    while True:
        next_write = events[event_index][0] if event_index < len(events) else None
        next_clock = pending[0][0] if pending else None
        candidates = [t for t in (next_write, next_clock, total_cycles) if t is not None]
        target = min(candidates)
        # integrate [time, target]
        end_index = int(np.searchsorted(boundaries, target, side="right"))
        offsets = boundaries[boundary_index:end_index] - time
        span = target - time
        for number, channel in enumerate(channels):
            values = channel.integrate(np.concatenate((offsets, [span])), span)
            integrals[number, boundary_index:end_index] = running[number] + values[:-1]
            running[number] += values[-1]
        boundary_index = end_index
        time = target
        if target >= total_cycles:
            break
        if next_clock is not None and target == next_clock and (next_write is None or next_clock <= next_write):
            _, kind = pending.pop(0)
            for channel in (pulse1, pulse2, noise):
                channel.envelope.clock()
            triangle.quarter_frame()
            if "h" in kind:
                for channel in channels:
                    channel.half_frame()
            if not pending:
                frame_origin += period
                steps, period = frame_steps(frame_origin, five_step)
                pending = list(steps)
            continue
        _, register, value = events[event_index]
        event_index += 1
        if 0x4000 <= register <= 0x4003:
            pulse1.write(register - 0x4000, value)
        elif 0x4004 <= register <= 0x4007:
            pulse2.write(register - 0x4004, value)
        elif 0x4008 <= register <= 0x400B:
            triangle.write(register - 0x4008, value)
        elif 0x400C <= register <= 0x400F:
            noise.write(register - 0x400C, value)
        elif register == 0x4015:
            for bit, channel in enumerate(channels):
                channel.enabled = bool(value & (1 << bit))
                if not channel.enabled:
                    channel.length = 0
        elif register == 0x4017:
            five_step = bool(value & 0x80)
            frame_origin = time
            steps, period = frame_steps(frame_origin, five_step)
            pending = list(steps)
            if five_step:
                for channel in (pulse1, pulse2, noise):
                    channel.envelope.clock()
                triangle.quarter_frame()
                for channel in channels:
                    channel.half_frame()
    width = CPU_HZ / rate
    levels = np.diff(integrals, axis=1) / width
    p = levels[0] + levels[1]
    pulse_out = np.where(p > 0, 95.88 / (8128.0 / np.maximum(p, 1e-9) + 100.0), 0.0)
    tnd = levels[2] / 8227.0 + levels[3] / 12241.0
    tnd_out = np.where(tnd > 0, 159.79 / (1.0 / np.maximum(tnd, 1e-12) + 100.0), 0.0)
    signal = pulse_out + tnd_out
    if filters:
        signal = _filter(signal, rate)
    return signal


def _filter(signal, rate):
    try:
        from scipy.signal import lfilter
    except ImportError:
        return signal - signal.mean()

    def high_pass(x, cutoff):
        rc = 1.0 / (2 * np.pi * cutoff)
        alpha = rc / (rc + 1.0 / rate)
        return lfilter([alpha, -alpha], [1, -alpha], x)

    def low_pass(x, cutoff):
        rc = 1.0 / (2 * np.pi * cutoff)
        alpha = (1.0 / rate) / (rc + 1.0 / rate)
        return lfilter([alpha], [1, alpha - 1], x)

    return low_pass(high_pass(high_pass(signal, 90.0), 440.0), 14000.0)


def write_wav(path, signal, rate=44100, loop=None):
    """16-bit mono PCM; loop=(start_sample, end_sample) adds a 'smpl' chunk with a forward loop."""
    import struct
    pcm = np.clip(np.round(signal * 32767.0), -32768, 32767).astype("<i2").tobytes()
    chunks = [b"fmt " + struct.pack("<IHHIIHH", 16, 1, 1, rate, rate * 2, 2, 16),
              b"data" + struct.pack("<I", len(pcm)) + pcm]
    if loop:
        start, end = loop
        smpl = struct.pack("<IIIIIIIII", 0, 0, int(1e9 / rate), 60, 0, 0, 0, 1, 0)
        smpl += struct.pack("<IIIIII", 0, 0, start, end - 1, 0, 0)
        chunks.append(b"smpl" + struct.pack("<I", len(smpl)) + smpl)
    body = b"".join(chunks)
    with open(path, "wb") as handle:
        handle.write(b"RIFF" + struct.pack("<I", 4 + len(body)) + b"WAVE" + body)
