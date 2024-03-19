Procedure VolumeHandler(*Void)
  With Chordian\Machine_State
    Static Dim Data_Frequency.i(127)
    
    Protected i.i
    
    Protected Time.q = ElapsedMilliseconds()
    Protected Delta.i
    
    Protected RhythmVolume.f
    
    Protected Harp1Volume.f
    Protected Harp2Volume.f
    
    Protected SinPhase.f
    Protected CosPhase.f
    Protected Sin2Phase.f
    Protected Cos2Phase.f
    Protected Sin3Phase.f
    Protected Cos3Phase.f
    
    Repeat
      Repeat
        Delta = ElapsedMilliseconds()-Time
        Delay(Bool(Not Delta))
      Until Delta
      Time = Time + Delta
      
      SinPhase = Sin(Radian(\Value_Internal_Phase))
      CosPhase = Cos(Radian(\Value_Internal_Phase))
      ;Sin2Phase = Sqr(Abs(SinPhase))*Sign(SinPhase)
      Cos2Phase = Sqr(Abs(CosPhase))*Sign(CosPhase)
      Sin3Phase = Sqr(Sqr(Abs(SinPhase)))*Sign(SinPhase)
      ;Cos3Phase = Sqr(Sqr(Abs(CosPhase)))*Sign(CosPhase)
      
      If WaitForSingleObject_(Chordian\Semaphore_EndVolumeHandler, 0) = #WAIT_OBJECT_0
        ProcedureReturn
      EndIf
      
      If WaitForSingleObject_(Chordian\Machine_Event\Semaphore_StopAllSounds, 0) = #WAIT_OBJECT_0
        For i = #Dat_First To #Dat_Last
          \Status_Volume(i) = 0.0
          \Status_Sound(i) = #Curve_None
        Next
      EndIf
      
      RhythmVolume = 100.0 * \Value_Master_Knob_Volume * \Value_Rhythm_Knob_Volume
      
      Harp1Volume = Bool(\Value_Internal_Chord_Chord <> #Chord_None And \Value_Internal_Chord_Note <> #Note_None) * 100.0 * \Value_Master_Knob_Volume * \Value_Level_Knob_Volume_Harp_1 * (1.0 - \Value_Level_Knob_Volume_Harp_2 * 0.6)
      Harp2Volume = Bool(\Value_Internal_Chord_Chord <> #Chord_None And \Value_Internal_Chord_Note <> #Note_None) * 100.0 * \Value_Master_Knob_Volume * (\Value_Level_Knob_Volume_Harp_1/1.5 + \Value_Level_Knob_Volume_Harp_2/(1.0+2.0*\Value_Level_Knob_Volume_Harp_1))
      
      Select \Value_Master_Button_Power_OnOff
        Case 0
          For i = #Dat_First To #Dat_Last
            \Status_Volume(i) = 0.0
            \Status_Sound(i) = #Curve_None
          Next
        Case 1
          For i = #Dat_Bass_First To #Dat_Bass_Last
            Select \Status_Sound(i)
              Case #Curve_None
                \Status_Volume(i) = 0.0
              Case #Curve_Trigger
                \Status_Volume(i) = 1.0
                \Status_Sound(i) = #Curve_Attack
                i-1
              Case #Curve_Oneshot
                \Status_Volume(i) = 1.0
                \Status_Sound(i) = #Curve_Release
                i-1
              Case #Curve_Attack
                \Status_Sound(i) = #Curve_Decay
                i-1
              Case #Curve_Decay
                \Status_Sound(i) = #Curve_Sustain
                i-1
              Case #Curve_Sustain
              Case #Curve_Release
                \Status_Volume(i)-1.0*(Delta/333.0)
                If \Status_Volume(i) < 0.0
                  \Status_Volume(i) = 0.0
                EndIf
            EndSelect
          Next
          
          For i = #Dat_Chord_First To #Dat_Chord_Last
            Select \Status_Sound(i)
              Case #Curve_None
                \Status_Volume(i) = 0.0
              Case #Curve_Trigger
                \Status_Volume(i) = 1.0
                \Status_Sound(i) = #Curve_Attack
                i-1
              Case #Curve_Oneshot
                \Status_Volume(i) = 1.0
                \Status_Sound(i) = #Curve_Release
                i-1
              Case #Curve_Attack
                \Status_Sound(i) = #Curve_Decay
                i-1
              Case #Curve_Decay
                If \Status_Volume(i) > 0.95
                  \Status_Volume(i)-1.0*(Delta/333.0)
                  If \Status_Volume(i) < 0.95
                    \Status_Volume(i) = 0.95
                    \Status_Sound(i) = #Curve_Sustain
                    i-1
                  EndIf
                EndIf
              Case #Curve_Sustain
              Case #Curve_Release
                \Status_Volume(i)-1.0*(Delta/180.0)
                If \Status_Volume(i) < 0.0
                  \Status_Volume(i) = 0.0
                  \Status_Sound(i) = #Curve_None
                EndIf
            EndSelect
          Next
          
          For i = #Dat_Harp_1 To #Dat_Harp_13
            Select \Status_Sound(i)
              Case #Curve_None
                \Status_Volume(i) = 0.0
              Case #Curve_Trigger
                \Status_Volume(i) = 1.0
                \Status_Sound(i) = #Curve_Attack
                i-1
              Case #Curve_Attack
                \Status_Sound(i) = #Curve_Decay
                i-1
              Case #Curve_Decay
                \Status_Sound(i) = #Curve_Sustain
                i-1
              Case #Curve_Sustain
                \Status_Sound(i) = #Curve_Release
                i-1
              Case #Curve_Release
                \Status_Volume(i)-1.0*(Delta/(366.0+2734.0*\Value_Level_Knob_Sustain))
                If \Status_Volume(i) < 0.0
                  \Status_Volume(i) = 0.0
                  \Status_Sound(i) = #Curve_None
                EndIf
            EndSelect
          Next
          
          Select \Status_Sound(#Dat_Keyboard)
            Case #Curve_None
              \Status_Volume(#Dat_Keyboard) = 0.0
            Case #Curve_Trigger
              \Status_Volume(#Dat_Keyboard) = 1.0
          EndSelect
          
          For i = #Dat_Drum_First To #Dat_Drum_Last
            Select \Status_Sound(i)
              Case #Curve_None
                \Status_Volume(i) = 0.0
              Case #Curve_Oneshot
                \Status_Sound(i) = #Curve_Trigger
                i-1
              Case #Curve_Trigger
                \Status_Volume(i) = 1.0
                \Status_Sound(i) = #Curve_Attack
                Select i
                  Case #Dat_Drum_BD
                    SoundVolumeFloat(#Snd_Drum_BD, RhythmVolume)
                    PlaySound(#Snd_Drum_BD)
                  Case #Dat_Drum_Click
                    SoundVolumeFloat(#Snd_Drum_Click, RhythmVolume)
                    PlaySound(#Snd_Drum_Click)
                  Case #Dat_Drum_HiHat
                    SoundVolumeFloat(#Snd_Drum_HiHat, RhythmVolume)
                    PlaySound(#Snd_Drum_HiHat)
                  Case #Dat_Drum_Snare
                    SoundVolumeFloat(#Snd_Drum_Snare, RhythmVolume)
                    PlaySound(#Snd_Drum_Snare)
                  Case #Dat_Drum_Ride
                    SoundVolumeFloat(#Snd_Drum_Ride, RhythmVolume)
                    PlaySound(#Snd_Drum_Ride)
                EndSelect
                i-1
              Case #Curve_Attack
                \Status_Sound(i) = #Curve_Decay
                i-1
              Case #Curve_Decay
                \Status_Sound(i) = #Curve_Sustain
                i-1
              Case #Curve_Sustain
                \Status_Sound(i) = #Curve_Release
                i-1
              Case #Curve_Release
                \Status_Volume(i)-1.0*(Delta/(366.0))
                If \Status_Volume(i) < 0.0
                  \Status_Volume(i) = 0.0
                  \Status_Sound(i) = #Curve_None
                EndIf
            EndSelect
          Next
          
      EndSelect
      
      SoundVolumeFloat(#Snd_Bass,             100.0 * \Value_Master_Knob_Volume * \Value_Level_Knob_Volume_Chords * \Status_Volume(#Dat_Bass_1))
      
      SoundVolumeFloat(#Snd_Chord_1,          100.0 * \Value_Master_Knob_Volume * \Value_Level_Knob_Volume_Chords * \Status_Volume(#Dat_Chord_1) * 0.86)
      SoundVolumeFloat(#Snd_Chord_2,          100.0 * \Value_Master_Knob_Volume * \Value_Level_Knob_Volume_Chords * \Status_Volume(#Dat_Chord_2) * 0.86)
      SoundVolumeFloat(#Snd_Chord_3,          100.0 * \Value_Master_Knob_Volume * \Value_Level_Knob_Volume_Chords * \Status_Volume(#Dat_Chord_3) * 0.86)
      
      SoundVolumeFloat(#Snd_Harp_1_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_1) * (0.74-0.26*Cos2Phase) * 1.00)
      SoundVolumeFloat(#Snd_Harp_1_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_1) * 1.00)
      SoundVolumeFloat(#Snd_Harp_2_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_2) * (0.75-0.25*Cos2Phase) * 0.98)
      SoundVolumeFloat(#Snd_Harp_2_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_2) * 0.98)
      SoundVolumeFloat(#Snd_Harp_3_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_3) * (0.76-0.24*Cos2Phase) * 0.96)
      SoundVolumeFloat(#Snd_Harp_3_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_3) * 0.96)
      SoundVolumeFloat(#Snd_Harp_4_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_4) * (0.77-0.23*Cos2Phase) * 0.94)
      SoundVolumeFloat(#Snd_Harp_4_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_4) * 0.94)
      SoundVolumeFloat(#Snd_Harp_5_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_5) * (0.78-0.22*Cos2Phase) * 0.92)
      SoundVolumeFloat(#Snd_Harp_5_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_5) * 0.92)
      SoundVolumeFloat(#Snd_Harp_6_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_6) * (0.79-0.21*Cos2Phase) * 0.90)
      SoundVolumeFloat(#Snd_Harp_6_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_6) * 0.90)
      SoundVolumeFloat(#Snd_Harp_7_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_7) * (0.80-0.20*Cos2Phase) * 0.88)
      SoundVolumeFloat(#Snd_Harp_7_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_7) * 0.88)
      SoundVolumeFloat(#Snd_Harp_8_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_8) * (0.81-0.19*Cos2Phase) * 0.86)
      SoundVolumeFloat(#Snd_Harp_8_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_8) * 0.86)
      SoundVolumeFloat(#Snd_Harp_9_Vibrato,   Harp1Volume * \Status_Volume(#Dat_Harp_9) * (0.82-0.18*Cos2Phase) * 0.84)
      SoundVolumeFloat(#Snd_Harp_9_Standard,  Harp2Volume * \Status_Volume(#Dat_Harp_9) * 0.84)
      SoundVolumeFloat(#Snd_Harp_10_Vibrato,  Harp1Volume * \Status_Volume(#Dat_Harp_10) * (0.83-0.17*Cos2Phase) * 0.82)
      SoundVolumeFloat(#Snd_Harp_10_Standard, Harp2Volume * \Status_Volume(#Dat_Harp_10) * 0.82)
      SoundVolumeFloat(#Snd_Harp_11_Vibrato,  Harp1Volume * \Status_Volume(#Dat_Harp_11) * (0.84-0.16*Cos2Phase) * 0.80)
      SoundVolumeFloat(#Snd_Harp_11_Standard, Harp2Volume * \Status_Volume(#Dat_Harp_11) * 0.80)
      SoundVolumeFloat(#Snd_Harp_12_Vibrato,  Harp1Volume * \Status_Volume(#Dat_Harp_12) * (0.85-0.15*Cos2Phase) * 0.78)
      SoundVolumeFloat(#Snd_Harp_12_Standard, Harp2Volume * \Status_Volume(#Dat_Harp_12) * 0.78)
      SoundVolumeFloat(#Snd_Harp_13_Vibrato,  Harp1Volume * \Status_Volume(#Dat_Harp_13) * (0.86-0.14*Cos2Phase) * 0.76)
      SoundVolumeFloat(#Snd_Harp_13_Standard, Harp2Volume * \Status_Volume(#Dat_Harp_13) * 0.76)
      
      SoundVolumeFloat(#Snd_Drum_BD,          RhythmVolume * \Status_Volume(#Dat_Drum_BD))
      SoundVolumeFloat(#Snd_Drum_Click,       RhythmVolume * \Status_Volume(#Dat_Drum_Click))
      SoundVolumeFloat(#Snd_Drum_HiHat,       RhythmVolume * \Status_Volume(#Dat_Drum_HiHat))
      SoundVolumeFloat(#Snd_Drum_Snare,       RhythmVolume * \Status_Volume(#Dat_Drum_Snare))
      SoundVolumeFloat(#Snd_Drum_Ride,        RhythmVolume * \Status_Volume(#Dat_Drum_Ride))
      
      SoundVolumeFloat(#Snd_Keyboard, 100.0 * \Value_Master_Knob_Volume * \Value_Level_Knob_Volume_Keyboard * \Status_Volume(#Dat_Keyboard))
      
    ForEver
    
  EndWith
  
EndProcedure
