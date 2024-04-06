Global MIDIHandle.i

Macro SendMIDINote(Handle, Channel, Note, Volume)
  midiOutShortMsg_(Handle, ($90+Channel)+((Note+12)<<8)+(Volume<<16))
EndMacro
Macro SendMIDIStop(Handle, Channel)
  midiOutShortMsg_(Handle, ($B0+Channel)+($7B<<8))
EndMacro
Macro SendMIDIProgram(Handle, Channel, Program)
  midiOutShortMsg_(Handle, ($C0+Channel)+(Program<<8))
EndMacro

Procedure.i MidiOutProcDummy(hmo.i, wMsg.i, dwInstance.i, dwParam1.i, dwParam2.i)
EndProcedure

