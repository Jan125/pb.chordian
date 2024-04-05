Procedure PatternHandler(*Void)
  Protected i.i
  
  Protected CurrentTick.i
  Protected CurrentAlternate.i
  Protected CurrentRhythm.i
  Protected CurrentChord.i
  Protected CurrentNote.i
  
  With Chordian\Machine_State
    Repeat
      WaitForSingleObject_(Chordian\Machine_Event\Semaphore_IsNewTick, -1)
      CurrentTick = Int(\Value_Internal_Tick)
      If CurrentTick >= 32
        CurrentTick = 0
      EndIf
      CurrentAlternate = \Value_Rhythm_Button_Alternate_OnOff_Current
      CurrentRhythm = \Value_Rhythm_Button_Pattern_Current
      CurrentChord = \Value_Internal_Chord_Chord
      CurrentNote = \Value_Internal_Chord_Note
      
      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
      
      Select CurrentRhythm
        Case #Rhythm_None
          ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
          If CurrentChord <> #Chord_None And CurrentNote <> #Note_None
            \Status_Sound(#Snd_Bass) = #Curve_Trigger
            For i = #Snd_Chord_First To #Snd_Chord_Last
              \Status_Sound(i) = #Curve_Trigger
            Next
          EndIf
        Default
          If CurrentChord <> #Chord_None And CurrentNote <> #Note_None
            If \Value_Rhythm_Button_AutoBassSync_OnOff
              ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
              If \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Bass) <> #Curve_Ignore
                \Status_Sound(#Snd_Bass) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Bass)
              EndIf
              For i = #Snd_Chord_First To #Snd_Chord_Last
                If \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Chords) <> #Curve_Ignore
                  \Status_Sound(i) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Chords)
                EndIf
              Next
            Else
              \Status_Sound(#Snd_Bass) = #Curve_Trigger
              For i = #Snd_Chord_First To #Snd_Chord_Last
                \Status_Sound(i) = #Curve_Trigger
              Next
            EndIf
            
            For i = 0 To #Snd_Drum_Last-#Snd_Drum_First
              If \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Drum_First+i) <> #Curve_Ignore
                \Status_Sound(#Snd_Drum_First+i) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Drum_First+i)
              EndIf
            Next
            
          EndIf
      EndSelect
      
      
      
    ForEver
  EndWith
  
EndProcedure
