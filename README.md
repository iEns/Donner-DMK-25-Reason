# Donner DMK-25 Remote Map for Reason

Remote mapping configuration for the Donner DMK-25 MIDI controller in Propellerhead Reason 11, 12, and 13.

## Features

- All transport buttons (Loop, Rewind, Fast Forward, Stop, Play, Record) work as expected
- All faders and knobs are assignable to any Reason parameter
- Bank switching for faders/knobs is fully supported
- Pads are assignable to any function, with bank and program switching support

## Installation

### Windows

1. Close Reason if it's running

2. Copy `DMK25_reason.png`, `DonnerDMK25.luacodec`, and `DonnerDMK25_101.lua` to:
   ```
   C:\Program Files\Propellerhead\Reason XX\Remote\DefaultCodecs\Lua Codecs\Donner
   ```

3. Copy `DonnerDMK25.remotemap` to:
   ```
   C:\Program Files\Propellerhead\Reason XX\Remote\DefaultMaps\Donner
   ```

4. Create the `Donner` folders if they don't exist

5. Replace `XX` with your Reason version (11, 12, or 13)

### macOS

1. Close Reason if it's running

2. In Finder, navigate to `/Applications`, right-click `Reason XX.app`, and select **Show Package Contents**

3. Copy `DMK25_reason.png`, `DonnerDMK25.luacodec`, and `DonnerDMK25_101.lua` to:
   ```
   Contents/Resources/Remote/DefaultCodecs/Lua Codecs/Donner
   ```

4. Copy `DonnerDMK25.remotemap` to:
   ```
   Contents/Resources/Remote/DefaultMaps/Donner
   ```

5. Create the `Donner` folders if they don't exist

## Setup in Reason

1. Open **Preferences** > **Control Surfaces**
2. Click **Add Manually**
3. Select **Donner DMK-25** from the list
4. Choose the correct MIDI In-Port for your controller

> **Note:** Auto-detection is not supported. The DMK-25 does not respond to MIDI identity requests, so manual setup is required.

## Usage

### Default Pad Functions (PROGRAM Mode)

When **PROGRAM** is activated on the DMK-25, the pads provide the following shortcuts:

| Pad | Function |
|-----|----------|
| 1 | Mute current track |
| 2 | Solo current track |
| 4 | Previous track |
| 5 | Undo |
| 6 | Redo |
| 8 | Next track |

To customize pad functions in PROGRAM mode, edit the `DonnerDMK25.remotemap` file.

## Compatibility

Tested on Reason 11 and 12. The configuration should work on Reason 13, but this has not been verified.

## Disclaimer

Provided as-is, without warranty.
