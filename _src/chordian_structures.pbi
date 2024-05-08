;-Structures
;--Chordian GUI State
Structure Input_State
  ; These are used to check the mouse status.
  Mouse_Position_X_Current.i
  Mouse_Position_X_Previous.i
  
  Mouse_Position_Y_Current.i
  Mouse_Position_Y_Previous.i
  
  Mouse_Button_Left_Current.i
  Mouse_Button_Left_Previous.i
  
  Mouse_Button_Middle_Current.i
  Mouse_Button_Middle_Previous.i
  
  Mouse_Button_Right_Current.i
  Mouse_Button_Right_Previous.i
  
  Mouse_Wheel_Current.i
  Mouse_Wheel_Previous.i
  
  ; These are used to define different action regions.
  ;   Upper Section
  Trigger_Master_Button_Power_OnOff.i
  Trigger_Master_Knob_Volume.i
  
  ;   Middle-Upper Section
  Trigger_Level_Knob_Volume_Harp_1.i
  Trigger_Level_Knob_Volume_Harp_2.i
  Trigger_Level_Knob_Sustain.i
  Trigger_Level_Knob_Volume_Keyboard.i
  Trigger_Level_Knob_Volume_Chords.i
  
  ;   Middle-Lower Section
  Trigger_Rhythm_Button_Alternate_OnOff.i
  Trigger_Rhythm_Button_Pattern.i
  Trigger_Rhythm_Button_AutoBassSync_OnOff.i
  Trigger_Rhythm_Knob_Tempo.i
  Trigger_Rhythm_Knob_Volume.i
  
  ;   Lower Section
  Trigger_Memory_Button_Memory_OnOff.i
  Trigger_Memory_Button_Playback_Record_OnOff.i
  Trigger_Memory_Button_Repeat_Delete.i
  Trigger_Memory_Button_Playback_Enter.i
  
  ;   Chord Button Section
  Trigger_Chord_Button_Major.i
  Trigger_Chord_Button_Minor.i
  Trigger_Chord_Button_7th.i
  
  ;   Harp Section
  Trigger_Harp.i
  
  ;   Function Section
  Trigger_Chordiate.i
  
  LastKey.i
  LastKeyEventWasDown.i
  
  PrimaryStrumMode.i
  SecondaryStrumMode.i
  TertiaryStrumMode.i
  
  Array Keymap.i(262143)
  Array Keymap_Chord.i(#Chord_Last, #Note_Last)
  Array Keymap_Harp.i(#Harp_Last)
  Array Keymap_Function.i(#Btn_Last)
EndStructure


Structure Input_Event
EndStructure


Structure Machine_State_Save
  Value_Master_Button_Power_OnOff.l
  Value_Master_Knob_Volume.f
  
  Value_Level_Knob_Volume_Harp_1.f
  Value_Level_Knob_Volume_Harp_2.f
  Value_Level_Knob_Sustain.f
  Value_Level_Knob_Volume_Keyboard.f
  Value_Level_Knob_Volume_Chords.f
  
  Value_Rhythm_Button_Alternate_OnOff.l
  Value_Rhythm_Button_Pattern.l
  Value_Rhythm_Button_AutoBassSync_OnOff.l
  Value_Rhythm_Knob_Tempo.f
  Value_Rhythm_Knob_Volume.f
  
  Value_Memory_Button_Memory_OnOff.l
  Value_Memory_Button_Playback_Record_OnOff.l
  Value_Memory_Button_Repeat_Delete.l
  Value_Memory_Button_Playback_Enter.l
  
  Value_Circuit_Knob_Tuning.f
  
  Value_External_ChordiateMode.l
  
  Value_Internal_Transpose.l
  Value_Internal_Keyboard_Transpose.l
  
  Value_Internal_Memory_Position_Current.l
  Value_Internal_Memory_Position_Skip.l
  Array Internal_Memory_Chord_Note.b(255, 1)
  
  Array Data_Chords.b(#Chord_Last, 3)
  
  Array Data_Patterns.b(1, #Rhythm_Last, #Note_Last, 31, #Pattern_Last)
EndStructure

Structure Machine_State Extends Machine_State_Save
  Value_Rhythm_Button_Alternate_OnOff_Current.l
  Value_Rhythm_Button_Pattern_Current.l
  
  Value_Internal_Chord_Note.l
  Value_Internal_Chord_Chord.l
  Value_Internal_Tick.f
  Value_Internal_Phase.f
  
  Value_Internal_Keyboard_Note.l
  Value_Internal_Keyboard_ButtonUp.l
  Value_Internal_Keyboard_ButtonDown.l
  
  Value_Internal_TransposeMode.l
  
  Array Data_MIDI.l(#Note_Last, #Chord_Last, #Dat_Last)
  Array Status_PreviousSample.f(#Snd_Last)
  Array Status_PreviousSample2.f(#Snd_Last)
  Array Status_Sound.l(#Snd_Last)
  Array Status_Volume.f(#Snd_Last)
  Array Status_Position.f(#Snd_Last)
  Array Status_Frequency.f(#Snd_Last)
  Array Status_Harp.l(#Harp_Last)
EndStructure


Structure Machine_Event
  Semaphore_Master_Button_Power_OnOff.i
  Semaphore_Master_Knob_Volume.i
  
  Semaphore_Level_Knob_Volume_Harp_1.i
  Semaphore_Level_Knob_Volume_Harp_2.i
  Semaphore_Level_Knob_Sustain.i
  Semaphore_Level_Knob_Volume_Keyboard.i
  Semaphore_Level_Knob_Volume_Chords.i
  
  Semaphore_Rhythm_Button_Alternate.i
  Semaphore_Rhythm_Button_Pattern.i
  Semaphore_Rhythm_Button_AutoBassSync.i
  Semaphore_Rhythm_Knob_Tempo.i
  Semaphore_Rhythm_Knob_Volume.i
  
  Semaphore_Memory_Button_Memory_OnOff.i
  Semaphore_Memory_Button_Playback_Record.i
  Semaphore_Memory_Button_Repeat_Delete.i
  Semaphore_Memory_Button_Playback_Enter.i
  
  Semaphore_Chord_Button_Major.i
  Semaphore_Chord_Button_Minor.i
  Semaphore_Chord_Button_7th.i
  
  Semaphore_Harp.i
  
  Semaphore_StopAllSounds.i
  Semaphore_IsNewChord.i
  Semaphore_IsNewTick.i
  Semaphore_IsNewTuning.i
  Semaphore_CallMachineHandler.i
  Semaphore_CallFrequencyHandler.i
EndStructure


Structure Repaint_State
EndStructure


Structure Repaint_Event
  Semaphore_Repaint_Stop.i
  Semaphore_Repaint_Done.i
  Semaphore_Repaint_Resume.i
  
  Semaphore_Repaint_Commit.i
  Semaphore_Repaint_Base.i
  Semaphore_Repaint_Master.i
  Semaphore_Repaint_Level.i
  Semaphore_Repaint_Rhythm.i
  Semaphore_Repaint_Memory.i
  Semaphore_Repaint_Chord.i
EndStructure


Structure Chordian_State
  RepaintHandler_Thread.i
  MachineHandler_Thread.i
  PatternHandler_Thread.i
  FrequencyHandler_Thread.i
  SynthHandler_Thread.i
  
  Semaphore_EndRepaintHandler.i
  Semaphore_EndMachineHandler.i
  Semaphore_EndPatternHandler.i
  Semaphore_EndFrequencyHandler.i
  Semaphore_EndSynthHandler.i
  
  Input_State.Input_State
  Input_Event.Input_Event
  Repaint_State.Repaint_State
  Repaint_Event.Repaint_Event
  Machine_State.Machine_State
  Machine_Event.Machine_Event
EndStructure


;---Init Structure
Global Chordian.Chordian_State


With Chordian
  \Semaphore_EndRepaintHandler = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_EndMachineHandler = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_EndPatternHandler = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_EndFrequencyHandler = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_EndSynthHandler = CreateSemaphore_(0, 0, 1, 0)
EndWith


With Chordian\Input_State
  \PrimaryStrumMode = #Str_Single
  \SecondaryStrumMode = #Str_Chord
  \TertiaryStrumMode = #Str_Mirror
EndWith


With Chordian\Repaint_Event
  \Semaphore_Repaint_Stop = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Repaint_Done = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Repaint_Resume = CreateSemaphore_(0, 0, 1, 0)
  
  \Semaphore_Repaint_Commit = CreateSemaphore_(0, 0, 1, 0)
  
  \Semaphore_Repaint_Base = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Repaint_Master = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Repaint_Level = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Repaint_Rhythm = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Repaint_Memory = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Repaint_Chord = CreateSemaphore_(0, 0, 1, 0)
EndWith


With Chordian\Machine_Event
  \Semaphore_Master_Button_Power_OnOff = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Master_Knob_Volume = CreateSemaphore_(0, 0, 1, 0)
  
  \Semaphore_Level_Knob_Volume_Harp_1 = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Level_Knob_Volume_Harp_2 = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Level_Knob_Sustain = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Level_Knob_Volume_Keyboard = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Level_Knob_Volume_Chords = CreateSemaphore_(0, 0, 1, 0)
  
  \Semaphore_Rhythm_Button_Alternate = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Rhythm_Button_Pattern = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Rhythm_Button_AutoBassSync = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Rhythm_Knob_Tempo = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Rhythm_Knob_Volume = CreateSemaphore_(0, 0, 1, 0)
  
  \Semaphore_Memory_Button_Memory_OnOff = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Memory_Button_Playback_Record = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Memory_Button_Repeat_Delete = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Memory_Button_Playback_Enter = CreateSemaphore_(0, 0, 1, 0)
  
  \Semaphore_Chord_Button_Major = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Chord_Button_Minor = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_Chord_Button_7th = CreateSemaphore_(0, 0, 1, 0)
  
  \Semaphore_Harp = CreateSemaphore_(0, 0, 1, 0)
  
  \Semaphore_StopAllSounds = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_IsNewChord = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_IsNewTick = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_IsNewTuning = CreateSemaphore_(0, 0, 1, 0)
  \Semaphore_CallMachineHandler = CreateSemaphore_(0, 0, 99999, 0)
  \Semaphore_CallFrequencyHandler = CreateSemaphore_(0, 0, 99999, 0)
EndWith
