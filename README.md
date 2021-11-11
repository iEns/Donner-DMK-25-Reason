# Donner DMK-25 Remote Map for Reason 11 and 12

These basic configuration files will allow you to use all the features of the DMK-25 in Reason 11 and 12 (and possibly other versions?).

It solves the problems that the transport buttons are weird, and some of the faders can't be assigned to remote functions.

### Installation on Windows:
Download the files and copy them into your Reason Remote folder like this:

1. Shut down Reason

2. Copy DMK25_reason.png, DonnerDMK25.luacodec and DonnerDMK25_100.lua into
C:\Program Files\Propellerhead\Reason 12\Remote\DefaultCodecs\Lua Codecs\Donner

3. Copy DonnerDMK25.remotemap into
C:\Program Files\Propellerhead\Reason 12\Remote\DefaultMaps\Donner

4. Start reason

5. In Reason Preferences under Control Surfaces, click "Add Manually" and select Donner DMK-25 and choose the correct In-Port.

Important: I was unable to make autodetect work, since the controller seemingly does not respond to midi-input, making automatic identification impossible.


### Installation on Mac

No clue. I guess it's mostly the same, but the file folders are located differently.


### Usage:

All the transport buttons now work as expected.
All faders and knobs (including bank switching) can now be assigned to any function in Reason.
Pads can be assigned to any function in Reason. Switching of pad banks and pad program are supported.

If *PROGRAM* is activated on the Donner, the pads have the following functions:

	Pad 1: Mute current track
	Pad 2: Solo current track
	Pad 4 and 8: Change targeted track
	Pad 5: Undo
	Pad 6: Redo

If you want to change what the pads do while *PROGRAM* is active, edit the DonnerDMK25.remotemap file.

***Provided as is, no guarantees.***