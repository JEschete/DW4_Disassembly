local config = assert(DW4_TRACE_CONFIG_DATA, "DW4_TRACE_CONFIG_DATA is not set")
local bootstrap = config.bootstrap and io.open(config.bootstrap, "w") or nil
if bootstrap then bootstrap:write("loaded\n") end
if bootstrap then bootstrap:write("config=embedded\n") end
if bootstrap then bootstrap:close() end
FCEU.speedmode("maximum")

local control = 0x0C
local chr0 = 0x10
local prg = 0
local shift = 0x10
local executed = {}
local reads = {}
local writes = {}
local pending_calls = {}
local resumes = {}
local callback_probe = nil
local target_bank = nil
local navigation_direction = 0
local navigation_x = 0
local navigation_y = 0
local navigation_map = 0
local navigation_submap = 0
local navigation_stalled_frames = 0

local function mapped_bank(pc)
    local outer = math.floor(chr0 / 16) % 2
    local mode = math.floor(control / 4) % 4
    local selected = prg % 16
    if mode <= 1 then
        local pair = selected - (selected % 2)
        return outer * 16 + pair + (pc >= 0xC000 and 1 or 0)
    elseif mode == 2 then
        return pc < 0xC000 and outer * 16 or outer * 16 + selected
    end
    return pc < 0xC000 and outer * 16 + selected or outer * 16 + 15
end

local function record_read(address, size)
    if type(address) == "number" then
        local bank = mapped_bank(address)
        reads[string.format("%02X\t%04X", bank, address)] = true
        if bank == 0x06 or bank == 0x07 then
            target_bank = bank
        end
    end
end

local function record_execution(address, size)
    if callback_probe == nil then
        callback_probe = string.format("address=%s size=%s", tostring(address), tostring(size))
    end
    if type(address) == "number" then
        local bank = mapped_bank(address)
        executed[string.format("%02X\t%04X", bank, address)] = true
        local stack_pointer = memory.getregister("s")
        for index = #pending_calls, 1, -1 do
            local pending = pending_calls[index]
            if pending.bank == bank and pending.stack_pointer == stack_pointer and
                address >= pending.address + 2 and address <= pending.address + 7 then
                resumes[string.format(
                    "%02X\t%04X\t%s\t%04X",
                    pending.bank,
                    pending.address,
                    pending.kind,
                    address)] = true
                while #pending_calls >= index do
                    table.remove(pending_calls)
                end
                break
            end
        end

        local opcode = memory.readbyte(address)
        if opcode == 0x00 or opcode == 0x20 then
            table.insert(pending_calls, {
                bank = bank,
                address = address,
                kind = opcode == 0x00 and "brk" or "jsr",
                stack_pointer = stack_pointer
            })
        end
    end
end

local function record_sram_write(address, size, value)
    if type(address) == "number" then
        writes[string.format("%04X", address)] = true
    end
end

local function mapper_write(address, size, value)
    if AND(value, 0x80) ~= 0 then
        shift = 0x10
        control = OR(control, 0x0C)
        return
    end

    local complete = AND(shift, 1) ~= 0
    shift = math.floor(shift / 2) + AND(value, 1) * 16
    if complete then
        if address < 0xA000 then
            control = shift
        elseif address < 0xC000 then
            chr0 = shift
        elseif address >= 0xE000 then
            prg = shift
        end
        shift = 0x10
    end
end

local api_log = assert(io.open(config.api_log, "w"))
api_log:write("memory.registerexec=", type(memory.registerexec), "\n")
api_log:write("memory.registerwrite=", type(memory.registerwrite), "\n")
api_log:write("memory.registerread=", type(memory.registerread), "\n")
api_log:write("memory.getregister=", type(memory.getregister), "\n")
api_log:close()

memory.registerexec(0x8000, 0x8000, record_execution)
memory.registerread(0x8000, 0x8000, record_read)
memory.registerwrite(0x6000, 0x2000, record_sram_write)
memory.registerwrite(0x8000, 0x8000, mapper_write)

