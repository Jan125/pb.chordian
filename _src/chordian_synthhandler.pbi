#WAVE_FORMAT_IEEE_FLOAT = $0003

Global DirectSound.IDirectSound
Global DirectSoundNotify.IDirectSoundNotify
Global DirectSoundBuffer.IDirectSoundBuffer

Global Dim DirectSoundNotifyArray.DSBPOSITIONNOTIFY(3)
Global Dim DirectSoundEventArray.i(ArraySize(DirectSoundNotifyArray()))
Global InitDS_Loop.i

Global DSGainMult.f

OpenPreferences(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension)+".data\chordian.ini")
PreferenceGroup("Sound")
Global WaveFormatExDescriptor.WAVEFORMATEX
With WaveFormatExDescriptor
  \wFormatTag = #WAVE_FORMAT_IEEE_FLOAT
  \nChannels = 1
  \nSamplesPerSec = ReadPreferenceLong("SampleRate", 96000)
  \wBitsPerSample = 32
  \cbSize = 0
  
  \nBlockAlign = (\nChannels * \wBitsPerSample) / 8
  \nAvgBytesPerSec = \nSamplesPerSec * \nBlockAlign
EndWith

Global DirectSoundBufferDescription.DSBUFFERDESC
With DirectSoundBufferDescription
  \dwSize = SizeOf(DSBUFFERDESC)
  \dwFlags = #DSBCAPS_CTRLPOSITIONNOTIFY|#DSBCAPS_GLOBALFOCUS
  \dwBufferBytes = Int(ReadPreferenceLong("BufferSize", 768) * (WaveFormatExDescriptor\nSamplesPerSec / 44100.0)) * (ArraySize(DirectSoundNotifyArray()) + 1) * WaveFormatExDescriptor\nBlockAlign
  \dwReserved = 0
  \lpwfxFormat = @WaveFormatExDescriptor
EndWith

DSGainMult = ReadPreferenceFloat("GainMult", 0.5)

ClosePreferences()

