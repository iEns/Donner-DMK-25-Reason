function remote_init()
	local items={
		{name="Keyboard", input="keyboard"},
		{name="Pads", input="keyboard"},
		{name="Channel Pressure", input="value", min=0, max=127},
		{name="Mod Wheel", input="value", min=0, max=127},
		{name="Pitch Bend", input="value", min=0, max=127},
		{name="Expression", input="value", min=0, max=127},
		{name="Damper Pedal", input="value", min=0, max=127},

		{name="Knob 1", input="value", min=0, max=127},
		{name="Knob 2", input="value", min=0, max=127},
		{name="Knob 3", input="value", min=0, max=127},
		{name="Knob 4", input="value", min=0, max=127},
		{name="Knob 5", input="value", min=0, max=127},
		{name="Knob 6", input="value", min=0, max=127},
		{name="Knob 7", input="value", min=0, max=127},
		{name="Knob 8", input="value", min=0, max=127},

		{name="Fader 1", input="value", min=0, max=127},
		{name="Fader 2", input="value", min=0, max=127},
		{name="Fader 3", input="value", min=0, max=127},
		{name="Fader 4", input="value", min=0, max=127},
		{name="Fader 5", input="value", min=0, max=127},
		{name="Fader 6", input="value", min=0, max=127},
		{name="Fader 7", input="value", min=0, max=127},
		{name="Fader 8", input="value", min=0, max=127},
		
		{name="PadPrg 1", input="button"},
		{name="PadPrg 2", input="button"},
		{name="PadPrg 3", input="button"},
		{name="PadPrg 4", input="button"},
		{name="PadPrg 5", input="button"},
		{name="PadPrg 6", input="button"},
		{name="PadPrg 7", input="button"},
		{name="PadPrg 8", input="button"},

		{name="PadPrg 9", input="button"},
		{name="PadPrg 10", input="button"},
		{name="PadPrg 11", input="button"},
		{name="PadPrg 12", input="button"},
		{name="PadPrg 13", input="button"},
		{name="PadPrg 14", input="button"},
		{name="PadPrg 15", input="button"},
		{name="PadPrg 16", input="button"},

		{name="Loop", input="button", output="value"},
		{name="Rewind", input="button", output="value"},
		{name="Fast Forward", input="button", output="value"},
		{name="Stop", input="button", output="value"},
		{name="Play", input="button", output="value"},
		{name="Record", input="button", output="value"},

			}
	remote.define_items(items)

	local inputs={

		{pattern="b0 0a xx", name="Knob 1", value="x"},
		{pattern="b0 5b xx", name="Knob 2", value="x"},
		{pattern="b0 5d xx", name="Knob 3", value="x"},
		{pattern="b0 49 xx", name="Knob 4", value="x"},
		{pattern="b0 4b xx", name="Knob 5", value="x"},
		{pattern="b0 48 xx", name="Knob 6", value="x"},
		{pattern="b0 4a xx", name="Knob 7", value="x"},
		{pattern="b0 47 xx", name="Knob 8", value="x"},

		{pattern="b0 07 xx", name="Fader 1", value="x"},
		{pattern="b1 07 xx", name="Fader 2", value="x"},
		{pattern="b2 07 xx", name="Fader 3", value="x"},
		{pattern="b3 07 xx", name="Fader 4", value="x"},
		{pattern="b4 07 xx", name="Fader 5", value="x"},
		{pattern="b5 07 xx", name="Fader 6", value="x"},
		{pattern="b6 07 xx", name="Fader 7", value="x"},
		{pattern="b7 07 xx", name="Fader 8", value="x"},

		{pattern="e? xx yy", name="Pitch Bend", value="y"},

		{pattern="b0 01 xx", name="Mod Wheel", value="x"},
		{pattern="b0 0b xx", name="Expression", value="x"},
		{pattern="b0 40 xx", name="Damper Pedal", value="x"},

		{pattern="d? xx", name="Channel Pressure", value="x"},


		{pattern="c0 04", name="PadPrg 1", value="1"},
		{pattern="c0 05", name="PadPrg 2", value="1"},
		{pattern="c0 06", name="PadPrg 3", value="1"},
		{pattern="c0 07", name="PadPrg 4", value="1"},
		{pattern="c0 00", name="PadPrg 5", value="1"},
		{pattern="c0 01", name="PadPrg 6", value="1"},
		{pattern="c0 02", name="PadPrg 7", value="1"},
		{pattern="c0 03", name="PadPrg 8", value="1"},
		{pattern="c0 0c", name="PadPrg 9", value="1"},
		{pattern="c0 0d", name="PadPrg 10", value="1"},
		{pattern="c0 0e", name="PadPrg 11", value="1"},
		{pattern="c0 0f", name="PadPrg 12", value="1"},
		{pattern="c0 08", name="PadPrg 13", value="1"},
		{pattern="c0 09", name="PadPrg 14", value="1"},
		{pattern="c0 0a", name="PadPrg 15", value="1"},
		{pattern="c0 0b", name="PadPrg 16", value="1"},

-- regular keyboard:
		{pattern="<100x>0 yy zz", name="Keyboard"},

-- Pad sends:
		{pattern="<100x>9 yy zz", name="Pads"},


		{pattern="b0 0f xx", name="Loop", value="x/127"},
		{pattern="b0 10 xx", name="Rewind", value="x/127"},
		{pattern="b0 11 xx", name="Fast Forward", value="x/127"},
		{pattern="b0 12 xx", name="Stop", value="x/127"},
		{pattern="b0 13 xx", name="Play", value="x/127"},
		{pattern="b0 14 xx", name="Record", value="x/127"},


	}
	remote.define_auto_inputs(inputs)
end


function remote_probe()

	local controlRequest="f0 7e 00 06 01 f7"
	-- DMK-25 does not seem to respond to SysEx request for ID
	local controlResponse="F0 7E 00 06 02 BE EF 00 CA FE 00 FE DE AB E0 00 F7"
	-- don't know what the response is supposed to be
return {
		request=controlRequest,
		response=controlResponse
	}
end