local completed_frames = 0
local random_state = 0x4D57
for frame = 1, config.frames do
    local input = {}
    if config.profile == "startup" or config.profile == "banking" or config.profile == "audio" then
        -- Startup naturally exercises reset, mapper setup, and title-screen audio.
    elseif config.profile == "buttons" or config.profile == "menus" or config.profile == "text" or config.profile == "save-load" then
        if frame > 90 then
            local phase = frame % 120
            if phase == 0 or phase == 1 then input.start = 1 end
            if phase == 20 or phase == 21 then input.select = 1 end
            if phase == 40 or phase == 41 then input.A = 1 end
            if phase == 60 or phase == 61 then input.B = 1 end
            if phase >= 80 and phase < 90 then input.down = 1 end
            if phase >= 100 and phase < 110 then input.up = 1 end
        end
    elseif config.profile == "wander" then
        if frame >= 150 and frame <= 154 then input.start = 1 end
        if frame > 240 then
            local phase = frame % 320
            if phase % 40 < 2 then input.A = 1 end
            if phase % 96 >= 48 and phase % 96 < 50 then input.B = 1 end
            if phase < 80 then
                input.up = 1
            elseif phase < 160 then
                input.right = 1
            elseif phase < 240 then
                input.down = 1
            else
                input.left = 1
            end
        end
    elseif config.profile == "hunt-assets" or config.profile == "battle" or config.profile == "graphics" then
        if frame >= 120 and frame <= 124 then
            input.start = 1
        elseif frame > 180 then
            if frame % 13 == 0 then input.A = 1 end
            if frame % 97 == 0 then input.B = 1 end
            if frame % 19 == 1 then
                random_state = (random_state * 109 + 89) % 65536
            end
            local direction = math.floor(random_state / 256) % 4
            if direction == 0 then input.up = 1
            elseif direction == 1 then input.right = 1
            elseif direction == 2 then input.down = 1
            else input.left = 1 end
        end
    elseif config.profile == "seek-world" then
        if frame >= 120 and frame <= 124 then
            input.start = 1
        elseif frame > 180 then
            if frame < 5000 and frame % 13 == 0 then
                input.A = 1
            elseif frame < 5500 then
                if frame % 30 == 0 then input.A = 1 end
                if frame % 30 == 8 then input.B = 1 end
            elseif frame < 5700 then
                if frame % 11 == 0 then input.B = 1 end
            else
                local current_x = memory.readbyte(0x0044)
                local current_y = memory.readbyte(0x0045)
                local current_map = memory.readbyte(0x0063)
                local current_submap = memory.readbyte(0x0064)
                if current_map == 0x02 and current_submap == 0x00 and current_y >= 0x1F then
                    input.down = 1
                else
                if current_x ~= navigation_x or current_y ~= navigation_y or
                    current_map ~= navigation_map or current_submap ~= navigation_submap then
                    navigation_x = current_x
                    navigation_y = current_y
                    navigation_map = current_map
                    navigation_submap = current_submap
                    navigation_stalled_frames = 0
                else
                    navigation_stalled_frames = navigation_stalled_frames + 1
                    if navigation_stalled_frames >= 90 then
                        navigation_direction = (navigation_direction + 1) % 4
                        navigation_stalled_frames = 0
                    end
                end
                if navigation_direction == 0 then input.down = 1
                elseif navigation_direction == 1 then input.right = 1
                elseif navigation_direction == 2 then input.up = 1
                else input.left = 1 end
                end
            end
        end
    else
        if frame >= 150 and frame <= 154 then
            input.start = 1
        elseif frame > 240 then
            if frame % 30 == 0 then input.A = 1 end
            if frame % 240 < 60 then
                input.right = 1
            elseif frame % 240 < 120 then
                input.down = 1
            elseif frame % 240 < 180 then
                input.left = 1
            else
                input.up = 1
            end
        end
    end
    joypad.set(1, input)
    FCEU.frameadvance()
    completed_frames = frame
    if target_bank ~= nil then
        break
    end
end

local keys = {}
for key in pairs(executed) do
    table.insert(keys, key)
end
table.sort(keys)

local output = assert(io.open(config.output, "w"))
output:write("# Bank\tCPUAddress\n")
for _, key in ipairs(keys) do
    output:write(key, "\n")
end
output:close()

local resume_keys = {}
for key in pairs(resumes) do
    table.insert(resume_keys, key)
end
table.sort(resume_keys)
local resume_output = assert(io.open(config.resume_output, "w"))
resume_output:write("# Bank\tCallAddress\tKind\tContinuation\n")
for _, key in ipairs(resume_keys) do
    resume_output:write(key, "\n")
end
resume_output:close()

local read_keys = {}
for key in pairs(reads) do
    table.insert(read_keys, key)
end
table.sort(read_keys)
local read_output = assert(io.open(config.read_output, "w"))
read_output:write("# Bank\tCPUAddress\n")
for _, key in ipairs(read_keys) do
    read_output:write(key, "\n")
end
read_output:close()

local write_keys = {}
for key in pairs(writes) do
    table.insert(write_keys, key)
end
table.sort(write_keys)
local write_output = assert(io.open(config.write_output, "w"))
write_output:write("# CPUAddress\n")
for _, key in ipairs(write_keys) do
    write_output:write(key, "\n")
end
write_output:close()

local screenshot_output = assert(io.open(config.screenshot, "wb"))
screenshot_output:write(gui.gdscreenshot())
screenshot_output:close()

local api_append = assert(io.open(config.api_log, "a"))
api_append:write("callback=", tostring(callback_probe), "\n")
api_append:close()

local done = assert(io.open(config.done, "w"))
done:write(string.format(
    "frames=%d\naddresses=%d\nresumes=%d\nreads=%d\nwrites=%d\nmap=%02X\nsubmap=%02X\nworld_x=%02X\nworld_y=%02X\nlocal_x=%02X\nlocal_y=%02X\nstate_41=%02X\n",
    completed_frames,
    #keys,
    #resume_keys,
    #read_keys,
    #write_keys,
    memory.readbyte(0x0063),
    memory.readbyte(0x0064),
    memory.readbyte(0x0042),
    memory.readbyte(0x0043),
    memory.readbyte(0x0044),
    memory.readbyte(0x0045),
    memory.readbyte(0x0041)))
if target_bank ~= nil then
    done:write(string.format("target_bank=%02X\n", target_bank))
end
done:close()

os.exit(0)