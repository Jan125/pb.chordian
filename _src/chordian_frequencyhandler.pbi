
Procedure FrequencyHandler(*Void)
  With Chordian\Machine_State
    
    Protected i.i
    
    Protected CurrentChord.i = \Value_Internal_Chord_Chord
    Protected CurrentNote.i = \Value_Internal_Chord_Note
    Protected CurrentAlternate.i = \Value_Rhythm_Button_Alternate_OnOff_Current
    Protected CurrentPattern.i = \Value_Rhythm_Button_Pattern_Current
    Protected CurrentTick.i
    
    Repeat
      WaitForSingleObject_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, -1)

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
    ForEver
  EndWith
  
EndProcedure