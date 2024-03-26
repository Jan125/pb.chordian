Global DirectSound.IDirectSound
Global DirectSoundNotify.IDirectSoundNotify
Global DirectSoundBuffer.IDirectSoundBuffer

Global Dim DirectSoundNotifyArray.DSBPOSITIONNOTIFY(3)
Global Dim DirectSoundEventArray.i(ArraySize(DirectSoundNotifyArray()))
Global InitDS_Loop.i

OpenPreferences(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension)+".ini")
PreferenceGroup("Sound")

Global WaveFormatExDescriptor.WAVEFORMATEX
With WaveFormatExDescriptor
  \wFormatTag = #WAVE_FORMAT_PCM
  \nChannels = 1
  \nSamplesPerSec = ReadPreferenceLong("SampleRate", 96000)
  \wBitsPerSample = 16
  \cbSize = 0
  
  \nBlockAlign = (\nChannels * \wBitsPerSample) / 8
  \nAvgBytesPerSec = \nSamplesPerSec * \nBlockAlign
EndWith

Global DirectSoundBufferDescription.DSBUFFERDESC
With DirectSoundBufferDescription
  \dwSize = SizeOf(DSBUFFERDESC)
  \dwFlags = #DSBCAPS_CTRLPOSITIONNOTIFY|#DSBCAPS_GLOBALFOCUS
  \dwBufferBytes = Int(768 * (WaveFormatExDescriptor\nSamplesPerSec/44100.0)) * (ArraySize(DirectSoundNotifyArray())+1) * WaveFormatExDescriptor\nBlockAlign
  \dwReserved = 0
  \lpwfxFormat = @WaveFormatExDescriptor
