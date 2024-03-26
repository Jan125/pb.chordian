
Procedure FrequencyHandler(*Void)
  With Chordian\Machine_State
    
    Protected i.i
    
    Protected Time.q = ElapsedMilliseconds()
    Protected Delta.i
    
    Protected CurrentChord.i = \Value_Internal_Chord_Chord
    Protected CurrentNote.i = \Value_Internal_Chord_Note
    Protected CurrentAlternate.i = \Value_Rhythm_Button_Alternate_OnOff_Current
    Protected CurrentPattern.i = \Value_Rhythm_Button_Pattern_Current
    Protected CurrentTick.i
    
    Repeat
      Repeat
        Delta = ElapsedMilliseconds()-Time
        Delay(Bool(Not Delta))
      Until Delta
      Time = Time + Delta

      If WaitForSingleObject_(Chordian\Semaphore_EndFrequencyHandler, 0) = #WAIT_OBJECT_0
        ProcedureReturn
      EndIf
      
      
      If WaitForSingleObject_(Chordian\Machine_Event\Semaphore_IsNewChord, 0) = #WAIT_OBJECT_0
        CurrentChord = \Value_Internal_Chord_Chord
        CurrentNote = \Value_Internal_Chord_Note
      EndIf
      
      CurrentAlternate = \Value_Rhythm_Button_Alternate_OnOff_Current
      CurrentPattern = \Value_Rhythm_Button_Pattern_Current
      
      If CurrentChord <> #Chord_None And CurrentNote <> #Note_None
        Select CurrentPattern
          Case #Rhythm_None
            \Status_Frequency(#Snd_Bass) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1)-71)/12.0)
          Default
            
            CurrentTick = Int(\Value_Internal_Tick)
            
            If CurrentTick >= 32
              CurrentTick = 0
            EndIf
            
            Select \Value_Rhythm_Button_AutoBassSync_OnOff
              Case 1
                Select \Data_Patterns(CurrentAlternate, CurrentPattern, CurrentNote, CurrentTick, #Pattern_Frequency)
                  Case 0
                    \Status_Frequency(#Snd_Bass) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1)-71)/12.0)
                  Case 1
                    \Status_Frequency(#Snd_Bass) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_2)-71)/12.0)
                  Case 2
                    \Status_Frequency(#Snd_Bass) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_3)-71)/12.0)
                  Case 3
                    \Status_Frequency(#Snd_Bass) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_4)-71)/12.0)
                EndSelect
              Default
                \Status_Frequency(#Snd_Bass) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1)-71)/12.0)
            EndSelect
        EndSelect
      \Status_Frequency(#Snd_Chord_1) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_1)-71)/12.0)
      \Status_Frequency(#Snd_Chord_2) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_2)-71)/12.0)
      \Status_Frequency(#Snd_Chord_3) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_3)-71)/12.0)
      
      \Status_Frequency(#Snd_Harp_1) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_1)-71)/12.0)
      \Status_Frequency(#Snd_Harp_2) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_2)-71)/12.0)
      \Status_Frequency(#Snd_Harp_3) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_3)-71)/12.0)
      \Status_Frequency(#Snd_Harp_4) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_4)-71)/12.0)
      \Status_Frequency(#Snd_Harp_5) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_5)-71)/12.0)
      \Status_Frequency(#Snd_Harp_6) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_6)-71)/12.0)
      \Status_Frequency(#Snd_Harp_7) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_7)-71)/12.0)
      \Status_Frequency(#Snd_Harp_8) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_8)-71)/12.0)
      \Status_Frequency(#Snd_Harp_9) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_9)-71)/12.0)
      \Status_Frequency(#Snd_Harp_10) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_10)-71)/12.0)
      \Status_Frequency(#Snd_Harp_11) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_11)-71)/12.0)
      \Status_Frequency(#Snd_Harp_12) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_12)-71)/12.0)
      \Status_Frequency(#Snd_Harp_13) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_13)-71)/12.0)
      EndIf
;         SetSoundFrequency(#Snd_Chord_1, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_1)))
;         SetSoundFrequency(#Snd_Chord_2, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_2)))
;         SetSoundFrequency(#Snd_Chord_3, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_3)))
;         
;         If GetSoundFrequency(#Snd_Harp_1_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_1))
;           SetSoundFrequency(#Snd_Harp_1_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_1)))
;           SetSoundFrequency(#Snd_Harp_1_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_1)))
;           SetSoundPosition(#Snd_Harp_1_Standard, GetSoundPosition(#Snd_Harp_1_Vibrato)+7)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_2_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_2))
;           SetSoundFrequency(#Snd_Harp_2_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_2)))
;           SetSoundFrequency(#Snd_Harp_2_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_2)))
;           SetSoundPosition(#Snd_Harp_2_Standard, GetSoundPosition(#Snd_Harp_2_Vibrato)+8)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_3_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_3))
;           SetSoundFrequency(#Snd_Harp_3_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_3)))
;           SetSoundFrequency(#Snd_Harp_3_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_3)))
;           SetSoundPosition(#Snd_Harp_3_Standard, GetSoundPosition(#Snd_Harp_3_Vibrato)+9)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_4_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_4))
;           SetSoundFrequency(#Snd_Harp_4_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_4)))
;           SetSoundFrequency(#Snd_Harp_4_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_4)))
;           SetSoundPosition(#Snd_Harp_4_Standard, GetSoundPosition(#Snd_Harp_4_Vibrato)+10)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_5_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_5))
;           SetSoundFrequency(#Snd_Harp_5_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_5)))
;           SetSoundFrequency(#Snd_Harp_5_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_5)))
;           SetSoundPosition(#Snd_Harp_5_Standard, GetSoundPosition(#Snd_Harp_5_Vibrato)+11)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_6_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_6))
;           SetSoundFrequency(#Snd_Harp_6_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_6)))
;           SetSoundFrequency(#Snd_Harp_6_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_6)))
;           SetSoundPosition(#Snd_Harp_6_Standard, GetSoundPosition(#Snd_Harp_6_Vibrato)+12)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_7_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_7))
;           SetSoundFrequency(#Snd_Harp_7_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_7)))
;           SetSoundFrequency(#Snd_Harp_7_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_7)))
;           SetSoundPosition(#Snd_Harp_7_Standard, GetSoundPosition(#Snd_Harp_7_Vibrato)+13)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_8_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_8))
;           SetSoundFrequency(#Snd_Harp_8_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_8)))
;           SetSoundFrequency(#Snd_Harp_8_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_8)))
;           SetSoundPosition(#Snd_Harp_8_Standard, GetSoundPosition(#Snd_Harp_8_Vibrato)+14)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_9_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_9))
;           SetSoundFrequency(#Snd_Harp_9_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_9)))
;           SetSoundFrequency(#Snd_Harp_9_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_9)))
;           SetSoundPosition(#Snd_Harp_9_Standard, GetSoundPosition(#Snd_Harp_9_Vibrato)+15)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_10_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_10))
;           SetSoundFrequency(#Snd_Harp_10_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_10)))
;           SetSoundFrequency(#Snd_Harp_10_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_10)))
;           SetSoundPosition(#Snd_Harp_10_Standard, GetSoundPosition(#Snd_Harp_10_Vibrato)+16)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_11_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_11))
;           SetSoundFrequency(#Snd_Harp_11_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_11)))
;           SetSoundFrequency(#Snd_Harp_11_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_11)))
;           SetSoundPosition(#Snd_Harp_11_Standard, GetSoundPosition(#Snd_Harp_11_Vibrato)+17)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_12_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_12))
;           SetSoundFrequency(#Snd_Harp_12_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_12)))
;           SetSoundFrequency(#Snd_Harp_12_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_12)))
;           SetSoundPosition(#Snd_Harp_12_Standard, GetSoundPosition(#Snd_Harp_12_Vibrato)+18)
;         EndIf
;         If GetSoundFrequency(#Snd_Harp_13_Standard) <> Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_13))
;           SetSoundFrequency(#Snd_Harp_13_Vibrato, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_13)))
;           SetSoundFrequency(#Snd_Harp_13_Standard, Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_13)))
;           SetSoundPosition(#Snd_Harp_13_Standard, GetSoundPosition(#Snd_Harp_13_Vibrato)+19)
;         EndIf
;         
;       EndIf
;       SetSoundFrequency(#Snd_Harp_1_Vibrato,  GetSoundFrequency(#Snd_Harp_1_Standard)  * (1.00-0.0070*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_2_Vibrato,  GetSoundFrequency(#Snd_Harp_2_Standard)  * (1.00-0.0068*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_3_Vibrato,  GetSoundFrequency(#Snd_Harp_3_Standard)  * (1.00-0.0066*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_4_Vibrato,  GetSoundFrequency(#Snd_Harp_4_Standard)  * (1.00-0.0064*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_5_Vibrato,  GetSoundFrequency(#Snd_Harp_5_Standard)  * (1.00-0.0062*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_6_Vibrato,  GetSoundFrequency(#Snd_Harp_6_Standard)  * (1.00-0.0060*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_7_Vibrato,  GetSoundFrequency(#Snd_Harp_7_Standard)  * (1.00-0.0058*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_8_Vibrato,  GetSoundFrequency(#Snd_Harp_8_Standard)  * (1.00-0.0056*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_9_Vibrato,  GetSoundFrequency(#Snd_Harp_9_Standard)  * (1.00-0.0054*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_10_Vibrato, GetSoundFrequency(#Snd_Harp_10_Standard) * (1.00-0.0052*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_11_Vibrato, GetSoundFrequency(#Snd_Harp_11_Standard) * (1.00-0.0050*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_12_Vibrato, GetSoundFrequency(#Snd_Harp_12_Standard) * (1.00-0.0048*Sin3Phase))
;       SetSoundFrequency(#Snd_Harp_13_Vibrato, GetSoundFrequency(#Snd_Harp_13_Standard) * (1.00-0.0046*Sin3Phase))
;       
;       SetSoundFrequency(#Snd_Keyboard, Frequencies(\Value_Internal_Keyboard_Note))
;       
    ForEver
  EndWith
  
EndProcedure