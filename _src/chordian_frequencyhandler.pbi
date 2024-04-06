
Procedure FrequencyHandler(*Void)
  With Chordian\Machine_State
    
    Protected i.i
    
    Protected CurrentChord.i = \Value_Internal_Chord_Chord
    Protected CurrentNote.i = \Value_Internal_Chord_Note
    Protected CurrentAlternate.i = \Value_Rhythm_Button_Alternate_OnOff_Current
    Protected CurrentPattern.i = \Value_Rhythm_Button_Pattern_Current
    Protected CurrentTick.i
    
    Protected Dim Frequencies.f(127)
    For i = 0 To ArraySize(Frequencies())
      Frequencies(i) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (i-69)/12.0)
    Next
    
    Repeat
      WaitForSingleObject_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, -1)
      
      If WaitForSingleObject_(Chordian\Semaphore_EndFrequencyHandler, 0) = #WAIT_OBJECT_0
        ProcedureReturn
      EndIf
      
      If WaitForSingleObject_(Chordian\Machine_Event\Semaphore_IsNewTuning, 0) = #WAIT_OBJECT_0
        For i = 0 To ArraySize(Frequencies())
          Frequencies(i) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)*Pow(2.0, (i-69)/12.0)
        Next
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
            \Status_Frequency(#Snd_Bass) = Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1))
          Default
            
            CurrentTick = Int(\Value_Internal_Tick)
            
            If CurrentTick >= 32
              CurrentTick = 0
            EndIf
            
            Select \Value_Rhythm_Button_AutoBassSync_OnOff
              Case 1
                Select \Data_Patterns(CurrentAlternate, CurrentPattern, CurrentNote, CurrentTick, #Pattern_Frequency)
                  Case 0
                    \Status_Frequency(#Snd_Bass) = Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1))
                  Case 1
                    \Status_Frequency(#Snd_Bass) = Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_2))
                  Case 2
                    \Status_Frequency(#Snd_Bass) = Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_3))
                  Case 3
                    \Status_Frequency(#Snd_Bass) = Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_4))
                EndSelect
              Default
                \Status_Frequency(#Snd_Bass) = Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Bass_1))
            EndSelect
        EndSelect
        
        For i = #Snd_Chord_First-#Snd_Chord_First To #Snd_Chord_Last-#Snd_Chord_First
          \Status_Frequency(#Snd_Chord_First+i) = Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Chord_First+i))
        Next
        
        For i = #Snd_Harp_First-#Snd_Harp_First To #Snd_Harp_Last-#Snd_Harp_First
          \Status_Frequency(#Snd_Harp_First+i) = Frequencies(\Data_MIDI(CurrentNote, CurrentChord, #Dat_Harp_First+i))
        Next
        
      EndIf
      
      For i = #Snd_Drum_First To #Snd_Drum_Last
        \Status_Frequency(i) = ((1.5+\Value_Circuit_Knob_Tuning)/2.0)
      Next
      
      \Status_Frequency(#Snd_Keyboard) = Frequencies(\Value_Internal_Keyboard_Note)
      
    ForEver
  EndWith
  
EndProcedure