For InitDS_Loop = 0 To ArraySize(DirectSoundNotifyArray())
  DirectSoundEventArray(InitDS_Loop) = CreateEvent_(#Null, #False, #False, #Null)
  DirectSoundNotifyArray(InitDS_Loop)\dwOffset = (DirectSoundBufferDescription\dwBufferBytes / (ArraySize(DirectSoundNotifyArray())+1)) * InitDS_Loop
  DirectSoundNotifyArray(InitDS_Loop)\hEventNotify = DirectSoundEventArray(InitDS_Loop)
Next

Procedure.i SynthHandler(*Void)
  With Chordian\Machine_State
    
    Protected a.i
    Protected i.i
    Protected u.i
    
    Protected MSCounter.f
    
    Protected CurrentChord.i = CurrentChord
    Protected CurrentNote.i = CurrentNote
    Protected CurrentKeyboard.i = \Value_Internal_Keyboard_Note
    Protected CurrentAlternate.i = \Value_Rhythm_Button_Alternate_OnOff_Current
    Protected CurrentPattern.i = \Value_Rhythm_Button_Pattern_Current
    Protected CurrentTick.i = Int(\Value_Internal_Tick)
    If CurrentTick >= 32
      CurrentTick = 0
    EndIf
    
    Protected RhythmVolume.f
    
    Protected Harp1Volume.f
    Protected Harp2Volume.f
    
    Protected Dim Sin3Lookup.f(359)
    
    For i = 0 To ArraySize(Sin3Lookup())
      Sin3Lookup(i) = Pow(Abs(Sin(Radian(i + 125.0))), 0.33) * Sign(Sin(Radian(i + 125.0)))
    Next
    
    Protected Sin3Phase.f
    
    Protected *AudioPointer1
    Protected AudioBytes1.i
    Protected *AudioPointer2
    Protected AudioBytes2.i
    
    Protected CurrentBlock.i = ArraySize(DirectSoundNotifyArray()) - 1
    Protected *Block
    Protected BlockSize.i = DirectSoundBufferDescription\dwBufferBytes / (ArraySize(DirectSoundNotifyArray()) + 1)
    
    Protected Result.f
    
    *Block = LocalAlloc_(#LMEM_ZEROINIT, BlockSize)
    
    
    
    Repeat
      WaitForMultipleObjects_(ArraySize(DirectSoundNotifyArray())+1, DirectSoundEventArray(), #False, -1)
      CurrentBlock + 1
      If CurrentBlock > ArraySize(DirectSoundNotifyArray())
        CurrentBlock = 0
      EndIf
      
      ;-Check for Interrupt
      If WaitForSingleObject_(Chordian\Semaphore_EndSynthHandler, 0) = #WAIT_OBJECT_0
        LocalFree_(*Block)
        ProcedureReturn
      EndIf
      
      If WaitForSingleObject_(Chordian\Machine_Event\Semaphore_StopAllSounds, 0) = #WAIT_OBJECT_0
        For i = #Snd_First To #Snd_Last
          If i <> #Snd_Beep Or Not Chordian\Machine_State\Value_Master_Button_Power_OnOff
            \Status_Volume(i) = 0.0
            \Status_Sound(i) = #Curve_None
          EndIf
        Next
        SendMIDIStop(MIDIHandle, 0)
        SendMIDIStop(MIDIHandle, 1)
        SendMIDIStop(MIDIHandle, 2)
        SendMIDIStop(MIDIHandle, 9)
      EndIf
      
      Select \Value_Master_Button_Power_OnOff
        Case 0
          For i = #Snd_First To #Snd_Last
            \Status_Volume(i) = 0.0
            \Status_Sound(i) = #Curve_None
          Next
      EndSelect
      
      ;-Write memory
      For a = 0 To BlockSize / WaveFormatExDescriptor\nBlockAlign
        
        If MIDIHandle
          If CurrentChord <> \Value_Internal_Chord_Chord Or CurrentNote <>  \Value_Internal_Chord_Note
            SendMIDIStop(MIDIHandle, 2)
            If CurrentChord = #Chord_None Or CurrentNote = #Note_None
              SendMIDIStop(MIDIHandle, 0)
              SendMIDIStop(MIDIHandle, 1)
              SendMIDIStop(MIDIHandle, 9)
            ElseIf CurrentChord = #Chord_Ignore Or CurrentNote = #Chord_Ignore
              SendMIDIStop(MIDIHandle, 0)
              SendMIDIStop(MIDIHandle, 1)
            EndIf
          EndIf
        EndIf
        
        CurrentChord = \Value_Internal_Chord_Chord
        CurrentNote = \Value_Internal_Chord_Note
        CurrentKeyboard = \Value_Internal_Keyboard_Note
        CurrentAlternate = \Value_Rhythm_Button_Alternate_OnOff_Current
        CurrentPattern = \Value_Rhythm_Button_Pattern_Current
        CurrentTick = Int(\Value_Internal_Tick)
        If CurrentTick >= 32
          CurrentTick = 0
        EndIf
        
        Result = 0.0
        
        Select CurrentNote
          Case #Note_G
            \Value_Internal_Phase + ((3.125 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_F
            \Value_Internal_Phase + ((6.333 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Fc
            \Value_Internal_Phase + ((2.843 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_E
            \Value_Internal_Phase + ((5.050 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Eb
            \Value_Internal_Phase + ((4.565 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_D
            \Value_Internal_Phase + ((4.275 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Db
            \Value_Internal_Phase + ((2.910 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_C
            \Value_Internal_Phase + ((3.761 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_B
            \Value_Internal_Phase + ((3.953 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Bb
            \Value_Internal_Phase + ((3.667 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_A
            \Value_Internal_Phase + ((3.419 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Ab
            \Value_Internal_Phase + ((3.162 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Default
            \Value_Internal_Phase + 0.0
        EndSelect
        
        
        While \Value_Internal_Phase > 360.0
          \Value_Internal_Phase - 360.0
        Wend
        Sin3Phase = Sin3Lookup(Int(\Value_Internal_Phase) % 360)
        
        
        MSCounter + (1000.0 / WaveFormatExDescriptor\nSamplesPerSec)
        While MSCounter >= 1.0
          MSCounter - 1.0
          ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallMachineHandler, 1, 0)
        Wend
        
        
        ;-Calc curves
        For i = #Snd_Bass_First To #Snd_Bass_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              \Status_Position(i) = 0.0
              Continue
            Case #Curve_Trigger
              If MIDIHandle
                SendMIDIStop(MIDIHandle, 0)
                If CurrentChord <> #Chord_None And CurrentNote <> #Note_None And CurrentChord <> #Chord_Ignore And CurrentNote <> #Chord_Ignore
                  Select CurrentPattern
                    Case #Rhythm_None
                      SendMIDIOn(MIDIHandle, 0, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1), Int(127.0 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume))
                    Default
                      If \Value_Rhythm_Button_AutoBassSync_OnOff
                        SendMIDIOn(MIDIHandle, 0, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_First+\Data_Patterns(CurrentAlternate, CurrentPattern, CurrentNote, CurrentTick, #Pattern_Frequency)), Int(127.0 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume))
                      Else
                        SendMIDIOn(MIDIHandle, 0, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1), Int(127.0 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume))
                      EndIf
                  EndSelect
                EndIf
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Sustain
              i - 1
              Continue
            Case #Curve_Oneshot
              If MIDIHandle
                SendMIDIStop(MIDIHandle, 0)
                If CurrentChord <> #Chord_None And CurrentNote <> #Note_None And CurrentChord <> #Chord_Ignore And CurrentNote <> #Chord_Ignore
                  Select CurrentPattern
                    Case #Rhythm_None
                      SendMIDIOn(MIDIHandle, 0, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1), Int(127.0 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume))
                    Default
                      If \Value_Rhythm_Button_AutoBassSync_OnOff
                        SendMIDIOn(MIDIHandle, 0, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_First+\Data_Patterns(CurrentAlternate, CurrentPattern, CurrentNote, CurrentTick, #Pattern_Frequency)), Int(127.0 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume))
                      Else
                        SendMIDIOn(MIDIHandle, 0, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1), Int(127.0 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume))
                      EndIf
                  EndSelect
                EndIf
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Decay
              i - 1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Sustain
              i - 1
              Continue
            Case #Curve_Decay
              If \Status_Volume(i) > 0.95
                \Status_Volume(i) - (1.0 / WaveFormatExDescriptor\nSamplesPerSec) / 1.222
                If \Status_Volume(i) < 0.95
                  \Status_Volume(i) = 0.95
                  \Status_Sound(i) = #Curve_Release
                  i - 1
                  Continue
                EndIf
              EndIf
            Case #Curve_Sustain
            Case #Curve_Release
              \Status_Volume(i) - ((1.0 / WaveFormatExDescriptor\nSamplesPerSec) / 0.333) * (0.5 + \Status_Volume(i))
              If \Status_Volume(i) < 0.0
                If MIDIHandle
                  SendMIDIStop(MIDIHandle, 0)
                EndIf
                \Status_Sound(i) = #Curve_None
                i - 1
                Continue
              EndIf
          EndSelect
          
          Result + (GetLinearInterpolatedSample(?Snd_Bass_Base, \Status_Position(i), 100, WaveFormatExDescriptor\nBlockAlign) + (GetLinearInterpolatedSample(?Snd_Bass_Mod, \Status_Position(i), 100, WaveFormatExDescriptor\nBlockAlign) * (1.0 - (\Status_Volume(i) * \Status_Volume(i))))) * \Status_Volume(i) * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume
          
          \Status_Position(i) + \Status_Frequency(i) * (44100.0 / WaveFormatExDescriptor\nSamplesPerSec)
          While \Status_Position(i) > 100.0
            \Status_Position(i) - 100.0
          Wend
        Next
        
        For i = #Snd_Chord_First To #Snd_Chord_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              \Status_Position(i) = 0.0
              Continue
            Case #Curve_Trigger
              If MIDIHandle
                If i = #Snd_Chord_First
                  SendMIDIStop(MIDIHandle, 1)
                EndIf
                If CurrentChord <> #Chord_None And CurrentNote <> #Note_None And CurrentChord <> #Chord_Ignore And CurrentNote <> #Chord_Ignore
                  SendMIDIOn(MIDIHandle, 1, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_First + i - #Snd_Chord_First), Int(127.0 * 0.8 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume))
                EndIf
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Decay
              i - 1
              Continue
            Case #Curve_Oneshot
              If MIDIHandle
                If i = #Snd_Chord_First
                  SendMIDIStop(MIDIHandle, 1)
                EndIf
                If CurrentChord <> #Chord_None And CurrentNote <> #Note_None And CurrentChord <> #Chord_Ignore And CurrentNote <> #Chord_Ignore
                  SendMIDIOn(MIDIHandle, 1, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_First+i-#Snd_Chord_First), Int(127.0 * 0.8 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume))
                EndIf
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Decay
              i - 1
              Continue
            Case #Curve_Decay
              If \Status_Volume(i) > 0.95
                \Status_Volume(i) - (1.0 / WaveFormatExDescriptor\nSamplesPerSec) / 0.333
                If \Status_Volume(i) < 0.95
                  \Status_Volume(i) = 0.95
                  \Status_Sound(i) = #Curve_Sustain
                  i - 1
                  Continue
                EndIf
              EndIf
            Case #Curve_Sustain
            Case #Curve_Release 
              \Status_Volume(i) - (1.0 / WaveFormatExDescriptor\nSamplesPerSec) / 0.18
              If \Status_Volume(i) < 0.0
                If MIDIHandle And i = #Snd_Chord_Last
                  SendMIDIStop(MIDIHandle, 1)
                EndIf
                \Status_Sound(i) = #Curve_None
                i - 1
                Continue
              EndIf
          EndSelect
          
          Result + GetLinearInterpolatedSample(?Snd_Chord, \Status_Position(i), 100, WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * 0.4 * \Value_Level_Knob_Volume_Chords * \Value_Master_Knob_Volume
          
          \Status_Position(i) + \Status_Frequency(i) * (44100.0 / WaveFormatExDescriptor\nSamplesPerSec)
          While \Status_Position(i) > 100.0
            \Status_Position(i) - 100.0
          Wend
        Next
        
        For i = #Snd_Harp_First To #Snd_Harp_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              \Status_Position(i) = 0.0
              Continue
            Case #Curve_Trigger
              If MIDIHandle
                If CurrentChord <> #Chord_None And CurrentNote <> #Note_None And CurrentChord <> #Chord_Ignore And CurrentNote <> #Chord_Ignore
                  SendMIDIOn(MIDIHandle, 2, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_First+i-#Snd_Harp_First), Int(127.0 * ((\Value_Level_Knob_Volume_Harp_1 + \Value_Level_Knob_Volume_Harp_2) / 2.0) * \Value_Master_Knob_Volume))
                EndIf
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Oneshot
              If MIDIHandle
                If CurrentChord <> #Chord_None And CurrentNote <> #Note_None And CurrentChord <> #Chord_Ignore And CurrentNote <> #Chord_Ignore
                  SendMIDIOn(MIDIHandle, 2, \Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_First+i-#Snd_Harp_First), Int(127.0 * ((\Value_Level_Knob_Volume_Harp_1 + \Value_Level_Knob_Volume_Harp_2) / 2.0) * \Value_Master_Knob_Volume))
                EndIf
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Decay
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Sustain
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Release
              \Status_Volume(i)-((1.0 / WaveFormatExDescriptor\nSamplesPerSec) / (0.366 + 2.734 * \Value_Level_Knob_Sustain)) * (0.20 + \Status_Volume(i) * 1.8)
              If \Status_Volume(i) < 0.0
                \Status_Sound(i) = #Curve_None
                i - 1
                Continue
              EndIf
          EndSelect
          
          Result + (GetLinearInterpolatedSample(?Snd_Harp_Base, \Status_Position(i), 100, WaveFormatExDescriptor\nBlockAlign) + (GetLinearInterpolatedSample(?Snd_Harp_Mod, \Status_Position(i), 100, WaveFormatExDescriptor\nBlockAlign) * LinearInterpolation(0.5 + (Sin3Phase / 2.0), 0.2, (i - #Snd_Harp_First) / 14.0)))* \Status_Volume(i) * \Value_Level_Knob_Volume_Harp_1 * \Value_Master_Knob_Volume * (1.0 - (\Value_Level_Knob_Volume_Harp_2 / 2.0)) * (1.0 - (i - #Snd_Harp_First) * 0.025) * Bool(CurrentNote <> #Note_None And CurrentChord <> #Chord_None And CurrentChord <> #Chord_Ignore And CurrentNote <> #Chord_Ignore)
          Result + GetLinearInterpolatedSample(?Snd_Harp, \Status_Position(i), 100, WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * \Value_Level_Knob_Volume_Harp_2 * \Value_Master_Knob_Volume * (1.0 - (\Value_Level_Knob_Volume_Harp_1 / 2.0)) * 0.75 * (1.0 - (i - #Snd_Harp_First) * 0.025) * Bool(CurrentNote <> #Note_None And CurrentChord <> #Chord_None And CurrentChord <> #Chord_Ignore And CurrentNote <> #Chord_Ignore)
          
          \Status_Position(i) + \Status_Frequency(i) * (44100.0 / WaveFormatExDescriptor\nSamplesPerSec)
          While \Status_Position(i) > 100.0
            \Status_Position(i) - 100
          Wend
        Next
        
        For i = #Snd_Drum_First To #Snd_Drum_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              Continue
            Case #Curve_Trigger
              If MIDIHandle
                Select i
                  Case #Snd_Drum_BD
                    SendMIDIOn(MIDIHandle, 9, 36, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 36)
                  Case #Snd_Drum_Click
                    SendMIDIOn(MIDIHandle, 9, 37, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 37)
                  Case #Snd_Drum_HiHat
                    SendMIDIOn(MIDIHandle, 9, 42, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 42)
                  Case #Snd_Drum_Ride
                    SendMIDIOn(MIDIHandle, 9, 46, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 46)
                  Case #Snd_Drum_Snare
                    SendMIDIOn(MIDIHandle, 9, 38, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 38)
                EndSelect
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              \Status_Position(i) = 0.0
              i - 1
              Continue
            Case #Curve_Oneshot
              If MIDIHandle
                Select i
                  Case #Snd_Drum_BD
                    SendMIDIOn(MIDIHandle, 9, 36, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 36)
                  Case #Snd_Drum_Click
                    SendMIDIOn(MIDIHandle, 9, 37, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 37)
                  Case #Snd_Drum_HiHat
                    SendMIDIOn(MIDIHandle, 9, 42, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 42)
                  Case #Snd_Drum_Ride
                    SendMIDIOn(MIDIHandle, 9, 46, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 36)
                  Case #Snd_Drum_Snare
                    SendMIDIOn(MIDIHandle, 9, 38, Int(127.0 * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume))
                    SendMIDIOff(MIDIHandle, 9, 38)
                EndSelect
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              \Status_Position(i) = 0.0
              i - 1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Decay
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Sustain
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Release
              Select i
                Case #Snd_Drum_BD
                  Result + PeekF(?Snd_Drum_BD+Int(\Status_Position(i))*WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume
                Case #Snd_Drum_Click
                  Result + PeekF(?Snd_Drum_Click+Int(\Status_Position(i))*WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume
                Case #Snd_Drum_HiHat
                  Result + PeekF(?Snd_Drum_HiHat+Int(\Status_Position(i))*WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume
                Case #Snd_Drum_Ride
                  Result + PeekF(?Snd_Drum_Ride+Int(\Status_Position(i))*WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume
                Case #Snd_Drum_Snare
                  Result + PeekF(?Snd_Drum_Snare+Int(\Status_Position(i))*WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * \Value_Rhythm_Knob_Volume * \Value_Master_Knob_Volume
              EndSelect
              
              \Status_Position(i) + \Status_Frequency(i) * (44100.0 / WaveFormatExDescriptor\nSamplesPerSec)
              
              Select i
                Case #Snd_Drum_BD
                  If Int(\Status_Position(i)) >= (?Snd_Drum_BD_End - ?Snd_Drum_BD) / WaveFormatExDescriptor\nBlockAlign
                    \Status_Sound(i) = #Curve_None
                    i - 1
                    Continue
                  EndIf
                Case #Snd_Drum_Click
                  If Int(\Status_Position(i)) >= (?Snd_Drum_Click_End - ?Snd_Drum_Click) / WaveFormatExDescriptor\nBlockAlign
                    \Status_Sound(i) = #Curve_None
                    i - 1
                    Continue
                  EndIf
                Case #Snd_Drum_HiHat
                  If Int(\Status_Position(i)) >= (?Snd_Drum_HiHat_End - ?Snd_Drum_HiHat) / WaveFormatExDescriptor\nBlockAlign
                    \Status_Sound(i) = #Curve_None
                    i - 1
                    Continue
                  EndIf
                Case #Snd_Drum_Ride
                  If Int(\Status_Position(i)) >= (?Snd_Drum_Ride_End - ?Snd_Drum_Ride) / WaveFormatExDescriptor\nBlockAlign
                    \Status_Sound(i) = #Curve_None
                    i - 1
                    Continue
                  EndIf
                Case #Snd_Drum_Snare
                  If Int(\Status_Position(i)) >= (?Snd_Drum_Snare_End - ?Snd_Drum_Snare) / WaveFormatExDescriptor\nBlockAlign
                    \Status_Sound(i) = #Curve_None
                    i - 1
                    Continue
                  EndIf
              EndSelect
              
          EndSelect
          
        Next
        
        For i = #Snd_Keyboard_First To #Snd_Keyboard_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              \Status_Position(i) = 0.0
              Continue
            Case #Curve_Trigger
              If MIDIHandle
                SendMIDIStop(MIDIHandle, 3)
                If CurrentKeyboard <> -1
                  SendMIDIOn(MIDIHandle, 3, CurrentKeyboard, Int(127.0 * \Value_Level_Knob_Volume_Keyboard * \Value_Master_Knob_Volume))
                EndIf
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Sustain
              i - 1
              Continue
            Case #Curve_Oneshot
              If MIDIHandle
                SendMIDIStop(MIDIHandle, 3)
                If CurrentKeyboard <> -1
                  SendMIDIOn(MIDIHandle, 3, CurrentKeyboard, Int(127.0 * \Value_Level_Knob_Volume_Keyboard * \Value_Master_Knob_Volume))
                EndIf
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Sustain
              i - 1
              Continue
            Case #Curve_Decay
              \Status_Sound(i) = #Curve_Sustain
              i - 1
              Continue
            Case #Curve_Sustain
            Case #Curve_Release
              If MIDIHandle
                SendMIDIStop(MIDIHandle, 3)
              EndIf
              \Status_Sound(i) = #Curve_None
              i - 1
              Continue
          EndSelect
          
          Result + GetLinearInterpolatedSample(?Snd_Keyboard, \Status_Position(i), 100, WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * \Value_Level_Knob_Volume_Keyboard * \Value_Master_Knob_Volume
          
          \Status_Position(i) + \Status_Frequency(i) * (44100.0 / WaveFormatExDescriptor\nSamplesPerSec)
          While \Status_Position(i) > 100.0
            \Status_Position(i) - 100.0
          Wend
        Next
        
        For i = #Snd_Beep_First To #Snd_Beep_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              \Status_Position(i) = 0.0
              Continue
            Case #Curve_Trigger
              If MIDIHandle
                SendMIDIOn(MIDIHandle, 9, 81, Int(127.0 * \Value_Master_Knob_Volume))
                SendMIDIOff(MIDIHandle, 9, 81)
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Decay
              i - 1
              Continue
            Case #Curve_Oneshot
              If MIDIHandle
                SendMIDIOn(MIDIHandle, 9, 80, Int(127.0 * \Value_Master_Knob_Volume))
                SendMIDIOff(MIDIHandle, 9, 80)
              EndIf
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Decay
              \Status_Volume(i) - (1.001 - \Status_Volume(i)) * ((1.0 / WaveFormatExDescriptor\nSamplesPerSec) / 0.10)
              If \Status_Volume(i) < 0.9
                \Status_Sound(i) = #Curve_Release
                i - 1
                Continue
              EndIf
            Case #Curve_Sustain
              \Status_Sound(i) = #Curve_Release
              i - 1
              Continue
            Case #Curve_Release
              \Status_Volume(i)-(1.001-\Status_Volume(i))*((1.0/WaveFormatExDescriptor\nSamplesPerSec)/0.01)
              If \Status_Volume(i) < 0.0
                \Status_Sound(i) = #Curve_None
                i - 1
                Continue
              EndIf
          EndSelect
          
          Result + GetLinearInterpolatedSample(?Snd_Beep, \Status_Position(i), 100, WaveFormatExDescriptor\nBlockAlign) * \Status_Volume(i) * \Value_Master_Knob_Volume
          
          \Status_Position(i) + \Status_Frequency(i) * (44100.0 / WaveFormatExDescriptor\nSamplesPerSec)
          While \Status_Position(i) > 100.0
            \Status_Position(i) - 100.0
          Wend
        Next
        
        PokeF(*Block + (a * WaveFormatExDescriptor\nBlockAlign), Result * DSGainMult)
        
      Next
      
      If DirectSoundBuffer\Lock(CurrentBlock * (DirectSoundBufferDescription\dwBufferBytes / (ArraySize(DirectSoundNotifyArray()) + 1)), DirectSoundBufferDescription\dwBufferBytes / (ArraySize(DirectSoundNotifyArray()) + 1), @*AudioPointer1, @AudioBytes1, @*AudioPointer2, @AudioBytes2, 0) = #DS_OK
        
        If *AudioPointer1
          CopyMemory(*Block, *AudioPointer1, AudioBytes1)
        EndIf
        
        If *AudioPointer2
          CopyMemory(*Block + AudioBytes1, *AudioPointer2, AudioBytes2)
        EndIf
        
        DirectSoundBuffer\Unlock(*AudioPointer1, AudioBytes1, *AudioPointer2, AudioBytes2)
      EndIf
      
    ForEver
    
  EndWith
  
EndProcedure
