Global MIDIHandle.i

Macro SendMIDIOn(Handle, Channel, Note, Volume)
  midiOutShortMsg_(Handle, ($90 + Channel) + ((Note) << 8) + (Volume << 16))
EndMacro

Macro SendMIDIOff(Handle, Channel, Note)
  midiOutShortMsg_(Handle, ($80 + Channel) + ((Note) << 8))
EndMacro

Macro SendMIDIStop(Handle, Channel)
  midiOutShortMsg_(Handle, ($B0 + Channel) + ($7B << 8))
EndMacro

Macro SendMIDIProgram(Handle, Channel, Program)
  midiOutShortMsg_(Handle, ($C0 + Channel) + (Program << 8))
EndMacro
