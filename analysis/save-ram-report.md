# Save RAM Verification

The MMC1 cartridge exposes battery-backed SRAM at `$6000-$7FFF`. Runtime tracing observed direct writes to every address from `$6001-$62EE`; recovered code uses these addresses in place, so there is no separate RAM-to-save serialization layer in the recovered paths.

No checksum field or full-save checksum pass appears in the recovered executable paths. Save integrity is therefore recorded as direct SRAM persistence with no verified checksum, rather than assigning an unsupported algorithm.

| Field | Range | Runtime writes | Initialization | Evidence |
|---|---:|---:|---|---|
| SaveWorkArea | `$610E-$6156` | 73/73 | Cleared by InitializeChapterSaveState | Bounded loop at bank $12:$8EB4 writes $610E-$6156 |
| SaveTotalGold | `$6157-$6158` | 2/2 | Set by chapter initialization | Read/write arithmetic uses the little-endian pair $6157-$6158 |
| SaveCurrentChapterMinus1 | `$615A-$615A` | 1/1 | Caller-selected before chapter initialization | Chapter branches across banks $08/$10-$12/$18/$19 |
| SaveHeroGender | `$615C-$615C` | 1/1 | Initialized from chapter record | Read by map and battle presentation code |
| SaveHeroName | `$615D-$6164` | 8/8 | Initialized from chapter record | Eight-byte copy loop reads offsets $00-$07 |
| SavePartyCharacters | `$616A-$616D` | 4/4 | Initialized from chapter-specific ROM tables | Four party identifiers written by bank $12:$8ECA |
| SaveGameStateFlags | `$618E-$618E` | 1/1 | Cleared then conditionally set by chapter initialization | BIT-tested by bank $10 and written by bank $12 |
| SavePlayerWorldPosition | `$6197-$6198` | 2/2 | Updated by map position logic | Compared with PlayerWorldX/PlayerWorldY by fixed-bank map logic |
| SaveStoryFlags | `$625D-$625D` | 1/1 | Game-event updates | Bit-field operations in bank $1E |
| SaveVehicleFlags | `$628E-$628E` | 1/1 | Game-event updates | BIT-tested by bank $1E movement logic |
| SaveJoinedCharacterFlags | `$6292-$6292` | 1/1 | Party-event updates | Read by bank $19 map-asset selection |
| SaveTransformState | `$6296-$6297` | 2/2 | Map-event updates | Read/write use of step and shape bytes in banks $1D/$1E |
| SaveSmallMedals | `$62A2-$62A2` | 1/1 | Item-event updates | Named field used by item and event services |
| SaveCasinoCoins | `$62AD-$62AF` | 3/3 | Casino updates | Three-byte carry-propagating arithmetic in bank $17 |
| SaveTimeOfDay | `$62ED-$62ED` | 1/1 | Frame/world-time updates | Incremented and wrapped by fixed-bank time logic |