EndWith

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
    
    Protected MSCounter.i
    
    Protected RhythmVolume.f
    
    Protected Harp1Volume.f
    Protected Harp2Volume.f
    
    Protected Phase.f
    Protected Sin3Phase.f
    
    Protected *AudioPointer1
    Protected AudioBytes1.i
    Protected *AudioPointer2
    Protected AudioBytes2.i
    
    Protected CurrentBlock.i = ArraySize(DirectSoundNotifyArray())-1
    Protected *Block
    
    Protected Result.f
    
    *Block = AllocateMemory(DirectSoundBufferDescription\dwBufferBytes / (ArraySize(DirectSoundNotifyArray())+1))
    
    Repeat
      WaitForMultipleObjects_(ArraySize(DirectSoundNotifyArray())+1, DirectSoundEventArray(), #False, -1)
      CurrentBlock+1
      If CurrentBlock > ArraySize(DirectSoundNotifyArray())
        CurrentBlock = 0
      EndIf
      
      
      
      ;-Check for Interrupt
      If WaitForSingleObject_(Chordian\Semaphore_EndSynthHandler, 0) = #WAIT_OBJECT_0
        ProcedureReturn
      EndIf
      
      If WaitForSingleObject_(Chordian\Machine_Event\Semaphore_StopAllSounds, 0) = #WAIT_OBJECT_0
        For i = #Snd_First To #Snd_Last
          \Status_Volume(i) = 0.0
          \Status_Sound(i) = #Curve_None
        Next
      EndIf
      Select \Value_Master_Button_Power_OnOff
        Case 0
          For i = #Snd_First To #Snd_Last
            \Status_Volume(i) = 0.0
            \Status_Sound(i) = #Curve_None
          Next
      EndSelect
      
      ;-Write memory
      For a = 0 To MemorySize(*Block) / WaveFormatExDescriptor\nBlockAlign
        Result = 0
        Select \Value_Internal_Chord_Note
          Case #Note_G
            Phase + ((3.125 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_F
            Phase + ((6.333 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Fc
            Phase + ((2.843 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_E
            Phase + ((5.050 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Eb
            Phase + ((4.565 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_D
            Phase + ((4.275 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Db
            Phase + ((2.910 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_C
            Phase + ((3.761 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_B
            Phase + ((3.953 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Bb
            Phase + ((3.667 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_A
            Phase + ((3.419 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Case #Note_Ab
            Phase + ((3.162 * 360.0) / WaveFormatExDescriptor\nSamplesPerSec)
          Default
            Phase + 0.0
        EndSelect
        
        MSCounter + 1
        While MSCounter >= (WaveFormatExDescriptor\nSamplesPerSec/1000)
          MSCounter - (WaveFormatExDescriptor\nSamplesPerSec/1000)
          ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallMachineHandler, 1, 0)
          ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
        Wend
        
        Sin3Phase = Pow(Abs(Sin(Radian(Phase+125))), 0.33)*Sign(Sin(Radian(Phase+125)))
        
        ;-Calc curves
        
        For i = #Snd_Bass To #Snd_Bass
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              \Status_Position(i) = 0.0
              Continue
            Case #Curve_Trigger
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Sustain
              i-1
              Continue
            Case #Curve_Oneshot
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Decay
              i-1
              Continue
            Case #Curve_Decay
              \Status_Sound(i) = #Curve_Sustain
              i-1
              Continue
            Case #Curve_Sustain
            Case #Curve_Release
              \Status_Volume(i)-(1.0/WaveFormatExDescriptor\nSamplesPerSec)/0.333
              If \Status_Volume(i) < 0.0
                \Status_Sound(i) = #Curve_None
                i-1
                Continue
              EndIf
          EndSelect
          Result + LinearInterpolation(PeekW(?Snd_Bass+(Int(\Status_Position(i))%100)*2), PeekW(?Snd_Bass+((Int(\Status_Position(i))+1)%100)*2), \Status_Position(i)-Int(\Status_Position(i)))*\Status_Volume(i)*\Value_Level_Knob_Volume_Chords*\Value_Master_Knob_Volume
          
          \Status_Position(i) + \Status_Frequency(i)*(99773.2426/WaveFormatExDescriptor\nSamplesPerSec)
          If \Status_Position(i) > 100.0
            \Status_Position(i) - 100
          EndIf
        Next
        
        For i = #Snd_Chord_First To #Snd_Chord_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              \Status_Position(i) = 0.0
              Continue
            Case #Curve_Trigger
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Decay
              i-1
              Continue
            Case #Curve_Oneshot
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Decay
              i-1
              Continue
            Case #Curve_Decay
              If \Status_Volume(i) > 0.95
                \Status_Volume(i)-(1.0/WaveFormatExDescriptor\nSamplesPerSec)/0.333
                If \Status_Volume(i) < 0.95
                  \Status_Volume(i) = 0.95
                  \Status_Sound(i) = #Curve_Sustain
                  i-1
                  Continue
                EndIf
              EndIf
            Case #Curve_Sustain
            Case #Curve_Release 
              \Status_Volume(i)-(1.0/WaveFormatExDescriptor\nSamplesPerSec)/0.18
              If \Status_Volume(i) < 0.0
                \Status_Sound(i) = #Curve_None
                i-1
                Continue
              EndIf
          EndSelect
          Result + LinearInterpolation(PeekW(?Snd_Chord+(Int(\Status_Position(i))%100)*2), PeekW(?Snd_Chord+((Int(\Status_Position(i))+1)%100)*2), \Status_Position(i)-Int(\Status_Position(i)))*\Status_Volume(i)*0.40*\Value_Level_Knob_Volume_Chords*\Value_Master_Knob_Volume
          
          \Status_Position(i) + \Status_Frequency(i)*(99773.2426/WaveFormatExDescriptor\nSamplesPerSec)
          If \Status_Position(i) > 100.0
            \Status_Position(i) - 100
          EndIf
        Next
        
        For i = #Snd_Harp_First To #Snd_Harp_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              \Status_Position(i) = 0.0
              Continue
            Case #Curve_Trigger
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Oneshot
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Decay
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Sustain
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Release
              \Status_Volume(i)-(1.0/WaveFormatExDescriptor\nSamplesPerSec)/(0.366+2.734*\Value_Level_Knob_Sustain)
              If \Status_Volume(i) < 0.0
                \Status_Sound(i) = #Curve_None
                i-1
                Continue
              EndIf
          EndSelect
          Result + (LinearInterpolation(PeekW(?Snd_Harp_Base+(Int(\Status_Position(i))%100)*2), PeekW(?Snd_Harp_Base+((Int(\Status_Position(i))+1)%100)*2), \Status_Position(i)-Int(\Status_Position(i))) + LinearInterpolation(PeekW(?Snd_Harp_Mod+(Int(\Status_Position(i))%100)*2), PeekW(?Snd_Harp_Mod+((Int(\Status_Position(i))+1)%100)*2), \Status_Position(i)-Int(\Status_Position(i)))*LinearInterpolation(0.5+(Sin3Phase/2.0), 0.2, (i-#Snd_Harp_First)/14.0))*\Status_Volume(i)*\Value_Level_Knob_Volume_Harp_1*\Value_Master_Knob_Volume*(1.0-\Value_Level_Knob_Volume_Harp_2/2.0)*(1.0-(i-#Snd_Harp_First)*0.025)
          Result + LinearInterpolation(PeekW(?Snd_Harp_Base+(Int(\Status_Position(i))%100)*2), PeekW(?Snd_Harp_Base+((Int(\Status_Position(i))+1)%100)*2), \Status_Position(i)-Int(\Status_Position(i)))*\Status_Volume(i)*\Value_Level_Knob_Volume_Harp_2*\Value_Master_Knob_Volume*(1.0-\Value_Level_Knob_Volume_Harp_1/2.0)*0.75*(1.0-(i-#Snd_Harp_First)*0.03)

          \Status_Position(i) + \Status_Frequency(i)*(99773.2426/WaveFormatExDescriptor\nSamplesPerSec)
          If \Status_Position(i) > 100.0
            \Status_Position(i) - 100
          EndIf
        Next
        
        For i = #Snd_Drum_First To #Snd_Drum_Last
          Select \Status_Sound(i)
            Case #Curve_None
              \Status_Volume(i) = 0.0
              Continue
            Case #Curve_Trigger
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              \Status_Position(i) = 0.0
              i-1
              Continue
            Case #Curve_Oneshot
              \Status_Volume(i) = 1.0
              \Status_Sound(i) = #Curve_Release
              \Status_Position(i) = 0.0
              i-1
              Continue
            Case #Curve_Attack
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Decay
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Sustain
              \Status_Sound(i) = #Curve_Release
              i-1
              Continue
            Case #Curve_Release
              Select i
                Case #Snd_Drum_BD
                  Result + PeekW(?Snd_Drum_BD+Int(\Status_Position(i))*2) * \Status_Volume(i)*\Value_Rhythm_Knob_Volume*\Value_Master_Knob_Volume
                Case #Snd_Drum_Click
                  Result + PeekW(?Snd_Drum_Click+Int(\Status_Position(i))*2) * \Status_Volume(i)*\Value_Rhythm_Knob_Volume*\Value_Master_Knob_Volume
                Case #Snd_Drum_HiHat
                  Result + PeekW(?Snd_Drum_HiHat+Int(\Status_Position(i))*2) * \Status_Volume(i)*\Value_Rhythm_Knob_Volume*\Value_Master_Knob_Volume
                Case #Snd_Drum_Ride
                  Result + PeekW(?Snd_Drum_Ride+Int(\Status_Position(i))*2) * \Status_Volume(i)*\Value_Rhythm_Knob_Volume*\Value_Master_Knob_Volume
                Case #Snd_Drum_Snare
                  Result + PeekW(?Snd_Drum_Snare+Int(\Status_Position(i))*2) * \Status_Volume(i)*\Value_Rhythm_Knob_Volume*\Value_Master_Knob_Volume
              EndSelect
              
              \Status_Position(i) + 44100.0/WaveFormatExDescriptor\nSamplesPerSec
              
              Select i
                Case #Snd_Drum_BD
                  If Int(\Status_Position(i)) >= (?Snd_Drum_BD_End-?Snd_Drum_BD)/2
                    \Status_Sound(i) = #Curve_None
                    i-1
                    Continue
                  EndIf
                Case #Snd_Drum_Click
                  If Int(\Status_Position(i)) >= (?Snd_Drum_Click_End-?Snd_Drum_Click)/2
                    \Status_Sound(i) = #Curve_None
                    i-1
                    Continue
                  EndIf
                Case #Snd_Drum_HiHat
                  If Int(\Status_Position(i)) >= (?Snd_Drum_HiHat_End-?Snd_Drum_HiHat)/2
                    \Status_Sound(i) = #Curve_None
                    i-1
                    Continue
                  EndIf
                Case #Snd_Drum_Ride
                  If Int(\Status_Position(i)) >= (?Snd_Drum_Ride_End-?Snd_Drum_Ride)/2
                    \Status_Sound(i) = #Curve_None
                    i-1
                    Continue
                  EndIf
                Case #Snd_Drum_Snare
                  If Int(\Status_Position(i)) >= (?Snd_Drum_Snare_End-?Snd_Drum_Snare)/2
                    \Status_Sound(i) = #Curve_None
                    i-1
                    Continue
                  EndIf
              EndSelect
              
              
          EndSelect
          
        Next
        
        
        PokeW(*Block + (a * WaveFormatExDescriptor\nBlockAlign), Result*0.25)
      Next
      
      While Phase > 360.0
        Phase-360.0
      Wend
      
      If DirectSoundBuffer\Lock(CurrentBlock*(DirectSoundBufferDescription\dwBufferBytes / (ArraySize(DirectSoundNotifyArray())+1)), DirectSoundBufferDescription\dwBufferBytes / (ArraySize(DirectSoundNotifyArray())+1), @*AudioPointer1, @AudioBytes1, @*AudioPointer2, @AudioBytes2, 0) = #DS_OK
        
        If *AudioPointer1
          CopyMemory(*Block, *AudioPointer1, AudioBytes1)
        EndIf
        
        If *AudioPointer2
          CopyMemory(*Block+AudioBytes1, *AudioPointer2, AudioBytes2)
        EndIf
        
        DirectSoundBuffer\Unlock(*AudioPointer1, AudioBytes1, *AudioPointer2, AudioBytes2)
      EndIf
      
    ForEver
    
  EndWith
  
EndProcedure
