﻿Procedure PatternHandler(*Void)
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
      
      Select CurrentRhythm
        Case #Rhythm_None
          ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
          If CurrentChord <> #Chord_None And CurrentNote <> #Note_None
            \Status_Sound(#Snd_Bass) = #Curve_Trigger
            \Status_Sound(#Snd_Chord_1) = #Curve_Trigger
            \Status_Sound(#Snd_Chord_2) = #Curve_Trigger
            \Status_Sound(#Snd_Chord_3) = #Curve_Trigger
          EndIf
        Default
          If CurrentChord <> #Chord_None And CurrentNote <> #Note_None
            If \Value_Rhythm_Button_AutoBassSync_OnOff
              ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
              \Status_Sound(#Snd_Bass) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Bass)
              \Status_Sound(#Snd_Chord_1) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Chords)
              \Status_Sound(#Snd_Chord_2) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Chords)
              \Status_Sound(#Snd_Chord_3) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Chords)
            Else
              \Status_Sound(#Snd_Bass) = #Curve_Trigger
              \Status_Sound(#Snd_Chord_1) = #Curve_Trigger
              \Status_Sound(#Snd_Chord_2) = #Curve_Trigger
              \Status_Sound(#Snd_Chord_3) = #Curve_Trigger
            EndIf
            
            \Status_Sound(#Snd_Drum_BD) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Drum_BD)
            \Status_Sound(#Snd_Drum_Click) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Drum_Click)
            \Status_Sound(#Snd_Drum_HiHat) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Drum_HiHat)
            \Status_Sound(#Snd_Drum_Snare) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Drum_Snare)
            \Status_Sound(#Snd_Drum_Ride) = \Data_Patterns(CurrentAlternate, CurrentRhythm, CurrentNote, CurrentTick, #Pattern_Drum_Ride)
            
          EndIf
      EndSelect
      
      
      
    ForEver
  EndWith
  
EndProcedure
