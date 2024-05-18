EnableExplicit

OpenPreferences(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ".data\chordian.ini")

;-DSound
XIncludeFile "dsound.pbi"

;-MIDI
XIncludeFile "midi.pbi"

;-Data Sections
XIncludeFile "chordian_datasections.pbi"

;-Enumerations
XIncludeFile "chordian_enumerations.pbi"

;-Structures
XIncludeFile "chordian_structures.pbi"

XIncludeFile "chordian_helpers.pbi"

XIncludeFile "chordian_repainthandler.pbi"

XIncludeFile "chordian_synthhandler.pbi"

XIncludeFile "chordian_patternhandler.pbi"

XIncludeFile "chordian_frequencyhandler.pbi"

XIncludeFile "chordian_machinehandler.pbi"

;-Procedures
Procedure.i ResetInput()
  Protected i.i
  
  With Chordian\Input_State
    
    \Mouse_Position_X_Current = 0
    \Mouse_Position_X_Previous = 0
    
    \Mouse_Position_Y_Current = 0
    \Mouse_Position_Y_Previous = 0
    
    \Mouse_Button_Left_Current = 0
    \Mouse_Button_Left_Previous = 0
    
    \Mouse_Button_Middle_Previous = 0
    \Mouse_Button_Middle_Current = 0
    
    \Mouse_Button_Right_Current = 0
    \Mouse_Button_Right_Previous = 0
    
    \Mouse_Wheel_Current= 0
    \Mouse_Wheel_Previous = 0
    
    \Trigger_Master_Button_Power_OnOff = 0
    \Trigger_Master_Knob_Volume = 0
    
    \Trigger_Level_Knob_Volume_Harp_1 = 0
    \Trigger_Level_Knob_Volume_Harp_2 = 0
    \Trigger_Level_Knob_Sustain = 0
    \Trigger_Level_Knob_Volume_Keyboard = 0
    \Trigger_Level_Knob_Volume_Chords = 0
    
    \Trigger_Rhythm_Button_Alternate_OnOff = 0
    \Trigger_Rhythm_Button_Pattern = 0
    \Trigger_Rhythm_Button_AutoBassSync_OnOff = 0
    \Trigger_Rhythm_Knob_Tempo = 0
    \Trigger_Rhythm_Knob_Volume = 0
    
    \Trigger_Memory_Button_Memory_OnOff = 0
    \Trigger_Memory_Button_Playback_Record_OnOff = 0
    \Trigger_Memory_Button_Repeat_Delete = 0
    \Trigger_Memory_Button_Playback_Enter = 0
    
    \Trigger_Chord_Button_Major = 0
    \Trigger_Chord_Button_Minor = 0
    \Trigger_Chord_Button_7th = 0
    
    \Trigger_Harp = 0
    
    For i = 0 To ArraySize(\Keymap())
      \Keymap(i) = 0
    Next
    
    i = ReadPreferenceInteger("KeyDbMaj", -1)
    If i = -1
      i = #VK_1
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_Db) = i
    i = ReadPreferenceInteger("KeyDbMin", -1)
    If i = -1
      i = #VK_Q
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_Db) = i
    i = ReadPreferenceInteger("KeyDb7th", -1)
    If i = -1
      i = #VK_A
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_Db) = i
    
    i = ReadPreferenceInteger("KeyAbMaj", -1)
    If i = -1
      i = #VK_2
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_Ab) = i
    i = ReadPreferenceInteger("KeyAbMin", -1)
    If i = -1
      i = #VK_W
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_Ab) = i
    i = ReadPreferenceInteger("KeyAb7th", -1)
    If i = -1
      i = #VK_S
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_Ab) = i
    
    i = ReadPreferenceInteger("KeyEbMaj", -1)
    If i = -1
      i = #VK_3
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_Eb) = i
    i = ReadPreferenceInteger("KeyEbMin", -1)
    If i = -1
      i = #VK_E
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_Eb) = i
    i = ReadPreferenceInteger("KeyEb7th", -1)
    If i = -1
      i = #VK_D
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_Eb) = i
    
    i = ReadPreferenceInteger("KeyBbMaj", -1)
    If i = -1
      i = #VK_4
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_Bb) = i
    i = ReadPreferenceInteger("KeyBbMin", -1)
    If i = -1
      i = #VK_R
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_Bb) = i
    i = ReadPreferenceInteger("KeyBb7th", -1)
    If i = -1
      i = #VK_F
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_Bb) = i
    
    i = ReadPreferenceInteger("KeyFMaj", -1)
    If i = -1
      i = #VK_5
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_F) = i
    i = ReadPreferenceInteger("KeyFMin", -1)
    If i = -1
      i = #VK_T
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_F) = i
    i = ReadPreferenceInteger("KeyF7th", -1)
    If i = -1
      i = #VK_G
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_F) = i
    
    i = ReadPreferenceInteger("KeyCMaj", -1)
    If i = -1
      i = #VK_6
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_C) = i
    i = ReadPreferenceInteger("KeyCMin", -1)
    If i = -1
      i = #VK_Z
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_C) = i
    i = ReadPreferenceInteger("KeyC7th", -1)
    If i = -1
      i = #VK_H
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_C) = i
    
    i = ReadPreferenceInteger("KeyGMaj", -1)
    If i = -1
      i = #VK_7
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_G) = i
    i = ReadPreferenceInteger("KeyGMin", -1)
    If i = -1
      i = #VK_U
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_G) = i
    i = ReadPreferenceInteger("KeyG7th", -1)
    If i = -1
      i = #VK_J
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_G) = i
    
    i = ReadPreferenceInteger("KeyDMaj", -1)
    If i = -1
      i = #VK_8
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_D) = i
    i = ReadPreferenceInteger("KeyDMin", -1)
    If i = -1
      i = #VK_I
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_D) = i
    i = ReadPreferenceInteger("KeyD7th", -1)
    If i = -1
      i = #VK_K
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_D) = i
    
    i = ReadPreferenceInteger("KeyAMaj", -1)
    If i = -1
      i = #VK_9
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_A) = i
    i = ReadPreferenceInteger("KeyAMin", -1)
    If i = -1
      i = #VK_O
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_A) = i
    i = ReadPreferenceInteger("KeyA7th", -1)
    If i = -1
      i = #VK_L
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_A) = i
    
    i = ReadPreferenceInteger("KeyEMaj", -1)
    If i = -1
      i = #VK_0
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_E) = i
    i = ReadPreferenceInteger("KeyEMin", -1)
    If i = -1
      i = #VK_P
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_E) = i
    i = ReadPreferenceInteger("KeyE7th", -1)
    If i = -1
      i = 192
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_E) = i
    
    i = ReadPreferenceInteger("KeyBMaj", -1)
    If i = -1
      i = 219
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_B) = i
    i = ReadPreferenceInteger("KeyBMin", -1)
    If i = -1
      i = 186
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_B) = i
    i = ReadPreferenceInteger("KeyB7th", -1)
    If i = -1
      i = 222
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_B) = i
    
    i = ReadPreferenceInteger("KeyF#Maj", -1)
    If i = -1
      i = 221
    EndIf
    \Keymap_Chord(#Chord_Maj, #Note_Fc) = i
    i = ReadPreferenceInteger("KeyF#Min", -1)
    If i = -1
      i = 187
    EndIf
    \Keymap_Chord(#Chord_Min, #Note_Fc) = i
    i = ReadPreferenceInteger("KeyF#7th", -1)
    If i = -1
      i = 191
    EndIf
    \Keymap_Chord(#Chord_7th, #Note_Fc) = i
    
    i = ReadPreferenceInteger("KeyHarp1", -1)
    If i = -1
      i = #VK_NUMPAD1
    EndIf
    \Keymap_Harp(#Harp_1) = i
    i = ReadPreferenceInteger("KeyHarp2", -1)
    If i = -1
      i = #VK_NUMPAD2
    EndIf
    \Keymap_Harp(#Harp_2) = i
    i = ReadPreferenceInteger("KeyHarp3", -1)
    If i = -1
      i = #VK_NUMPAD3
    EndIf
    \Keymap_Harp(#Harp_3) = i
    i = ReadPreferenceInteger("KeyHarp4", -1)
    If i = -1
      i = #VK_NUMPAD4
    EndIf
    \Keymap_Harp(#Harp_4) = i
    i = ReadPreferenceInteger("KeyHarp5", -1)
    If i = -1
      i = #VK_NUMPAD5
    EndIf
    \Keymap_Harp(#Harp_5) = i
    i = ReadPreferenceInteger("KeyHarp6", -1)
    If i = -1
      i = #VK_NUMPAD6
    EndIf
    \Keymap_Harp(#Harp_6) = i
    i = ReadPreferenceInteger("KeyHarp7", -1)
    If i = -1
      i = #VK_NUMPAD7
    EndIf
    \Keymap_Harp(#Harp_7) = i
    i = ReadPreferenceInteger("KeyHarp8", -1)
    If i = -1
      i = #VK_NUMPAD8
    EndIf
    \Keymap_Harp(#Harp_8) = i
    i = ReadPreferenceInteger("KeyHarp9", -1)
    If i = -1
      i = #VK_NUMPAD9
    EndIf
    \Keymap_Harp(#Harp_9) = i
    i = ReadPreferenceInteger("KeyHarp10", -1)
    If i = -1
      i = #VK_DIVIDE
    EndIf
    \Keymap_Harp(#Harp_10) = i
    i = ReadPreferenceInteger("KeyHarp11", -1)
    If i = -1
      i = #VK_MULTIPLY
    EndIf
    \Keymap_Harp(#Harp_11) = i
    i = ReadPreferenceInteger("KeyHarp12", -1)
    If i = -1
      i = #VK_SUBTRACT
    EndIf
    \Keymap_Harp(#Harp_12) = i
    i = ReadPreferenceInteger("KeyHarp13", -1)
    If i = -1
      i = #VK_NUMPAD0
    EndIf
    \Keymap_Harp(#Harp_13) = i
    
    i = ReadPreferenceInteger("KeyMasterPower", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Master_Power
    EndIf
    \Keymap_Function(#Btn_Master_Power) = i
    
    i = ReadPreferenceInteger("KeyRhythmAlternate", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Rhythm_Alternate
    EndIf
    \Keymap_Function(#Btn_Rhythm_Alternate) = i
    i = ReadPreferenceInteger("KeyRhythmRock1March", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Rhythm_Rock1_March
    EndIf
    \Keymap_Function(#Btn_Rhythm_Rock1_March) = i
    i = ReadPreferenceInteger("KeyRhythmRock2Tango", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Rhythm_Rock2_Tango
    EndIf
    \Keymap_Function(#Btn_Rhythm_Rock2_Tango) = i
    i = ReadPreferenceInteger("KeyRhythmDiscoBlues", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Rhythm_Disco_Blues
    EndIf
    \Keymap_Function(#Btn_Rhythm_Disco_Blues) = i
    i = ReadPreferenceInteger("KeyRhythmLatinSwing", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Rhythm_Latin_Swing
    EndIf
    \Keymap_Function(#Btn_Rhythm_Latin_Swing) = i
    i = ReadPreferenceInteger("KeyRhythmCountryWaltz", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Rhythm_Country_Waltz
    EndIf
    \Keymap_Function(#Btn_Rhythm_Country_Waltz) = i
    i = ReadPreferenceInteger("KeyRhythmAutoBassSync", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Rhythm_AutoBassSync
    EndIf
    \Keymap_Function(#Btn_Rhythm_AutoBassSync) = i
    i = ReadPreferenceInteger("KeyMemory", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Memory
    EndIf
    \Keymap_Function(#Btn_Memory) = i
    i = ReadPreferenceInteger("KeyMemoryPlaybackRecord", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Memory_Playback_Record
    EndIf
    \Keymap_Function(#Btn_Memory_Playback_Record) = i
    i = ReadPreferenceInteger("KeyMemoryRepeatDelete", -1)
    If i = -1
      i = ArraySize(\Keymap())-#Btn_Memory_Repeat_Delete
    EndIf
    \Keymap_Function(#Btn_Memory_Repeat_Delete) = i
    i = ReadPreferenceInteger("KeyMemoryPlaybackEnter", -1)
    If i = -1
      i = #VK_CONTROL
    EndIf
    \Keymap_Function(#Btn_Memory_Playback_Enter) = i
    
    i = ReadPreferenceInteger("KeyChordiate", -1)
    If i = -1
      i = #VK_SPACE
    EndIf
    \Keymap_Function(#Btn_Chordiate) = i
    
  EndWith
  
EndProcedure

Procedure.i GetGraphics()
  Protected i.i
  
  LocalCatchImage(#Img_Background, ?Img_Background, ".data\img\background.png")
  LocalCatchImage(#Img_Base, ?Img_Base, ".data\img\base.png")
  
  LocalCatchImage(#Img_Button_Black_Off, ?Img_Button_Black_Off, ".data\img\button_black_off.png")
  LocalCatchImage(#Img_Button_Black_On, ?Img_Button_Black_On, ".data\img\button_black_on.png")
  
  LocalCatchImage(#Img_Button_Blue_Off, ?Img_Button_Blue_Off, ".data\img\button_blue_off.png")
  LocalCatchImage(#Img_Button_Blue_On, ?Img_Button_Blue_On, ".data\img\button_blue_on.png")
  
  LocalCatchImage(#Img_Button_Dark_Off, ?Img_Button_Dark_Off, ".data\img\button_dark_off.png")
  LocalCatchImage(#Img_Button_Dark_On, ?Img_Button_Dark_On, ".data\img\button_dark_on.png")
  LocalCatchImage(#Img_Button_Dark_C_Off, ?Img_Button_Dark_C_Off, ".data\img\button_dark_c_off.png")
  LocalCatchImage(#Img_Button_Dark_C_On, ?Img_Button_Dark_C_On, ".data\img\button_dark_c_on.png")
  LocalCatchImage(#Img_Button_Dark_X_Off, ?Img_Button_Dark_X_Off, ".data\img\button_dark_x_off.png")
  LocalCatchImage(#Img_Button_Dark_X_On, ?Img_Button_Dark_X_On, ".data\img\button_dark_x_on.png")
  LocalCatchImage(#Img_Button_Dark_Tri_Off, ?Img_Button_Dark_Tri_Off, ".data\img\button_dark_tri_off.png")
  LocalCatchImage(#Img_Button_Dark_Tri_On, ?Img_Button_Dark_Tri_On, ".data\img\button_dark_tri_on.png")
  
  LocalCatchImage(#Img_Button_Red_Off, ?Img_Button_Red_Off, ".data\img\button_red_off.png")
  LocalCatchImage(#Img_Button_Red_On, ?Img_Button_Red_On, ".data\img\button_red_on.png")
  
  LocalCatchImage(#Img_Button_Light_Off, ?Img_Button_Light_Off, ".data\img\button_light_off.png")
  LocalCatchImage(#Img_Button_Light_On, ?Img_Button_Light_On, ".data\img\button_light_on.png")
  LocalCatchImage(#Img_Button_Light_Up_Off, ?Img_Button_Light_Up_Off, ".data\img\button_light_up_off.png")
  LocalCatchImage(#Img_Button_Light_Up_On, ?Img_Button_Light_Up_On, ".data\img\button_light_up_on.png")
  LocalCatchImage(#Img_Button_Light_Down_Off, ?Img_Button_Light_Down_Off, ".data\img\button_light_down_off.png")
  LocalCatchImage(#Img_Button_Light_Down_On, ?Img_Button_Light_Down_On, ".data\img\button_light_down_on.png")
  LocalCatchImage(#Img_Button_Light_O_Off, ?Img_Button_Light_O_Off, ".data\img\button_light_o_off.png")
  LocalCatchImage(#Img_Button_Light_O_On, ?Img_Button_Light_O_On, ".data\img\button_light_o_on.png")
  LocalCatchImage(#Img_Button_Light_C_Off, ?Img_Button_Light_C_Off, ".data\img\button_light_c_off.png")
  LocalCatchImage(#Img_Button_Light_C_On, ?Img_Button_Light_C_On, ".data\img\button_light_c_on.png")
  
  LocalCatchImage(#Img_Button_Bar_Light_Off, ?Img_Button_Bar_Light_Off, ".data\img\button_bar_light_off.png")
  LocalCatchImage(#Img_Button_Bar_Light_On, ?Img_Button_Bar_Light_On, ".data\img\button_bar_light_on.png")
  LocalCatchImage(#Img_Button_Bar_Red_Off, ?Img_Button_Bar_Red_Off, ".data\img\button_bar_red_off.png")
  LocalCatchImage(#Img_Button_Bar_Red_On, ?Img_Button_Bar_Red_On, ".data\img\button_bar_red_on.png")
  
  LocalCatchImage(#Img_Button_Wide_Black_Off, ?Img_Button_Wide_Black_Off, ".data\img\button_wide_black_off.png")
  LocalCatchImage(#Img_Button_Wide_Black_On, ?Img_Button_Wide_Black_On, ".data\img\button_wide_black_on.png")
  LocalCatchImage(#Img_Button_Wide_Red_Off, ?Img_Button_Wide_Red_Off, ".data\img\button_wide_red_off.png")
  LocalCatchImage(#Img_Button_Wide_Red_On, ?Img_Button_Wide_Red_On, ".data\img\button_wide_red_on.png")
  
  LocalCatchImage(#Img_Knob_Big, ?Img_Knob_Big, ".data\img\knob_big.png")
  LocalCatchImage(#Img_Knob_Ring, ?Img_Knob_Ring, ".data\img\knob_ring.png")
  LocalCatchImage(#Img_Knob_Small, ?Img_Knob_Small, ".data\img\knob_small.png")
  
  LocalCatchImage(#Img_LED_Off, ?Img_LED_Off, ".data\img\led_off.png")
  LocalCatchImage(#Img_LED_On, ?Img_LED_On, ".data\img\led_on.png")
  
  For i = #Img_GUI_First To #Img_GUI_Last
    Repeat
    Until ResizeImage(i, ImageWidth(i) * (WindowWidth(#Win_Main) / 800.0) * 0.5, ImageHeight(i) * ((WindowHeight(#Win_Main) - 20) / 600.0) * 0.5)
  Next
EndProcedure

Procedure.i GetUIGraphics()
  LocalCatchImage(#Img_UI_Curve_None, ?Img_UI_Curve_None, ".data\img\ui_curve_none.png")
  LocalCatchImage(#Img_UI_Curve_Trigger, ?Img_UI_Curve_Trigger, ".data\img\ui_curve_trigger.png")
  LocalCatchImage(#Img_UI_Curve_Attack, ?Img_UI_Curve_Attack, ".data\img\ui_curve_attack.png")
  LocalCatchImage(#Img_UI_Curve_Decay, ?Img_UI_Curve_Decay, ".data\img\ui_curve_decay.png")
  LocalCatchImage(#Img_UI_Curve_Sustain, ?Img_UI_Curve_Sustain, ".data\img\ui_curve_sustain.png")
  LocalCatchImage(#Img_UI_Curve_Release, ?Img_UI_Curve_Release, ".data\img\ui_curve_release.png")
  LocalCatchImage(#Img_UI_Curve_Oneshot, ?Img_UI_Curve_Oneshot, ".data\img\ui_curve_oneshot.png")
  LocalCatchImage(#Img_UI_Curve_Ignore, ?Img_UI_Curve_Ignore, ".data\img\ui_curve_ignore.png")
  
  LocalCatchImage(#Img_UI_Chord_Maj, ?Img_UI_Chord_Maj, ".data\img\ui_chord_maj.png")
  LocalCatchImage(#Img_UI_Chord_Min, ?Img_UI_Chord_Min, ".data\img\ui_chord_min.png")
  LocalCatchImage(#Img_UI_Chord_7th, ?Img_UI_Chord_7th, ".data\img\ui_chord_7th.png")
  LocalCatchImage(#Img_UI_Chord_Dim, ?Img_UI_Chord_Dim, ".data\img\ui_chord_dim.png")
  LocalCatchImage(#Img_UI_Chord_Ma7, ?Img_UI_Chord_Ma7, ".data\img\ui_chord_ma7.png")
  LocalCatchImage(#Img_UI_Chord_Mi7, ?Img_UI_Chord_Mi7, ".data\img\ui_chord_mi7.png")
  LocalCatchImage(#Img_UI_Chord_Aug, ?Img_UI_Chord_Aug, ".data\img\ui_chord_aug.png")
  
  LocalCatchImage(#Img_UI_Chord_Ad9, ?Img_UI_Chord_Ad9, ".data\img\ui_chord_ad9.png")
  LocalCatchImage(#Img_UI_Chord_Su4, ?Img_UI_Chord_Su4, ".data\img\ui_chord_su4.png")
  LocalCatchImage(#Img_UI_Chord_Ad2, ?Img_UI_Chord_Ad2, ".data\img\ui_chord_ad2.png")
  LocalCatchImage(#Img_UI_Chord_As2, ?Img_UI_Chord_As2, ".data\img\ui_chord_as2.png")
  LocalCatchImage(#Img_UI_Chord_Ac4, ?Img_UI_Chord_Ac4, ".data\img\ui_chord_ac4.png")
  LocalCatchImage(#Img_UI_Chord_Mc4, ?Img_UI_Chord_Mc4, ".data\img\ui_chord_mc4.png")
  LocalCatchImage(#Img_UI_Chord_Chr, ?Img_UI_Chord_Chr, ".data\img\ui_chord_chr.png")
  
  LocalCatchImage(#Img_UI_Note_0, ?Img_UI_Note_0, ".data\img\ui_note_0.png")
  LocalCatchImage(#Img_UI_Note_1, ?Img_UI_Note_1, ".data\img\ui_note_1.png")
  LocalCatchImage(#Img_UI_Note_2, ?Img_UI_Note_2, ".data\img\ui_note_2.png")
  LocalCatchImage(#Img_UI_Note_3, ?Img_UI_Note_3, ".data\img\ui_note_3.png")
  LocalCatchImage(#Img_UI_Note_4, ?Img_UI_Note_4, ".data\img\ui_note_4.png")
  LocalCatchImage(#Img_UI_Note_5, ?Img_UI_Note_5, ".data\img\ui_note_5.png")
  LocalCatchImage(#Img_UI_Note_6, ?Img_UI_Note_6, ".data\img\ui_note_6.png")
  LocalCatchImage(#Img_UI_Note_7, ?Img_UI_Note_7, ".data\img\ui_note_7.png")
  LocalCatchImage(#Img_UI_Note_8, ?Img_UI_Note_8, ".data\img\ui_note_8.png")
  LocalCatchImage(#Img_UI_Note_9, ?Img_UI_Note_9, ".data\img\ui_note_9.png")
  LocalCatchImage(#Img_UI_Note_10, ?Img_UI_Note_10, ".data\img\ui_note_10.png")
  LocalCatchImage(#Img_UI_Note_11, ?Img_UI_Note_11, ".data\img\ui_note_11.png")
  
EndProcedure

Procedure.i KeyReassign_GetKey()
  Protected Event.i
  
  With Chordian\Input_State
    Repeat
      Event = WaitWindowEvent()
      If EventWindow() = #Win_Main
        Select Event
          Case #PB_Event_Gadget
            Select EventGadget()
              Case #Gad_Canvas
                Select EventType()
                  Case #PB_EventType_KeyUp
                    Select GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                      Case #VK_ESCAPE
                        ProcedureReturn -2
                      Default
                        ProcedureReturn GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                    EndSelect
                    
                  Case #PB_EventType_LeftButtonDown
                    \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                    \Mouse_Button_Left_Current = 1
                    ProcedureReturn -1
                    
                  Case #PB_EventType_LeftButtonUp
                    \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                    \Mouse_Button_Left_Current = 0
                    
                  Case #PB_EventType_RightButtonDown
                    \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                    \Mouse_Button_Right_Current = 1
                    ProcedureReturn -1
                    
                  Case #PB_EventType_RightButtonUp
                    \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                    \Mouse_Button_Right_Current = 0
                    
                  Case #PB_EventType_MiddleButtonDown
                    \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                    \Mouse_Button_Middle_Current = 1
                    ProcedureReturn -1
                    
                  Case #PB_EventType_MiddleButtonUp
                    \Mouse_Button_Right_Previous = \Mouse_Button_Middle_Current
                    \Mouse_Button_Middle_Current = 0
                    
                EndSelect
            EndSelect
            
          Case #PB_Event_RestoreWindow
            PostEvent(#PB_Event_RestoreWindow, #Win_Main, 0)
            ProcedureReturn -1
            
          Case #PB_Event_SizeWindow
            PostEvent(#PB_Event_SizeWindow, #Win_Main, 0)
            ProcedureReturn -1
            
          Case #PB_Event_CloseWindow
            PostEvent(#PB_Event_CloseWindow, #Win_Main, 0)
            ProcedureReturn -1
          Default
        EndSelect
      EndIf
    ForEver
  EndWith
EndProcedure


Procedure.i KeyReassign_Chord(Type.i, OffsetX.i, OffsetY.i)
  Protected i.i
  
  Protected KeyReturn.i
  
  Protected ScaleX.f
  Protected ScaleY.f
  
  With Chordian\Input_State
    If (\Mouse_Position_X_Current - (271 + OffsetX)) % 31 <= 20
      While Not WaitForSingleObject_(Chordian\Repaint_Event\Semaphore_Repaint_Done, 0) = #WAIT_OBJECT_0
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Stop, 1, 0)
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
      Wend
      
      If StartDrawing(CanvasOutput(#Gad_Canvas))
        ScaleX = OutputWidth() / 800.0
        ScaleY = OutputHeight() / 600.0
        DrawAlphaImage(ImageID(#Img_Button_Red_On), ((271 + OffsetX) + ((\Mouse_Position_X_Current - (271 + OffsetX)) / 31) * 31) * ScaleX, (240 + OffsetY) * ScaleY)
        StopDrawing()
      EndIf
      
      PreferenceGroup("Controls")
      
      KeyReturn = KeyReassign_GetKey()
      If KeyReturn = -2
        Select Type
          Case #Chord_Maj
            Select (\Mouse_Position_X_Current - (271 + OffsetX)) / 31
              Case #Note_Db
                i = ReadPreferenceInteger("KeyDbMaj", -1)
                If i = -1
                  i = #VK_1
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Ab
                i = ReadPreferenceInteger("KeyAbMaj", -1)
                If i = -1
                  i = #VK_2
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Eb
                i = ReadPreferenceInteger("KeyEbMaj", -1)
                If i = -1
                  i = #VK_3
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Bb
                i = ReadPreferenceInteger("KeyBbMaj", -1)
                If i = -1
                  i = #VK_4
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_F
                i = ReadPreferenceInteger("KeyFMaj", -1)
                If i = -1
                  i = #VK_5
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_C
                i = ReadPreferenceInteger("KeyCMaj", -1)
                If i = -1
                  i = #VK_6
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_G
                i = ReadPreferenceInteger("KeyGMaj", -1)
                If i = -1
                  i = #VK_7
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_D
                i = ReadPreferenceInteger("KeyDMaj", -1)
                If i = -1
                  i = #VK_8
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_A
                i = ReadPreferenceInteger("KeyAMaj", -1)
                If i = -1
                  i = #VK_9
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_E
                i = ReadPreferenceInteger("KeyEMaj", -1)
                If i = -1
                  i = #VK_0
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_B
                i = ReadPreferenceInteger("KeyBMaj", -1)
                If i = -1
                  i = 219
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Fc
                i = ReadPreferenceInteger("KeyF#Maj", -1)
                If i = -1
                  i = 221
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
            EndSelect
          Case #Chord_Min
            Select (\Mouse_Position_X_Current - (271 + OffsetX)) / 31
              Case #Note_Db
                i = ReadPreferenceInteger("KeyDbMin", -1)
                If i = -1
                  i = #VK_Q
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Ab
                i = ReadPreferenceInteger("KeyAbMin", -1)
                If i = -1
                  i = #VK_W
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Eb
                i = ReadPreferenceInteger("KeyEbMin", -1)
                If i = -1
                  i = #VK_E
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Bb
                i = ReadPreferenceInteger("KeyBbMin", -1)
                If i = -1
                  i = #VK_R
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_F
                i = ReadPreferenceInteger("KeyFMin", -1)
                If i = -1
                  i = #VK_T
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_C
                i = ReadPreferenceInteger("KeyCMin", -1)
                If i = -1
                  i = #VK_Z
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_G
                i = ReadPreferenceInteger("KeyGMin", -1)
                If i = -1
                  i = #VK_U
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_D
                i = ReadPreferenceInteger("KeyDMin", -1)
                If i = -1
                  i = #VK_I
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_A
                i = ReadPreferenceInteger("KeyAMin", -1)
                If i = -1
                  i = #VK_O
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_E
                i = ReadPreferenceInteger("KeyEMin", -1)
                If i = -1
                  i = #VK_P
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_B
                i = ReadPreferenceInteger("KeyBMin", -1)
                If i = -1
                  i = 186
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Fc
                i = ReadPreferenceInteger("KeyF#Min", -1)
                If i = -1
                  i = 187
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
            EndSelect
          Case #Chord_7th
            Select (\Mouse_Position_X_Current - (271 + OffsetX)) / 31
              Case #Note_Db
                i = ReadPreferenceInteger("KeyDb7th", -1)
                If i = -1
                  i = #VK_A
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Ab
                i = ReadPreferenceInteger("KeyAb7th", -1)
                If i = -1
                  i = #VK_S
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Eb
                i = ReadPreferenceInteger("KeyEb7th", -1)
                If i = -1
                  i = #VK_D
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Bb
                i = ReadPreferenceInteger("KeyBb7th", -1)
                If i = -1
                  i = #VK_F
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_F
                i = ReadPreferenceInteger("KeyF7th", -1)
                If i = -1
                  i = #VK_G
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_C
                i = ReadPreferenceInteger("KeyC7th", -1)
                If i = -1
                  i = #VK_H
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_G
                i = ReadPreferenceInteger("KeyG7th", -1)
                If i = -1
                  i = #VK_J
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_D
                i = ReadPreferenceInteger("KeyD7th", -1)
                If i = -1
                  i = #VK_K
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_A
                i = ReadPreferenceInteger("KeyA7th", -1)
                If i = -1
                  i = #VK_L
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_E
                i = ReadPreferenceInteger("KeyE7th", -1)
                If i = -1
                  i = 192
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_B
                i = ReadPreferenceInteger("KeyB7th", -1)
                If i = -1
                  i = 222
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
              Case #Note_Fc
                i = ReadPreferenceInteger("KeyF#7th", -1)
                If i = -1
                  i = 191
                EndIf
                \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = i
            EndSelect
        EndSelect
      ElseIf KeyReturn <> -1
        \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31) = KeyReturn
      EndIf
      
      If \UnlockControls
        Select Type
          Case #Chord_Maj
            Select (\Mouse_Position_X_Current - (271 + OffsetX)) / 31
              Case #Note_Db
                WritePreferenceInteger("KeyDbMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Ab
                WritePreferenceInteger("KeyAbMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Eb
                WritePreferenceInteger("KeyEbMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Bb
                WritePreferenceInteger("KeyBbMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_F
                WritePreferenceInteger("KeyFMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_C
                WritePreferenceInteger("KeyCMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_G
                WritePreferenceInteger("KeyGMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_D
                WritePreferenceInteger("KeyDMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_A
                WritePreferenceInteger("KeyAMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_E
                WritePreferenceInteger("KeyEMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_B
                WritePreferenceInteger("KeyBMaj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Fc
                WritePreferenceInteger("KeyF#Maj", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
            EndSelect
          Case #Chord_Min
            Select (\Mouse_Position_X_Current - (271 + OffsetX)) / 31
              Case #Note_Db
                WritePreferenceInteger("KeyDbMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Ab
                WritePreferenceInteger("KeyAbMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Eb
                WritePreferenceInteger("KeyEbMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Bb
                WritePreferenceInteger("KeyBbMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_F
                WritePreferenceInteger("KeyFMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_C
                WritePreferenceInteger("KeyCMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_G
                WritePreferenceInteger("KeyGMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_D
                WritePreferenceInteger("KeyDMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_A
                WritePreferenceInteger("KeyAMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_E
                WritePreferenceInteger("KeyEMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_B
                WritePreferenceInteger("KeyBMin", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Fc
                WritePreferenceInteger("KeyF#Min", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
            EndSelect
          Case #Chord_7th
            Select (\Mouse_Position_X_Current - (271 + OffsetX)) / 31
              Case #Note_Db
                WritePreferenceInteger("KeyDb7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Ab
                WritePreferenceInteger("KeyAb7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Eb
                WritePreferenceInteger("KeyEb7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Bb
                WritePreferenceInteger("KeyBb7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_F
                WritePreferenceInteger("KeyF7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_C
                WritePreferenceInteger("KeyC7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_G
                WritePreferenceInteger("KeyG7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_D
                WritePreferenceInteger("KeyD7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_A
                WritePreferenceInteger("KeyA7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_E
                WritePreferenceInteger("KeyE7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_B
                WritePreferenceInteger("KeyB7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
              Case #Note_Fc
                WritePreferenceInteger("KeyF#7th", \Keymap_Chord(Type, (\Mouse_Position_X_Current - (271 + OffsetX)) / 31))
            EndSelect
        EndSelect
        
      EndIf
      
      WaitForSingleObject_(Chordian\Repaint_Event\Semaphore_Repaint_Stop, 0)
      
      ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
      ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
      
      ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Resume, 1, 0)
      
    EndIf
  EndWith
EndProcedure

Procedure.i KeyReassign_Function(Type.i)
  Protected i.i
  
  Protected KeyReturn.i
  
  Protected ScaleX.f
  Protected ScaleY.f
  
  With Chordian\Input_State
    While Not WaitForSingleObject_(Chordian\Repaint_Event\Semaphore_Repaint_Done, 0) = #WAIT_OBJECT_0
      ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Stop, 1, 0)
      ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
    Wend
    
    If StartDrawing(CanvasOutput(#Gad_Canvas))
      
      ScaleX = OutputWidth() / 800.0
      ScaleY = OutputHeight() / 600.0
      
      Select Type
          
        Case #Btn_Master_Power
          DrawAlphaImage(ImageID(#Img_Button_Blue_On), 126 * ScaleX, 113 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
          
          
        Case #Btn_Rhythm_Alternate
          DrawAlphaImage(ImageID(#Img_Button_Red_On), 36 * ScaleX, 274 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
          
        Case #Btn_Rhythm_First To #Btn_Rhythm_Last
          DrawAlphaImage(ImageID(#Img_Button_Red_On), (68 + (Type-#Btn_Rhythm_First) * 32) * ScaleX, 274 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
          
        Case #Btn_Rhythm_AutoBassSync
          DrawAlphaImage(ImageID(#Img_Button_Red_On), 84 * ScaleX, 329 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
          
          
        Case #Btn_Memory
          DrawAlphaImage(ImageID(#Img_Button_Blue_On), 126 * ScaleX, 424 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
          
        Case #Btn_Memory_Playback_Record
          DrawAlphaImage(ImageID(#Img_Button_Red_On), 159 * ScaleX, 424 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
          
        Case #Btn_Memory_Repeat_Delete
          DrawAlphaImage(ImageID(#Img_Button_Red_On), 192 * ScaleX, 424 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
          
        Case #Btn_Memory_Playback_Enter
          DrawAlphaImage(ImageID(#Img_Button_Wide_Red_On), 162 * ScaleX, 480 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
          
          
        Case #Btn_Chordiate
          DrawAlphaImage(ImageID(#Img_Button_Bar_Red_On), 361 * ScaleX, 369 * ScaleY)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
          
      EndSelect
      
      StopDrawing()
      
    EndIf
    
    PreferenceGroup("Controls")
    
    KeyReturn = KeyReassign_GetKey()
    If KeyReturn = -2
      Select Type
        Case #Btn_Master_Power
          i = ReadPreferenceInteger("KeyMasterPower", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Master_Power
          EndIf
          \Keymap_Function(Type) = i
          
        Case #Btn_Rhythm_Alternate
          i = ReadPreferenceInteger("KeyRhythmAlternate", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Rhythm_Alternate
          EndIf
          \Keymap_Function(Type) = i
        Case #Btn_Rhythm_Rock1_March
          i = ReadPreferenceInteger("KeyRhythmRock1March", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Rhythm_Rock1_March
          EndIf
          \Keymap_Function(Type) = i
        Case #Btn_Rhythm_Rock2_Tango
          i = ReadPreferenceInteger("KeyRhythmRock2Tango", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Rhythm_Rock2_Tango
          EndIf
          \Keymap_Function(Type) = i
          
        Case #Btn_Rhythm_Disco_Blues
          i = ReadPreferenceInteger("KeyRhythmDiscoBlues", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Rhythm_Disco_Blues
          EndIf
          \Keymap_Function(Type) = i
        Case #Btn_Rhythm_Latin_Swing
          i = ReadPreferenceInteger("KeyRhythmLatinSwing", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Rhythm_Latin_Swing
          EndIf
          \Keymap_Function(Type) = i
        Case #Btn_Rhythm_Country_Waltz
          i = ReadPreferenceInteger("KeyRhythmCountryWaltz", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Rhythm_Country_Waltz
          EndIf
          \Keymap_Function(Type) = i
        Case #Btn_Rhythm_AutoBassSync
          i = ReadPreferenceInteger("KeyRhythmAutoBassSync", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Rhythm_AutoBassSync
          EndIf
          \Keymap_Function(Type) = i
          
        Case #Btn_Memory
          i = ReadPreferenceInteger("KeyMemory", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Memory
          EndIf
          \Keymap_Function(Type) = i
        Case #Btn_Memory_Playback_Record
          i = ReadPreferenceInteger("KeyMemory", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Memory_Playback_Record
          EndIf
          \Keymap_Function(Type) = i
        Case #Btn_Memory_Repeat_Delete
          i = ReadPreferenceInteger("KeyMemory", -1)
          If i = -1
            i = ArraySize(\Keymap())-#Btn_Memory_Repeat_Delete
          EndIf
          \Keymap_Function(Type) = i
        Case #Btn_Memory_Playback_Enter
          i = ReadPreferenceInteger("KeyMemoryPlaybackEnter", -1)
          If i = -1
            i = #VK_CONTROL
          EndIf
          \Keymap_Function(Type) = i
          
        Case #Btn_Chordiate
          i = ReadPreferenceInteger("KeyChordiate", -1)
          If i = -1
            i = #VK_SPACE
          EndIf
          \Keymap_Function(Type) = i
      EndSelect
      
    ElseIf KeyReturn <> -1
      \Keymap_Function(Type) = KeyReturn
    EndIf
    
    If \UnlockControls
      Select Type
        Case #Btn_Master_Power
          WritePreferenceInteger("KeyMasterPower", \Keymap_Function(Type))
          
        Case #Btn_Rhythm_Alternate
          WritePreferenceInteger("KeyRhythmAlternate", \Keymap_Function(Type))
        Case #Btn_Rhythm_Rock1_March
          WritePreferenceInteger("KeyRhythmRock1March", \Keymap_Function(Type))
        Case #Btn_Rhythm_Rock2_Tango
          WritePreferenceInteger("KeyRhythmRock2Tango", \Keymap_Function(Type))
        Case #Btn_Rhythm_Disco_Blues
          WritePreferenceInteger("KeyRhythmDiscoBlues", \Keymap_Function(Type))
        Case #Btn_Rhythm_Latin_Swing
          WritePreferenceInteger("KeyRhythmLatinSwing", \Keymap_Function(Type))
        Case #Btn_Rhythm_Country_Waltz
          WritePreferenceInteger("KeyRhythmCountryWaltz", \Keymap_Function(Type))
        Case #Btn_Rhythm_AutoBassSync
          WritePreferenceInteger("KeyRhythmAutoBassSync", \Keymap_Function(Type))
          
        Case #Btn_Memory
          WritePreferenceInteger("KeyMemory", \Keymap_Function(Type))
        Case #Btn_Memory_Playback_Record
          WritePreferenceInteger("KeyMemoryPlaybackRecord", \Keymap_Function(Type))
        Case #Btn_Memory_Repeat_Delete
          WritePreferenceInteger("KeyMemoryRepeatDelete", \Keymap_Function(Type))
        Case #Btn_Memory_Playback_Enter
          WritePreferenceInteger("KeyMemoryPlaybackEnter", \Keymap_Function(Type))
          
        Case #Btn_Chordiate
          WritePreferenceInteger("KeyChordiate", \Keymap_Function(Type))
      EndSelect
    EndIf
    
    WaitForSingleObject_(Chordian\Repaint_Event\Semaphore_Repaint_Stop, 0)
    
    ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Base, 1, 0)
    ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
    ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
    ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
    ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
    ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
    ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
    
    ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Resume, 1, 0)
    
  EndWith
EndProcedure


;-Macros
Macro AddNoteItems(Gadget)
  AddGadgetItem(Gadget, -1, "0", ImageID(#Img_UI_Note_0))
  AddGadgetItem(Gadget, -1, "1", ImageID(#Img_UI_Note_1))
  AddGadgetItem(Gadget, -1, "2", ImageID(#Img_UI_Note_2))
  AddGadgetItem(Gadget, -1, "3", ImageID(#Img_UI_Note_3))
  AddGadgetItem(Gadget, -1, "4", ImageID(#Img_UI_Note_4))
  AddGadgetItem(Gadget, -1, "5", ImageID(#Img_UI_Note_5))
  AddGadgetItem(Gadget, -1, "6", ImageID(#Img_UI_Note_6))
  AddGadgetItem(Gadget, -1, "7", ImageID(#Img_UI_Note_7))
  AddGadgetItem(Gadget, -1, "8", ImageID(#Img_UI_Note_8))
  AddGadgetItem(Gadget, -1, "9", ImageID(#Img_UI_Note_9))
  AddGadgetItem(Gadget, -1, "10", ImageID(#Img_UI_Note_10))
  AddGadgetItem(Gadget, -1, "11", ImageID(#Img_UI_Note_11))
  
EndMacro

Macro AddChordItems(Gadget)
  AddGadgetItem(Gadget, -1, "Maj", ImageID(#Img_UI_Chord_Maj))
  AddGadgetItem(Gadget, -1, "Min", ImageID(#Img_UI_Chord_Min))
  AddGadgetItem(Gadget, -1, "7th", ImageID(#Img_UI_Chord_7th))
  AddGadgetItem(Gadget, -1, "Dim", ImageID(#Img_UI_Chord_Dim))
  AddGadgetItem(Gadget, -1, "Ma7", ImageID(#Img_UI_Chord_Ma7))
  AddGadgetItem(Gadget, -1, "Mi7", ImageID(#Img_UI_Chord_Mi7))
  AddGadgetItem(Gadget, -1, "Aug", ImageID(#Img_UI_Chord_Aug))
  AddGadgetItem(Gadget, -1, "Ad9", ImageID(#Img_UI_Chord_Ad9))
  AddGadgetItem(Gadget, -1, "Su4", ImageID(#Img_UI_Chord_Su4))
  AddGadgetItem(Gadget, -1, "Ad2", ImageID(#Img_UI_Chord_Ad2))
  AddGadgetItem(Gadget, -1, "As2", ImageID(#Img_UI_Chord_As2))
  AddGadgetItem(Gadget, -1, "Ac4", ImageID(#Img_UI_Chord_Ac4))
  AddGadgetItem(Gadget, -1, "Mc4", ImageID(#Img_UI_Chord_Mc4))
  AddGadgetItem(Gadget, -1, "Chr", ImageID(#Img_UI_Chord_Chr))
  
EndMacro

Procedure.i Init()
  Protected i.i
  
  ;-Initialization
  SetPriorityClass_(GetCurrentProcess_(), #HIGH_PRIORITY_CLASS)
  
  If Not OpenWindow(#Win_Main, #PB_Ignore, #PB_Ignore, 800, 600 + 20, "Chordian", #PB_Window_SystemMenu | #PB_Window_MinimizeGadget | #PB_Window_MaximizeGadget | #PB_Window_SizeGadget | #PB_Window_TitleBar)
    MessageRequester("Chordian>Error", "Window could not be initialized.")
    End
  EndIf
  WindowBounds(#Win_Main, 400, 300 + 20, 4000, 3000 + 20)
  
  If Not (DirectSoundCreate_(0, @DirectSound, 0) = #DS_OK And
          DirectSound\SetCooperativeLevel(GetDesktopWindow_(), #DSSCL_PRIORITY) = #DS_OK And
          DirectSound\CreateSoundBuffer(@DirectSoundBufferDescription, @DirectSoundBuffer, 0) = #DS_OK And
          DirectSoundBuffer\QueryInterface(?IID_DirectSoundNotify, @DirectSoundNotify) = #S_OK And 
          DirectSoundNotify\SetNotificationPositions(ArraySize(DirectSoundNotifyArray())+1, @DirectSoundNotifyArray(0)) = #DS_OK)
    MessageRequester("Chordian>Error", "DirectSound could not be initialized.")
    DirectSound\Release()
    End
  EndIf
  
  PreferenceGroup("Midi")
  If ReadPreferenceInteger("OutputDevice", -1) <> -1
    midiOutOpen_(@MIDIHandle, ReadPreferenceInteger("OutputDevice", -1), #Null, #Null, #CALLBACK_NULL)
  EndIf
  If MIDIHandle
    SendMIDIProgram(MIDIHandle, 0, ReadPreferenceInteger("BassProgram", 87))
    SendMIDIProgram(MIDIHandle, 1, ReadPreferenceInteger("ChordProgram", 87))
    SendMIDIProgram(MIDIHandle, 2, ReadPreferenceInteger("HarpProgram", 96))
    SendMIDIProgram(MIDIHandle, 3, ReadPreferenceInteger("KeyboardProgram", 90))
    SendMIDIProgram(MIDIHandle, 9, ReadPreferenceInteger("DrumProgram", 0))
  EndIf
  
  ;-Create Menu
  CreateMenu(#Men_Main, WindowID(#Win_Main))
  
  ;-Menu Entries
  MenuTitle("File")
  MenuItem(#Itm_ResetSize, "Reset window size")
  MenuItem(#Itm_Aspect, "Keep aspect ratio")
  MenuBar()
  MenuItem(#Itm_UnlockControls, "Unlock controls")
  MenuBar()
  MenuItem(#Itm_Load, "Load state...")
  MenuItem(#Itm_Save, "Save state...")
  MenuBar()
  MenuItem(#Itm_ResetState, "Reset state")
  MenuBar()
  MenuItem(#Itm_Exit, "Exit")
  
  SetMenuItemState(#Men_Main, #Itm_Aspect, 1)
  
  PreferenceGroup("Controls")
  Chordian\Input_State\UnlockControls = ReadPreferenceInteger("UnlockControls", 0)
  SetMenuItemState(#Men_Main, #Itm_UnlockControls, Chordian\Input_State\UnlockControls)
  
  MenuTitle("Edit")
  MenuItem(#Itm_Tuning, "Set Tuning...")
  MenuBar()
  OpenSubMenu("Set Primary Strum Mode")
  MenuItem(#Itm_StrumMode_Primary_None, "None")
  MenuBar()
  MenuItem(#Itm_StrumMode_Primary_Single, "Single")
  MenuItem(#Itm_StrumMode_Primary_Double, "Double")
  MenuItem(#Itm_StrumMode_Primary_Chord, "Chord")
  MenuItem(#Itm_StrumMode_Primary_Spread, "Spread")
  MenuItem(#Itm_StrumMode_Primary_Octave, "Octave")
  MenuItem(#Itm_StrumMode_Primary_Full, "Full")
  MenuItem(#Itm_StrumMode_Primary_Reverse, "Reverse")
  MenuItem(#Itm_StrumMode_Primary_Mirror, "Mirror")
  MenuItem(#Itm_StrumMode_Primary_Segment, "Segment")
  CloseSubMenu()
  OpenSubMenu("Set Secondary Strum Mode")
  MenuItem(#Itm_StrumMode_Secondary_None, "None")
  MenuBar()
  MenuItem(#Itm_StrumMode_Secondary_Single, "Single")
  MenuItem(#Itm_StrumMode_Secondary_Double, "Double")
  MenuItem(#Itm_StrumMode_Secondary_Chord, "Chord")
  MenuItem(#Itm_StrumMode_Secondary_Spread, "Spread")
  MenuItem(#Itm_StrumMode_Secondary_Octave, "Octave")
  MenuItem(#Itm_StrumMode_Secondary_Full, "Full")
  MenuItem(#Itm_StrumMode_Secondary_Reverse, "Reverse")
  MenuItem(#Itm_StrumMode_Secondary_Mirror, "Mirror")
  MenuItem(#Itm_StrumMode_Secondary_Segment, "Segment")
  CloseSubMenu()
  OpenSubMenu("Set Tertiary Strum Mode")
  MenuItem(#Itm_StrumMode_Tertiary_None, "None")
  MenuBar()
  MenuItem(#Itm_StrumMode_Tertiary_Single, "Single")
  MenuItem(#Itm_StrumMode_Tertiary_Double, "Double")
  MenuItem(#Itm_StrumMode_Tertiary_Chord, "Chord")
  MenuItem(#Itm_StrumMode_Tertiary_Spread, "Spread")
  MenuItem(#Itm_StrumMode_Tertiary_Octave, "Octave")
  MenuItem(#Itm_StrumMode_Tertiary_Full, "Full")
  MenuItem(#Itm_StrumMode_Tertiary_Reverse, "Reverse")
  MenuItem(#Itm_StrumMode_Tertiary_Mirror, "Mirror")
  MenuItem(#Itm_StrumMode_Tertiary_Segment, "Segment")
  
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_None, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_None))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Single, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Single))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Double, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Double))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Chord, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Chord))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Spread, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Spread))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Octave, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Octave))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Full, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Full))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Reverse, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Reverse))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Mirror, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Mirror))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Segment, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Segment))
  
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_None, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_None))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Single, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Single))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Double, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Double))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Chord, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Chord))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Spread, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Spread))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Octave, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Octave))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Full, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Full))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Reverse, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Reverse))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Mirror, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Mirror))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Segment, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Segment))
  
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_None, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_None))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Single, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Single))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Double, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Double))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Chord, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Chord))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Spread, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Spread))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Octave, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Octave))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Full, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Full))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Reverse, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Reverse))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Mirror, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Mirror))
  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Segment, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Segment))
  
  CloseSubMenu()
  MenuBar()
  MenuItem(#Itm_ChordiateMode, "Chordiate Mode (Less Constraints)")
  MenuBar()
  MenuItem(#Itm_ChordEdit, "Chord Editor...")
  MenuBar()
  MenuItem(#Itm_PatEdit, "Pattern Editor...")
  
  MenuTitle("Help")
  MenuItem(#Itm_Manual, "Open manual...")
  MenuItem(#Itm_About, "About...")
  
  ;-Create Canvas
  CanvasGadget(#Gad_Canvas, 0, 0, WindowWidth(#Win_Main), WindowHeight(#Win_Main) - 20, #PB_Canvas_Keyboard)
  
  StartDrawing(CanvasOutput(#Gad_Canvas))
  DrawingMode(#PB_2DDrawing_AlphaBlend)
  FrontColor($FF000000)
  BackColor($00000000)
  Box(0, 0, OutputWidth(), OutputHeight(), $FFFFFFFF)
  DrawText(0, 0, "Loading... Please wait.")
  StopDrawing()
  
  
  SetActiveGadget(#Gad_Canvas)
  
  ResetMachine()
  ResetInput()
  
  UsePNGImageDecoder()
  
  GetUIGraphics()
  GetGraphics()
  
  Chordian\RepaintHandler_Thread = CreateThread(@RepaintHandler(), 0)
  Chordian\PatternHandler_Thread = CreateThread(@PatternHandler(), 0)
  Chordian\MachineHandler_Thread = CreateThread(@MachineHandler(), 0)
  Chordian\FrequencyHandler_Thread = CreateThread(@FrequencyHandler(), 0)
  
  Chordian\SynthHandler_Thread = CreateThread(@SynthHandler(), 0)
  
  ThreadPriority(Chordian\RepaintHandler_Thread, 1)
  ThreadPriority(Chordian\PatternHandler_Thread, 30)
  ThreadPriority(Chordian\MachineHandler_Thread, 30)
  
  ThreadPriority(Chordian\SynthHandler_Thread, 31)
  
  DirectSoundBuffer\Play(0, 0, #DSBPLAY_LOOPING)
  
  ;Post these to hopefully fix some issues in Wine
  While WindowEvent()
  Wend
  
  PostEvent(#PB_Event_SizeWindow, #Win_Main, 0)
  
EndProcedure

Procedure.i Main()
  Protected Event.i
  
  Protected TempFloat.f
  Protected TempString.s
  Protected TempState.Machine_State_Save
  Protected *TempPointer
  
  Protected SendNewTick.i
  Protected SendNewChord.i
  
  Protected i.i
  Protected n.i
  
  Protected PreviousSizeX.i
  Protected PreviousSizeY.i
  Protected WindowsMaximized.i
  
  Protected ScaleX.f
  Protected ScaleY.f
  
  Init()
  
  PreviousSizeX = WindowWidth(#Win_Main)
  PreviousSizeY = WindowHeight(#Win_Main)
  
  Repeat
    Event = WaitWindowEvent()
    If EventWindow() = #Win_Main
      Select Event
          
        Case #PB_Event_Menu
          ;--Menu Actions
          Select EventMenu()
            Case #Itm_ResetSize
              ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, 800, 600 + 20)
              
            Case #Itm_Aspect
              SetMenuItemState(#Men_Main, #Itm_Aspect, Bool(Not GetMenuItemState(#Men_Main, #Itm_Aspect)))
              If GetWindowState(#Win_Main) = #PB_Window_Normal
                If GetMenuItemState(#Men_Main, #Itm_Aspect)
                  ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, #PB_Ignore, (600 * (WindowWidth(#Win_Main) / 800.0) + 20))
                EndIf
                PreviousSizeX = WindowWidth(#Win_Main)
                PreviousSizeY = WindowHeight(#Win_Main)
              EndIf
              
            Case #Itm_UnlockControls
              SetMenuItemState(#Men_Main, #Itm_UnlockControls, Bool(Not GetMenuItemState(#Men_Main, #Itm_UnlockControls)))
              Chordian\Input_State\UnlockControls = GetMenuItemState(#Men_Main, #Itm_UnlockControls)
              If Chordian\Input_State\UnlockControls And FileSize(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ".data\chordian.ini") = -1
                If FileSize(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ".data") = -1
                  CreateDirectory(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ".data")
                EndIf
                CreatePreferences(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ".data\chordian.ini")
              EndIf
              PreferenceGroup("Controls")
              WritePreferenceInteger("UnlockControls", Chordian\Input_State\UnlockControls)
              FlushPreferenceBuffers()
              
            Case #Itm_Load
              TempString = OpenFileRequester("Chordian>Load machine state...", "", "JSON (*.json)|*.json|All Files (*.*)|*.*", 0)
              If TempString
                If LoadJSON(#JSON_Main, TempString)
                  ResetMachine()
                  ResetInput()
                  
                  ExtractJSONStructure(JSONValue(#JSON_Main), @TempState, Machine_State_Save)
                  FreeJSON(#JSON_Main)
                  
                  Chordian\Machine_State\Value_Master_Button_Power_OnOff = TempState\Value_Master_Button_Power_OnOff
                  Chordian\Machine_State\Value_Master_Knob_Volume = TempState\Value_Master_Knob_Volume
                  
                  Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1 = TempState\Value_Level_Knob_Volume_Harp_1
                  Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2 = TempState\Value_Level_Knob_Volume_Harp_2
                  Chordian\Machine_State\Value_Level_Knob_Sustain = TempState\Value_Level_Knob_Sustain
                  Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard = TempState\Value_Level_Knob_Volume_Keyboard
                  Chordian\Machine_State\Value_Level_Knob_Volume_Chords = TempState\Value_Level_Knob_Volume_Chords
                  
                  Chordian\Machine_State\Value_Rhythm_Button_Alternate_OnOff = TempState\Value_Rhythm_Button_Alternate_OnOff
                  Chordian\Machine_State\Value_Rhythm_Button_Pattern = TempState\Value_Rhythm_Button_Pattern
                  Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff = TempState\Value_Rhythm_Button_AutoBassSync_OnOff
                  Chordian\Machine_State\Value_Rhythm_Knob_Tempo = TempState\Value_Rhythm_Knob_Tempo
                  Chordian\Machine_State\Value_Rhythm_Knob_Volume = TempState\Value_Rhythm_Knob_Volume
                  
                  Chordian\Machine_State\Value_Memory_Button_Memory_OnOff = TempState\Value_Memory_Button_Memory_OnOff
                  Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff = TempState\Value_Memory_Button_Playback_Record_OnOff
                  Chordian\Machine_State\Value_Memory_Button_Repeat_Delete = TempState\Value_Memory_Button_Repeat_Delete
                  Chordian\Machine_State\Value_Memory_Button_Playback_Enter = TempState\Value_Memory_Button_Playback_Enter
                  
                  Chordian\Machine_State\Value_Circuit_Knob_Tuning = TempState\Value_Circuit_Knob_Tuning
                  
                  Chordian\Machine_State\Value_Internal_Keyboard_Transpose = TempState\Value_Internal_Keyboard_Transpose
                  Chordian\Machine_State\Value_Internal_Memory_Position_Current = TempState\Value_Internal_Memory_Position_Current
                  Chordian\Machine_State\Value_Internal_Memory_Position_Skip = TempState\Value_Internal_Memory_Position_Skip
                  Chordian\Machine_State\Value_Internal_Transpose = TempState\Value_Internal_Transpose
                  
                  Chordian\Machine_State\Value_External_ChordiateMode = TempState\Value_External_ChordiateMode
                  
                  If ArraySize(TempState\Internal_Memory_Chord_Note(), 1) = ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note(), 1) And
                     ArraySize(TempState\Internal_Memory_Chord_Note(), 2) = ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note(), 2)
                    CopyArray(TempState\Internal_Memory_Chord_Note(), Chordian\Machine_State\Internal_Memory_Chord_Note())
                  Else
                    If (ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note(), 1)+1)*(ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note(), 2)+1) <= (ArraySize(TempState\Internal_Memory_Chord_Note(), 1)+1)*(ArraySize(TempState\Internal_Memory_Chord_Note(), 2)+1)
                      CopyMemory(@TempState\Internal_Memory_Chord_Note(), @Chordian\Machine_State\Internal_Memory_Chord_Note(), SizeOf(Byte)*(ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note(), 1)+1)*(ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note(), 2)+1))
                    Else
                      CopyMemory(@TempState\Internal_Memory_Chord_Note(), @Chordian\Machine_State\Internal_Memory_Chord_Note(), SizeOf(Byte)*(ArraySize(TempState\Internal_Memory_Chord_Note(), 1)+1)*(ArraySize(TempState\Internal_Memory_Chord_Note(), 2)+1))
                    EndIf
                  EndIf
                  
                  
                  If ArraySize(TempState\Data_Chords(), 1) = ArraySize(Chordian\Machine_State\Data_Chords(), 1) And
                     ArraySize(TempState\Data_Chords(), 2) = ArraySize(Chordian\Machine_State\Data_Chords(), 2)
                    CopyArray(TempState\Data_Chords(), Chordian\Machine_State\Data_Chords())
                  Else
                    If (ArraySize(Chordian\Machine_State\Data_Chords(), 1)+1)*(ArraySize(Chordian\Machine_State\Data_Chords(), 2)+1) <= (ArraySize(TempState\Data_Chords(), 1)+1)*(ArraySize(TempState\Data_Chords(), 2)+1)
                      CopyMemory(@TempState\Data_Chords(), @Chordian\Machine_State\Data_Chords(), SizeOf(Byte)*(ArraySize(Chordian\Machine_State\Data_Chords(), 1)+1)*(ArraySize(Chordian\Machine_State\Data_Chords(), 2)+1))
                    Else
                      CopyMemory(@TempState\Data_Chords(), @Chordian\Machine_State\Data_Chords(), SizeOf(Byte)*(ArraySize(TempState\Data_Chords(), 1)+1)*(ArraySize(TempState\Data_Chords(), 2)+1))
                    EndIf
                  EndIf
                  
                  If ArraySize(TempState\Data_Patterns(), 1) = ArraySize(Chordian\Machine_State\Data_Patterns(), 1) And
                     ArraySize(TempState\Data_Patterns(), 2) = ArraySize(Chordian\Machine_State\Data_Patterns(), 2) And
                     ArraySize(TempState\Data_Patterns(), 3) = ArraySize(Chordian\Machine_State\Data_Patterns(), 3) And
                     ArraySize(TempState\Data_Patterns(), 4) = ArraySize(Chordian\Machine_State\Data_Patterns(), 4) And
                     ArraySize(TempState\Data_Patterns(), 5) = ArraySize(Chordian\Machine_State\Data_Patterns(), 5)
                    CopyArray(TempState\Data_Patterns(), Chordian\Machine_State\Data_Patterns())
                  Else
                    If (ArraySize(Chordian\Machine_State\Data_Patterns(), 1)+1)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 2)+1)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 3)+1)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 4)+1)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 5)+1) <= (ArraySize(TempState\Data_Patterns(), 1)+1)*(ArraySize(TempState\Data_Patterns(), 2)+1)*(ArraySize(TempState\Data_Patterns(), 3)+1)*(ArraySize(TempState\Data_Patterns(), 4)+1)*(ArraySize(TempState\Data_Patterns(), 5)+1)
                      CopyMemory(@TempState\Data_Patterns(), @Chordian\Machine_State\Data_Patterns(), SizeOf(Byte)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 1)+1)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 2)+1)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 3)+1)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 4)+1)*(ArraySize(Chordian\Machine_State\Data_Patterns(), 5)+1))
                    Else
                      CopyMemory(@TempState\Data_Patterns(), @Chordian\Machine_State\Data_Patterns(), SizeOf(Byte)*(ArraySize(TempState\Data_Patterns(), 1)+1)*(ArraySize(TempState\Data_Patterns(), 2)+1)*(ArraySize(TempState\Data_Patterns(), 3)+1)*(ArraySize(TempState\Data_Patterns(), 4)+1)*(ArraySize(TempState\Data_Patterns(), 5)+1))
                    EndIf
                  EndIf
                  
                  AutofillChords()
                  AutofillDerivedNotes()
                  
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTuning, 1, 0)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  SetMenuItemState(#Men_Main, #Itm_ChordiateMode, Chordian\Machine_State\Value_External_ChordiateMode)
                  
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_None, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_None))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Single, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Single))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Double, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Double))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Chord, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Chord))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Spread, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Spread))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Octave, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Octave))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Full, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Full))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Reverse, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Reverse))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Mirror, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Mirror))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Segment, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Segment))
                  
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_None, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_None))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Single, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Single))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Double, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Double))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Chord, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Chord))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Spread, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Spread))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Octave, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Octave))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Full, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Full))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Reverse, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Reverse))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Mirror, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Mirror))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Segment, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Segment))
                  
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_None, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_None))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Single, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Single))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Double, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Double))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Chord, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Chord))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Spread, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Spread))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Octave, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Octave))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Full, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Full))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Reverse, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Reverse))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Mirror, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Mirror))
                  SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Segment, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Segment))
                  
                  PauseThread(Chordian\RepaintHandler_Thread)
                  ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
                  ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
                  ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
                  ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
                  ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                  ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                  ResumeThread(Chordian\RepaintHandler_Thread)
                EndIf
                
              EndIf
              
            Case #Itm_Save
              TempString = SaveFileRequester("Chordian>Save machine state...", "", "JSON (*.json)|*.json|All Files (*.*)|*.*", 0)
              If TempString
                Select FileSize(TempString)
                  Case -2
                    MessageRequester("Chordian>Error", "Cannot save file "+TempString+", entry occupied by folder.")
                  Case -1
                    CreateJSON(#JSON_Main)
                    InsertJSONStructure(JSONValue(#JSON_Main), @Chordian\Machine_State, Machine_State_Save)
                    SaveJSON(#JSON_Main, TempString)
                    FreeJSON(#JSON_Main)
                  Default
                    Select MessageRequester("Chordian>Warning", "File "+TempString+" already exists."+#CRLF$+"Do you want to overwrite it?", #PB_MessageRequester_YesNoCancel)
                      Case #PB_MessageRequester_Yes
                        CreateJSON(#JSON_Main)
                        InsertJSONStructure(JSONValue(#JSON_Main), @Chordian\Machine_State, Machine_State_Save)
                        SaveJSON(#JSON_Main, TempString)
                        FreeJSON(#JSON_Main)
                      Case #PB_MessageRequester_Cancel
                        PostEvent(#PB_Event_Menu, #Win_Main, #Itm_Save)
                    EndSelect
                EndSelect
              EndIf
              
            Case #Itm_ResetState
              ResetMachine()
              ResetInput()
              
              SetMenuItemState(#Men_Main, #Itm_ChordiateMode, Chordian\Machine_State\Value_External_ChordiateMode)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            Case #Itm_Exit
              PostEvent(#PB_Event_CloseWindow, #Win_Main, 0)
              
            Case #Itm_Tuning
              TempString = InputRequester("Chordian>Master>Tuning", "Insert new Tuning. (0.5)", StrF(Chordian\Machine_State\Value_Circuit_Knob_Tuning))
              If Len(TempString) > 0
                Chordian\Machine_State\Value_Circuit_Knob_Tuning = ValF(TempString)
              EndIf
              
              Select Chordian\Machine_State\Value_External_ChordiateMode
                Case 1
                  KeepInRange(Chordian\Machine_State\Value_Circuit_Knob_Tuning, -1.0, 2.0)
                Default
                  KeepInRange(Chordian\Machine_State\Value_Circuit_Knob_Tuning, 0.0, 1.0)
              EndSelect
              
              ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTuning, 1, 0)
              ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
              
            Case #Itm_StrumMode_Primary_First To #Itm_StrumMode_Primary_Last
              Select EventMenu()
                Case #Itm_StrumMode_Primary_None
                  Chordian\Input_State\PrimaryStrumMode = #Str_None
                Case #Itm_StrumMode_Primary_Single
                  Chordian\Input_State\PrimaryStrumMode = #Str_Single
                Case #Itm_StrumMode_Primary_Double
                  Chordian\Input_State\PrimaryStrumMode = #Str_Double
                Case #Itm_StrumMode_Primary_Chord
                  Chordian\Input_State\PrimaryStrumMode = #Str_Chord
                Case #Itm_StrumMode_Primary_Spread
                  Chordian\Input_State\PrimaryStrumMode = #Str_Spread
                Case #Itm_StrumMode_Primary_Octave
                  Chordian\Input_State\PrimaryStrumMode = #Str_Octave
                Case #Itm_StrumMode_Primary_Full
                  Chordian\Input_State\PrimaryStrumMode = #Str_Full
                Case #Itm_StrumMode_Primary_Reverse
                  Chordian\Input_State\PrimaryStrumMode = #Str_Reverse
                Case #Itm_StrumMode_Primary_Mirror
                  Chordian\Input_State\PrimaryStrumMode = #Str_Mirror
                Case #Itm_StrumMode_Primary_Segment
                  Chordian\Input_State\PrimaryStrumMode = #Str_Segment
              EndSelect
              
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_None, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_None))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Single, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Single))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Double, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Double))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Chord, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Chord))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Spread, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Spread))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Octave, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Octave))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Full, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Full))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Reverse, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Reverse))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Mirror, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Mirror))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Primary_Segment, Bool(Chordian\Input_State\PrimaryStrumMode = #Str_Segment))
              
            Case #Itm_StrumMode_Secondary_First To #Itm_StrumMode_Secondary_Last
              Select EventMenu()
                Case #Itm_StrumMode_Secondary_None
                  Chordian\Input_State\SecondaryStrumMode = #Str_None
                Case #Itm_StrumMode_Secondary_Single
                  Chordian\Input_State\SecondaryStrumMode = #Str_Single
                Case #Itm_StrumMode_Secondary_Double
                  Chordian\Input_State\SecondaryStrumMode = #Str_Double
                Case #Itm_StrumMode_Secondary_Chord
                  Chordian\Input_State\SecondaryStrumMode = #Str_Chord
                Case #Itm_StrumMode_Secondary_Spread
                  Chordian\Input_State\SecondaryStrumMode = #Str_Spread
                Case #Itm_StrumMode_Secondary_Octave
                  Chordian\Input_State\SecondaryStrumMode = #Str_Octave
                Case #Itm_StrumMode_Secondary_Full
                  Chordian\Input_State\SecondaryStrumMode = #Str_Full
                Case #Itm_StrumMode_Secondary_Reverse
                  Chordian\Input_State\SecondaryStrumMode = #Str_Reverse
                Case #Itm_StrumMode_Secondary_Mirror
                  Chordian\Input_State\SecondaryStrumMode = #Str_Mirror
                Case #Itm_StrumMode_Secondary_Segment
                  Chordian\Input_State\SecondaryStrumMode = #Str_Segment
              EndSelect
              
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_None, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_None))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Single, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Single))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Double, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Double))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Chord, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Chord))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Spread, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Spread))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Octave, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Octave))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Full, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Full))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Reverse, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Reverse))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Mirror, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Mirror))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Secondary_Segment, Bool(Chordian\Input_State\SecondaryStrumMode = #Str_Segment))
              
            Case #Itm_StrumMode_Tertiary_First To #Itm_StrumMode_Tertiary_Last
              Select EventMenu()
                Case #Itm_StrumMode_Tertiary_None
                  Chordian\Input_State\TertiaryStrumMode = #Str_None
                Case #Itm_StrumMode_Tertiary_Single
                  Chordian\Input_State\TertiaryStrumMode = #Str_Single
                Case #Itm_StrumMode_Tertiary_Double
                  Chordian\Input_State\TertiaryStrumMode = #Str_Double
                Case #Itm_StrumMode_Tertiary_Chord
                  Chordian\Input_State\TertiaryStrumMode = #Str_Chord
                Case #Itm_StrumMode_Tertiary_Spread
                  Chordian\Input_State\TertiaryStrumMode = #Str_Spread
                Case #Itm_StrumMode_Tertiary_Octave
                  Chordian\Input_State\TertiaryStrumMode = #Str_Octave
                Case #Itm_StrumMode_Tertiary_Full
                  Chordian\Input_State\TertiaryStrumMode = #Str_Full
                Case #Itm_StrumMode_Tertiary_Reverse
                  Chordian\Input_State\TertiaryStrumMode = #Str_Reverse
                Case #Itm_StrumMode_Tertiary_Mirror
                  Chordian\Input_State\TertiaryStrumMode = #Str_Mirror
                Case #Itm_StrumMode_Tertiary_Segment
                  Chordian\Input_State\TertiaryStrumMode = #Str_Segment
              EndSelect
              
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_None, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_None))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Single, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Single))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Double, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Double))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Chord, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Chord))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Spread, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Spread))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Octave, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Octave))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Full, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Full))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Reverse, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Reverse))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Mirror, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Mirror))
              SetMenuItemState(#Men_Main, #Itm_StrumMode_Tertiary_Segment, Bool(Chordian\Input_State\TertiaryStrumMode = #Str_Segment))
              
              
            Case #Itm_ChordiateMode
              SetMenuItemState(#Men_Main, #Itm_ChordiateMode, Bool(Not GetMenuItemState(#Men_Main, #Itm_ChordiateMode)))
              Chordian\Machine_State\Value_External_ChordiateMode = GetMenuItemState(#Men_Main, #Itm_ChordiateMode)
              
            Case #Itm_ChordEdit
              ;---ChordEdit
              If MessageRequester("Chordian>Warning", "You are about to enter the Chord Editor."+#CRLF$+"Any changes are applied immediately."+#CRLF$+"Do you wish to continue?", #PB_MessageRequester_YesNo) = #PB_MessageRequester_Yes
                DisableWindow(#Win_Main, 1)
                If IsWindow(#Win_ChordEdit)
                  HideWindow(#Win_ChordEdit, 0, #PB_Window_WindowCentered)
                Else
                  If Not OpenWindow(#Win_ChordEdit, 0, 0, 628, 300, "Chordian>Chord Editor", #PB_Window_SystemMenu | #PB_Window_WindowCentered, WindowID(#Win_Main))
                    MessageRequester("Chordian>Error", "Chord Editor could not be initialized.")
                    DisableWindow(#Win_Main, 0)
                    SetActiveGadget(#Gad_Canvas)
                    Continue
                  EndIf
                  
                  ButtonGadget(#Gad_ChordEdit_Button_Refresh, 5, 10, 50, 20, "Refresh")
                  ButtonGadget(#Gad_ChordEdit_Button_Import, 464, 10, 70, 20, "Import...")
                  ButtonGadget(#Gad_ChordEdit_Button_Export, 539, 10, 70, 20, "Export...")
                  
                  TextGadget(#Gad_ChordEdit_Text_Maj, 40, 35, 25, 20, "Maj")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Maj+i, 30+36*i, 60-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Maj+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Maj+3, 30+36*2, 60, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Maj+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Min, 40, 95, 25, 20, "Min")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Min+i, 30+36*i, 120-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Min+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Min+3, 30+36*2, 120, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Min+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_7th, 40, 155, 25, 20, "7th")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_7th+i, 30+36*i, 180-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_7th+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_7th+3, 30+36*2, 180, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_7th+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Dim, 170, 35, 25, 20, "Dim")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Dim+i, 160+36*i, 60-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Dim+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Dim+3, 160+36*2, 60, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Dim+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Ma7, 170, 95, 25, 20, "Ma7")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Ma7+i, 160+36*i, 120-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Ma7+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Ma7+3, 160+36*2, 120, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Ma7+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Mi7, 170, 155, 25, 20, "Mi7")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Mi7+i, 160+36*i, 180-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Mi7+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Mi7+3, 160+36*2, 180, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Mi7+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Aug, 105, 215, 25, 20, "Aug")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Aug+i, 95+36*i, 240-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Aug+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Aug+3, 95+36*2, 240, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Aug+3)
                  
                  ;next
                  TextGadget(#Gad_ChordEdit_Text_Chordiate, 280, 140, 75, 20, ">Chordiate>")
                  
                  TextGadget(#Gad_ChordEdit_Text_Ad9, 370, 35, 25, 20, "Ad9")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Ad9+i, 360+36*i, 60-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Ad9+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Ad9+3, 360+36*2, 60, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Ad9+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Su4, 370, 95, 25, 20, "Su4")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Su4+i, 360+36*i, 120-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Su4+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Su4+3, 360+36*2, 120, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Su4+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Ad2, 370, 155, 25, 20, "Ad2")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Ad2+i, 360+36*i, 180-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Ad2+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Ad2+3, 360+36*2, 180, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Ad2+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_As2, 500, 35, 25, 20, "As2")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_As2+i, 490+36*i, 60-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_As2+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_As2+3, 490+36*2, 60, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_As2+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Ac4, 500, 95, 25, 20, "Ac4")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Ac4+i, 490+36*i, 120-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Ac4+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Ac4+3, 490+36*2, 120, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Ac4+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Mc4, 500, 155, 25, 20, "Mc4")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Mc4+i, 490+36*i, 180-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Mc4+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Mc4+3, 490+36*2, 180, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Mc4+3)
                  
                  TextGadget(#Gad_ChordEdit_Text_Chr, 435, 215, 25, 20, "Chr")
                  For i = 0 To 2
                    ComboBoxGadget(#Gad_ChordEdit_Row_Chr+i, 425+36*i, 240-12.5*i, 36, 25, #PB_ComboBox_Image)
                    AddNoteItems(#Gad_ChordEdit_Row_Chr+i)
                  Next
                  ComboBoxGadget(#Gad_ChordEdit_Row_Chr+3, 425+36*2, 240, 36, 25, #PB_ComboBox_Image)
                  AddChordItems(#Gad_ChordEdit_Row_Chr+3)
                  
                EndIf
                
                PostEvent(#PB_Event_Gadget, #Win_ChordEdit, #Gad_ChordEdit_Button_Refresh)
                
                ;----ChordEdit Events
                Repeat
                  Event = WaitWindowEvent()
                  If EventWindow() = #Win_ChordEdit
                    Select Event
                      Case #PB_Event_Gadget
                        Select EventGadget()
                          Case #Gad_ChordEdit_Button_Refresh
                            For i = 0 To 3
                              
                              SetGadgetState(#Gad_ChordEdit_Row_Maj+i, Chordian\Machine_State\Data_Chords(#Chord_Maj, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Min+i, Chordian\Machine_State\Data_Chords(#Chord_Min, i))
                              SetGadgetState(#Gad_ChordEdit_Row_7th+i, Chordian\Machine_State\Data_Chords(#Chord_7th, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Dim+i, Chordian\Machine_State\Data_Chords(#Chord_Dim, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Ma7+i, Chordian\Machine_State\Data_Chords(#Chord_Ma7, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Mi7+i, Chordian\Machine_State\Data_Chords(#Chord_Mi7, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Aug+i, Chordian\Machine_State\Data_Chords(#Chord_Aug, i))
                              
                              SetGadgetState(#Gad_ChordEdit_Row_Ad9+i, Chordian\Machine_State\Data_Chords(#Chord_Ad9, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Su4+i, Chordian\Machine_State\Data_Chords(#Chord_Su4, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Ad2+i, Chordian\Machine_State\Data_Chords(#Chord_Ad2, i))
                              SetGadgetState(#Gad_ChordEdit_Row_As2+i, Chordian\Machine_State\Data_Chords(#Chord_As2, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Ac4+i, Chordian\Machine_State\Data_Chords(#Chord_Ac4, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Mc4+i, Chordian\Machine_State\Data_Chords(#Chord_Mc4, i))
                              SetGadgetState(#Gad_ChordEdit_Row_Chr+i, Chordian\Machine_State\Data_Chords(#Chord_Chr, i))
                              
                            Next
                            
                          Case #Gad_ChordEdit_Button_Import
                            TempString = InputRequester("Chordian>Chord Editor>Import", "Input the BASE64 to apply to the current chord selection.", "")
                            If TempString
                              *TempPointer = AllocateMemory(StringByteLength(TempString, #PB_Ascii) + 1)
                              If *TempPointer
                                PokeS(*TempPointer, TempString, StringByteLength(TempString, #PB_Ascii), #PB_Ascii)
                                CompilerIf #PB_Compiler_Version >= 600
                                  Base64DecoderBuffer(*TempPointer, MemorySize(*TempPointer), @Chordian\Machine_State\Data_Chords(), SizeOf(Byte)*(#Chord_Last+1)*4)
                                CompilerElse
                                  Base64Decoder(*TempPointer, MemorySize(*TempPointer), @Chordian\Machine_State\Data_Chords(), SizeOf(Byte)*(#Chord_Last+1)*4)
                                CompilerEndIf
                                FreeMemory(*TempPointer)
                              EndIf
                            EndIf
                            
                            PostEvent(#PB_Event_Gadget, #Win_ChordEdit, #Gad_ChordEdit_Button_Refresh)
                            
                          Case #Gad_ChordEdit_Button_Export
                            *TempPointer = AllocateMemory(SizeOf(Byte)*(#Chord_Last+1)*4*2)
                            If *TempPointer
                              CompilerIf #PB_Compiler_Version >= 600
                                Base64EncoderBuffer(@Chordian\Machine_State\Data_Chords(), SizeOf(Byte)*(#Chord_Last+1)*4, *TempPointer, MemorySize(*TempPointer))
                              CompilerElse
                                Base64Encoder(@Chordian\Machine_State\Data_Chords(), SizeOf(Byte)*(#Chord_Last+1)*4, *TempPointer, MemorySize(*TempPointer))
                              CompilerEndIf
                              InputRequester("Chordian>Chord Editor>Export", "This is the BASE64 string for the current chord selection:", PeekS(*TempPointer, -1, #PB_Ascii))
                              FreeMemory(*TempPointer)
                            EndIf
                            
                          Case #Gad_ChordEdit_Row_Maj To #Gad_ChordEdit_Row_Maj+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Maj, i) = GetGadgetState(#Gad_ChordEdit_Row_Maj+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Min To #Gad_ChordEdit_Row_Min+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Min, i) = GetGadgetState(#Gad_ChordEdit_Row_Min+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_7th To #Gad_ChordEdit_Row_7th+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_7th, i) = GetGadgetState(#Gad_ChordEdit_Row_7th+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Dim To #Gad_ChordEdit_Row_Dim+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Dim, i) = GetGadgetState(#Gad_ChordEdit_Row_Dim+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Ma7 To #Gad_ChordEdit_Row_Ma7+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Ma7, i) = GetGadgetState(#Gad_ChordEdit_Row_Ma7+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Mi7 To #Gad_ChordEdit_Row_Mi7+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Mi7, i) = GetGadgetState(#Gad_ChordEdit_Row_Mi7+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Aug To #Gad_ChordEdit_Row_Aug+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Aug, i) = GetGadgetState(#Gad_ChordEdit_Row_Aug+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Ad9 To #Gad_ChordEdit_Row_Ad9+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Ad9, i) = GetGadgetState(#Gad_ChordEdit_Row_Ad9+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Su4 To #Gad_ChordEdit_Row_Su4+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Su4, i) = GetGadgetState(#Gad_ChordEdit_Row_Su4+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Ad2 To #Gad_ChordEdit_Row_Ad2+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Ad2, i) = GetGadgetState(#Gad_ChordEdit_Row_Ad2+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_As2 To #Gad_ChordEdit_Row_As2+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_As2, i) = GetGadgetState(#Gad_ChordEdit_Row_As2+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Ac4 To #Gad_ChordEdit_Row_Ac4+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Ac4, i) = GetGadgetState(#Gad_ChordEdit_Row_Ac4+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Mc4 To #Gad_ChordEdit_Row_Mc4+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Mc4, i) = GetGadgetState(#Gad_ChordEdit_Row_Mc4+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                          Case #Gad_ChordEdit_Row_Chr To #Gad_ChordEdit_Row_Chr+3
                            For i = 0 To 3
                              Chordian\Machine_State\Data_Chords(#Chord_Chr, i) = GetGadgetState(#Gad_ChordEdit_Row_Chr+i)
                            Next
                            
                            AutofillChords()
                            AutofillDerivedNotes()
                            
                            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                            
                        EndSelect
                        
                      Case #PB_Event_CloseWindow
                        HideWindow(#Win_ChordEdit, 1)
                        Break
                        
                    EndSelect
                  EndIf
                ForEver
                
              EndIf
              
              DisableWindow(#Win_Main, 0)
              SetActiveGadget(#Gad_Canvas)
              
            Case #Itm_PatEdit
              ;---PatEdit
              If MessageRequester("Chordian>Warning", "You are about to enter the Pattern Editor."+#CRLF$+"Any changes are applied immediately."+#CRLF$+"Do you wish to continue?", #PB_MessageRequester_YesNo) = #PB_MessageRequester_Yes
                DisableWindow(#Win_Main, 1)
                If IsWindow(#Win_PatEdit)
                  HideWindow(#Win_PatEdit, 0, #PB_Window_WindowCentered)
                Else
                  If Not OpenWindow(#Win_PatEdit, 0, 0, 680, 580, "Chordian>Pattern Editor", #PB_Window_SystemMenu | #PB_Window_WindowCentered, WindowID(#Win_Main))
                    MessageRequester("Chordian>Error", "Pattern Editor could not be initialized.")
                    DisableWindow(#Win_Main, 0)
                    SetActiveGadget(#Gad_Canvas)
                    Continue
                  EndIf
                  
                  ComboBoxGadget(#Gad_PatEdit_Select_Alternate, 60, 10, 150, 20)
                  AddGadgetItem(#Gad_PatEdit_Select_Alternate, -1, "Bank 1")
                  AddGadgetItem(#Gad_PatEdit_Select_Alternate, -1, "Bank 2")
                  
                  SetGadgetState(#Gad_PatEdit_Select_Alternate, 0)
                  
                  ComboBoxGadget(#Gad_PatEdit_Select_Pattern, 212, 10, 150, 20)
                  AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Rock 1 | March")
                  AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Rock 2 | Tango")
                  AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Disco | Blues")
                  AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Latin | Swing")
                  AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Country | Waltz")
                  
                  SetGadgetState(#Gad_PatEdit_Select_Pattern, 0)
                  
                  ComboBoxGadget(#Gad_PatEdit_Select_Note, 364, 10, 150, 20)
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "All")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "Scaled")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "C#/Db")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "G#/Ab")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "D#/Eb")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "A#/Bb")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "F")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "C")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "G")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "D")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "A")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "E")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "B")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "F#/Gb")
                  AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "Ignore")
                  
                  SetGadgetState(#Gad_PatEdit_Select_Note, 1)
                  
                  ButtonGadget(#Gad_PatEdit_Button_Refresh, 5, 10, 50, 20, "Refresh")
                  
                  ButtonGadget(#Gad_PatEdit_Button_Import, 516, 10, 70, 20, "Import...")
                  ButtonGadget(#Gad_PatEdit_Button_Export, 591, 10, 70, 20, "Export...")
                  
                  TextGadget(#Gad_PatEdit_Text_0, 60, 35, 55, 20, "|  0")
                  TextGadget(#Gad_PatEdit_Text_4, 212, 35, 55, 20, "|  4")
                  TextGadget(#Gad_PatEdit_Text_8, 364, 35, 55, 20, "|  8")
                  TextGadget(#Gad_PatEdit_Text_12, 516, 35, 55, 20, "| 12")
                  
                  
                  TextGadget(#Gad_PatEdit_Text_Frequency, 10, 70, 50, 25, "Frequen.")
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Frequency+i, 60+36*i+(i/4)*8, 55, 36, 25, #PB_ComboBox_Image)
                  Next
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Frequency+i+16, 60+36*i+(i/4)*8, 80, 36, 25, #PB_ComboBox_Image)
                  Next
                  
                  For i = 0 To 31
                    AddGadgetItem(#Gad_PatEdit_Row_Frequency+i, -1, "1", ImageID(#Img_UI_Note_1))
                    AddGadgetItem(#Gad_PatEdit_Row_Frequency+i, -1, "2", ImageID(#Img_UI_Note_2))
                    AddGadgetItem(#Gad_PatEdit_Row_Frequency+i, -1, "3", ImageID(#Img_UI_Note_3))
                    AddGadgetItem(#Gad_PatEdit_Row_Frequency+i, -1, "4", ImageID(#Img_UI_Note_4))
                  Next
                  
                  
                  TextGadget(#Gad_PatEdit_Text_Bass, 10, 135, 50, 25, "Bass")
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Bass+i, 60+36*i+(i/4)*8, 120, 36, 25, #PB_ComboBox_Image)
                  Next
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Bass+i+16, 60+36*i+(i/4)*8, 145, 36, 25, #PB_ComboBox_Image)
                  Next
                  
                  For i = 0 To 31
                    AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "None", ImageID(#Img_UI_Curve_None))
                    AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Trigger", ImageID(#Img_UI_Curve_Trigger))
                    AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Attack", ImageID(#Img_UI_Curve_Attack))
                    AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Decay", ImageID(#Img_UI_Curve_Decay))
                    AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Sustain", ImageID(#Img_UI_Curve_Sustain))
                    AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Release", ImageID(#Img_UI_Curve_Release))
                    AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Oneshot", ImageID(#Img_UI_Curve_Oneshot))
                    AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Ignore", ImageID(#Img_UI_Curve_Ignore))
                  Next
                  
                  
                  TextGadget(#Gad_PatEdit_Text_Chords, 10, 200, 50, 25, "Chords")
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Chords+i, 60+36*i+(i/4)*8, 185, 36, 25, #PB_ComboBox_Image)
                  Next
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Chords+i+16, 60+36*i+(i/4)*8, 210, 36, 25, #PB_ComboBox_Image)
                  Next
                  
                  For i = 0 To 31
                    AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "None", ImageID(#Img_UI_Curve_None))
                    AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Trigger", ImageID(#Img_UI_Curve_Trigger))
                    AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Attack", ImageID(#Img_UI_Curve_Attack))
                    AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Decay", ImageID(#Img_UI_Curve_Decay))
                    AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Sustain", ImageID(#Img_UI_Curve_Sustain))
                    AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Release", ImageID(#Img_UI_Curve_Release))
                    AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Oneshot", ImageID(#Img_UI_Curve_Oneshot))
                    AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Ignore", ImageID(#Img_UI_Curve_Ignore))
                  Next
                  
                  
                  TextGadget(#Gad_PatEdit_Text_Drum_BD, 10, 265, 50, 25, "BD")
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_BD+i, 60+36*i+(i/4)*8, 250, 36, 25, #PB_ComboBox_Image)
                  Next
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_BD+i+16, 60+36*i+(i/4)*8, 275, 36, 25, #PB_ComboBox_Image)
                  Next
                  
                  For i = 0 To 31
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "None", ImageID(#Img_UI_Curve_None))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Trigger", ImageID(#Img_UI_Curve_Trigger))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Attack", ImageID(#Img_UI_Curve_Attack))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Decay", ImageID(#Img_UI_Curve_Decay))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Sustain", ImageID(#Img_UI_Curve_Sustain))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Release", ImageID(#Img_UI_Curve_Release))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Oneshot", ImageID(#Img_UI_Curve_Oneshot))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Ignore", ImageID(#Img_UI_Curve_Ignore))
                  Next
                  
                  
                  TextGadget(#Gad_PatEdit_Text_Drum_Click, 10, 330, 50, 25, "Click")
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_Click+i, 60+36*i+(i/4)*8, 315, 36, 25, #PB_ComboBox_Image)
                  Next
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_Click+i+16, 60+36*i+(i/4)*8, 340, 36, 25, #PB_ComboBox_Image)
                  Next
                  
                  For i = 0 To 31
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "None", ImageID(#Img_UI_Curve_None))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Trigger", ImageID(#Img_UI_Curve_Trigger))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Attack", ImageID(#Img_UI_Curve_Attack))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Decay", ImageID(#Img_UI_Curve_Decay))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Sustain", ImageID(#Img_UI_Curve_Sustain))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Release", ImageID(#Img_UI_Curve_Release))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Oneshot", ImageID(#Img_UI_Curve_Oneshot))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Ignore", ImageID(#Img_UI_Curve_Ignore))
                  Next
                  
                  
                  TextGadget(#Gad_PatEdit_Text_Drum_HiHat, 10, 395, 50, 25, "HiHat")
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_HiHat+i, 60+36*i+(i/4)*8, 380, 36, 25, #PB_ComboBox_Image)
                  Next
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_HiHat+i+16, 60+36*i+(i/4)*8, 405, 36, 25, #PB_ComboBox_Image)
                  Next
                  
                  For i = 0 To 31
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "None", ImageID(#Img_UI_Curve_None))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Trigger", ImageID(#Img_UI_Curve_Trigger))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Attack", ImageID(#Img_UI_Curve_Attack))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Decay", ImageID(#Img_UI_Curve_Decay))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Sustain", ImageID(#Img_UI_Curve_Sustain))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Release", ImageID(#Img_UI_Curve_Release))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Oneshot", ImageID(#Img_UI_Curve_Oneshot))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Ignore", ImageID(#Img_UI_Curve_Ignore))
                  Next
                  
                  
                  TextGadget(#Gad_PatEdit_Text_Drum_Ride, 10, 460, 50, 25, "Ride")
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_Ride+i, 60+36*i+(i/4)*8, 445, 36, 25, #PB_ComboBox_Image)
                  Next
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_Ride+i+16, 60+36*i+(i/4)*8, 470, 36, 25, #PB_ComboBox_Image)
                  Next
                  
                  For i = 0 To 31
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "None", ImageID(#Img_UI_Curve_None))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Trigger", ImageID(#Img_UI_Curve_Trigger))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Attack", ImageID(#Img_UI_Curve_Attack))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Decay", ImageID(#Img_UI_Curve_Decay))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Sustain", ImageID(#Img_UI_Curve_Sustain))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Release", ImageID(#Img_UI_Curve_Release))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Oneshot", ImageID(#Img_UI_Curve_Oneshot))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Ignore", ImageID(#Img_UI_Curve_Ignore))
                  Next
                  
                  
                  TextGadget(#Gad_PatEdit_Text_Drum_Snare, 10, 525, 50, 25, "Snare")
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_Snare+i, 60+36*i+(i/4)*8, 510, 36, 25, #PB_ComboBox_Image)
                  Next
                  For i = 0 To 15
                    ComboBoxGadget(#Gad_PatEdit_Row_Drum_Snare+i+16, 60+36*i+(i/4)*8, 535, 36, 25, #PB_ComboBox_Image)
                  Next
                  
                  For i = 0 To 31
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "None", ImageID(#Img_UI_Curve_None))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Trigger", ImageID(#Img_UI_Curve_Trigger))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Attack", ImageID(#Img_UI_Curve_Attack))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Decay", ImageID(#Img_UI_Curve_Decay))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Sustain", ImageID(#Img_UI_Curve_Sustain))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Release", ImageID(#Img_UI_Curve_Release))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Oneshot", ImageID(#Img_UI_Curve_Oneshot))
                    AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Ignore", ImageID(#Img_UI_Curve_Ignore))
                  Next
                EndIf
                
                PostEvent(#PB_Event_Gadget, #Win_PatEdit, #Gad_PatEdit_Button_Refresh)
                
                ;----PatEdit Events
                Repeat
                  Event = WaitWindowEvent()
                  If EventWindow() = #Win_PatEdit
                    Select Event
                      Case #PB_Event_Gadget
                        Select EventGadget()
                          Case #Gad_PatEdit_Button_Refresh
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0, 1
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Frequency+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Frequency))
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Bass+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Bass)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Chords+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Chords)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_BD+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_BD)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_Click+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_Click)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_HiHat+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_HiHat)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_Ride+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_Ride)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_Snare+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_Snare)+1)
                                Next
                                
                              Default
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Frequency+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Frequency))
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Bass+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Bass)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Chords+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Chords)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_BD+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_BD)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_Click+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_Click)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_HiHat+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_HiHat)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_Ride+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_Ride)+1)
                                Next
                                For i = 0 To 31
                                  SetGadgetState(#Gad_PatEdit_Row_Drum_Snare+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_Snare)+1)
                                Next
                            EndSelect
                            
                          Case #Gad_PatEdit_Select_Alternate, #Gad_PatEdit_Select_Pattern, #Gad_PatEdit_Select_Note
                            PostEvent(#PB_Event_Gadget, #Win_PatEdit, #Gad_PatEdit_Button_Refresh)
                            
                          Case #Gad_PatEdit_Button_Import
                            TempString = InputRequester("Chordian>Pattern Editor>Import", "Input the BASE64 to apply to the current pattern.", "")
                            If TempString
                              *TempPointer = AllocateMemory(StringByteLength(TempString, #PB_Ascii)+1)
                              If *TempPointer
                                PokeS(*TempPointer, TempString, StringByteLength(TempString, #PB_Ascii), #PB_Ascii)
                                CompilerIf #PB_Compiler_Version >= 600
                                  Base64DecoderBuffer(*TempPointer, MemorySize(*TempPointer), @Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), 0, 0, 0), SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1))
                                CompilerElse
                                  Base64Decoder(*TempPointer, MemorySize(*TempPointer), @Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), 0, 0, 0), SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1))
                                CompilerEndIf
                                FreeMemory(*TempPointer)
                              EndIf
                            EndIf
                            
                            PostEvent(#PB_Event_Gadget, #Win_PatEdit, #Gad_PatEdit_Button_Refresh)
                            
                          Case #Gad_PatEdit_Button_Export
                            *TempPointer = AllocateMemory(SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1)*2)
                            If *TempPointer
                              CompilerIf #PB_Compiler_Version >= 600
                                Base64EncoderBuffer(@Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), 0, 0, 0), SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1), *TempPointer, MemorySize(*TempPointer))
                              CompilerElse
                                Base64Encoder(@Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), 0, 0, 0), SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1), *TempPointer, MemorySize(*TempPointer))
                              CompilerEndIf
                              InputRequester("Chordian>Pattern Editor>Export", "This is the BASE64 string for the current pattern:", PeekS(*TempPointer, -1, #PB_Ascii))
                              FreeMemory(*TempPointer)
                            EndIf
                            
                          Case #Gad_PatEdit_Row_Frequency To #Gad_PatEdit_Row_Frequency+31
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Frequency) = GetGadgetState(#Gad_PatEdit_Row_Frequency+i)
                                  Next
                                Next
                              Case 1
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Select GetGadgetState(#Gad_PatEdit_Row_Frequency+i)
                                      Case 0, 1
                                        Select n
                                          Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                                            Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Frequency) = 1
                                          Default
                                            Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Frequency) = 0
                                        EndSelect
                                      Default
                                        Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Frequency) = GetGadgetState(#Gad_PatEdit_Row_Frequency+i)
                                    EndSelect
                                  Next
                                Next
                              Default
                                For i = 0 To 31
                                  Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Frequency) = GetGadgetState(#Gad_PatEdit_Row_Frequency+i)
                                Next
                            EndSelect
                            
                          Case #Gad_PatEdit_Row_Bass To #Gad_PatEdit_Row_Bass+31
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0, 1
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Bass) = GetGadgetState(#Gad_PatEdit_Row_Bass+i)-1
                                  Next
                                Next
                              Default
                                For i = 0 To 31
                                  Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Bass) = GetGadgetState(#Gad_PatEdit_Row_Bass+i)-1
                                Next
                            EndSelect
                            
                          Case #Gad_PatEdit_Row_Chords To #Gad_PatEdit_Row_Chords+31
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0, 1
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Chords) = GetGadgetState(#Gad_PatEdit_Row_Chords+i)-1
                                  Next
                                Next
                              Default
                                For i = 0 To 31
                                  Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Chords) = GetGadgetState(#Gad_PatEdit_Row_Chords+i)-1
                                Next
                            EndSelect
                            
                            
                          Case #Gad_PatEdit_Row_Drum_BD To #Gad_PatEdit_Row_Drum_BD+31
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0, 1
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_BD) = GetGadgetState(#Gad_PatEdit_Row_Drum_BD+i)-1
                                  Next
                                Next
                              Default
                                For i = 0 To 31
                                  Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_BD) = GetGadgetState(#Gad_PatEdit_Row_Drum_BD+i)-1
                                Next
                            EndSelect
                            
                            
                          Case #Gad_PatEdit_Row_Drum_Click To #Gad_PatEdit_Row_Drum_Click+31
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0, 1
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_Click) = GetGadgetState(#Gad_PatEdit_Row_Drum_Click+i)-1
                                  Next
                                Next
                              Default
                                For i = 0 To 31
                                  Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_Click) = GetGadgetState(#Gad_PatEdit_Row_Drum_Click+i)-1
                                Next
                            EndSelect
                            
                            
                          Case #Gad_PatEdit_Row_Drum_HiHat To #Gad_PatEdit_Row_Drum_HiHat+31
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0, 1
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_HiHat) = GetGadgetState(#Gad_PatEdit_Row_Drum_HiHat+i)-1
                                  Next
                                Next
                              Default
                                For i = 0 To 31
                                  Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_HiHat) = GetGadgetState(#Gad_PatEdit_Row_Drum_HiHat+i)-1
                                Next
                            EndSelect
                            
                            
                          Case #Gad_PatEdit_Row_Drum_Ride To #Gad_PatEdit_Row_Drum_Ride+31
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0, 1
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_Ride) = GetGadgetState(#Gad_PatEdit_Row_Drum_Ride+i)-1
                                  Next
                                Next
                              Default
                                For i = 0 To 31
                                  Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_Ride) = GetGadgetState(#Gad_PatEdit_Row_Drum_Ride+i)-1
                                Next
                            EndSelect
                            
                            
                          Case #Gad_PatEdit_Row_Drum_Snare To #Gad_PatEdit_Row_Drum_Snare+31
                            Select GetGadgetState(#Gad_PatEdit_Select_Note)
                              Case 0, 1
                                For n = #Note_First To #Note_Last
                                  For i = 0 To 31
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_Snare) = GetGadgetState(#Gad_PatEdit_Row_Drum_Snare+i)-1
                                  Next
                                Next
                              Default
                                For i = 0 To 31
                                  Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_Snare) = GetGadgetState(#Gad_PatEdit_Row_Drum_Snare+i)-1
                                Next
                            EndSelect
                            
                            
                        EndSelect
                        
                      Case #PB_Event_CloseWindow
                        HideWindow(#Win_PatEdit, 1)
                        Break
                        
                    EndSelect
                  EndIf
                ForEver
              EndIf
              
              DisableWindow(#Win_Main, 0)
              SetActiveGadget(#Gad_Canvas)
              
              
            Case #Itm_Manual
              ;RunProgram can be used as a form of ShellExecute_()
              RunProgram("readme.md")
              
            Case #Itm_About
              DisableWindow(#Win_Main, 1)
              CompilerIf Defined(PB_Editor_BuildCount, #PB_Constant) And Defined(PB_Editor_CompileCount, #PB_Constant)
                TempString = "An Omnichord Emulator"+#CRLF$+
                             "Fragment "+Str(#PB_Editor_CompileCount)+#CRLF$+
                             "Build "+Str(#PB_Editor_BuildCount)+#CRLF$+
                             "Please see the GitHub page for more information."+#CRLF$+
                             "https://github.com/Jan125/pb.chordian"
              CompilerElseIf Defined(PB_Editor_BuildCount, #PB_Constant)
                TempString = "An Omnichord Emulator"+#CRLF$+
                             "Build "+Str(#PB_Editor_BuildCount)+#CRLF$+
                             #CRLF$+
                             "Please see the GitHub page for more information."+#CRLF$+
                             "https://github.com/Jan125/pb.chordian"
              CompilerElseIf Defined(PB_Editor_CompileCount, #PB_Constant)
                TempString = "An Omnichord Emulator"+#CRLF$+
                             "Fragment "+Str(#PB_Editor_CompileCount)+#CRLF$+
                             #CRLF$+
                             "Please see the GitHub page for more information."+#CRLF$+
                             "https://github.com/Jan125/pb.chordian"
              CompilerElse
                TempString = "An Omnichord Emulator"+#CRLF$+
                             #CRLF$+
                             #CRLF$+
                             "Please see the GitHub page for more information."+#CRLF$+
                             "https://github.com/Jan125/pb.chordian"
              CompilerEndIf
              MessageRequester("Chordian>About", TempString, #PB_MessageRequester_Ok)
              
              DisableWindow(#Win_Main, 0)
              SetActiveGadget(#Gad_Canvas)
              
          EndSelect
        Case #PB_Event_Gadget
          
          ;--Gadget Actions
          Select EventGadget()
            Case #Gad_Canvas
              ;---Canvas Actions
              With Chordian\Input_State
                Select EventType()
                  Case #PB_EventType_KeyDown
                    PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key))
                    
                  Case #PB_EventType_KeyUp
                    PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key))
                    
                  Case #PB_EventType_LeftButtonDown
                    \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                    \Mouse_Button_Left_Current = 1
                    PostEvent(#Event_GetTriggers, #Win_Main, 0)
                    
                  Case #PB_EventType_LeftButtonUp
                    \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                    \Mouse_Button_Left_Current = 0
                    PostEvent(#Event_GetTriggers, #Win_Main, 0)
                    
                  Case #PB_EventType_RightButtonDown
                    \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                    \Mouse_Button_Right_Current = 1
                    PostEvent(#Event_GetTriggers, #Win_Main, 0)
                    
                  Case #PB_EventType_RightButtonUp
                    \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                    \Mouse_Button_Right_Current = 0
                    PostEvent(#Event_GetTriggers, #Win_Main, 0)
                    
                  Case #PB_EventType_MiddleButtonDown
                    \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                    \Mouse_Button_Middle_Current = 1
                    PostEvent(#Event_GetTriggers, #Win_Main, 0)
                    
                  Case #PB_EventType_MiddleButtonUp
                    \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                    \Mouse_Button_Middle_Current = 0
                    PostEvent(#Event_GetTriggers, #Win_Main, 0)
                    
                  Case #PB_EventType_MouseMove
                    \Mouse_Position_X_Previous = \Mouse_Position_X_Current
                    \Mouse_Position_Y_Previous = \Mouse_Position_Y_Current
                    \Mouse_Position_X_Current = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_MouseX) * (800.0 / WindowWidth(#Win_Main))
                    \Mouse_Position_Y_Current = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_MouseY) * (600.0 / (WindowHeight(#Win_Main) - 20))
                    PostEvent(#Event_HandleTriggers, #Win_Main, 0)
                    
                EndSelect
              EndWith
          EndSelect
          
          
        Case #Event_GeneralKeyDown
          ;--GeneralKeyDown
          With Chordian\Input_State
            If Not \Keymap(EventData())
              Select EventData()
                Case \Keymap_Chord(#Chord_Maj, #Note_Db), \Keymap_Chord(#Chord_Min, #Note_Db), \Keymap_Chord(#Chord_7th, #Note_Db),
                     \Keymap_Chord(#Chord_Maj, #Note_Ab), \Keymap_Chord(#Chord_Min, #Note_Ab), \Keymap_Chord(#Chord_7th, #Note_Ab),
                     \Keymap_Chord(#Chord_Maj, #Note_Eb), \Keymap_Chord(#Chord_Min, #Note_Eb), \Keymap_Chord(#Chord_7th, #Note_Eb),
                     \Keymap_Chord(#Chord_Maj, #Note_Bb), \Keymap_Chord(#Chord_Min, #Note_Bb), \Keymap_Chord(#Chord_7th, #Note_Bb),
                     \Keymap_Chord(#Chord_Maj, #Note_F), \Keymap_Chord(#Chord_Min, #Note_F), \Keymap_Chord(#Chord_7th, #Note_F),
                     \Keymap_Chord(#Chord_Maj, #Note_C), \Keymap_Chord(#Chord_Min, #Note_C), \Keymap_Chord(#Chord_7th, #Note_C),
                     \Keymap_Chord(#Chord_Maj, #Note_G), \Keymap_Chord(#Chord_Min, #Note_G), \Keymap_Chord(#Chord_7th, #Note_G),
                     \Keymap_Chord(#Chord_Maj, #Note_D), \Keymap_Chord(#Chord_Min, #Note_D), \Keymap_Chord(#Chord_7th, #Note_D),
                     \Keymap_Chord(#Chord_Maj, #Note_A), \Keymap_Chord(#Chord_Min, #Note_A), \Keymap_Chord(#Chord_7th, #Note_A),
                     \Keymap_Chord(#Chord_Maj, #Note_E), \Keymap_Chord(#Chord_Min, #Note_E), \Keymap_Chord(#Chord_7th, #Note_E),
                     \Keymap_Chord(#Chord_Maj, #Note_B), \Keymap_Chord(#Chord_Min, #Note_B), \Keymap_Chord(#Chord_7th, #Note_B),
                     \Keymap_Chord(#Chord_Maj, #Note_Fc), \Keymap_Chord(#Chord_Min, #Note_Fc), \Keymap_Chord(#Chord_7th, #Note_Fc),
                     \Keymap_Function(#Btn_Chordiate)
                  PostEvent(#Event_HandleChordKeys, #Win_Main, 0)
              EndSelect
              
              PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
              
              PostEvent(#Event_HandleHarpKeys, #Win_Main, 0)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
            EndIf
            \Keymap(EventData()) = 1
            \LastKey = EventData()
            \LastKeyEventWasDown = 1
          EndWith
          
        Case #Event_GeneralKeyUp
          ;--GeneralKeyUp
          With Chordian\Input_State
            \Keymap(EventData()) = 0
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff
              PostEvent(#Event_HandleChordKeys, #Win_Main, 0)
            EndIf
            PostEvent(#Event_HandleHarpKeys, #Win_Main, 0)
            PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
            \LastKeyEventWasDown = 0
          EndWith
          
          ;--GetTriggers
        Case #Event_GetTriggers
          With Chordian\Input_State
            
            If Not (\Mouse_Button_Left_Current | \Mouse_Button_Middle_Current | \Mouse_Button_Right_Current)
              \Trigger_Master_Button_Power_OnOff = 0
              \Trigger_Master_Knob_Volume = 0
              
              \Trigger_Level_Knob_Volume_Harp_1 = 0
              \Trigger_Level_Knob_Volume_Harp_2 = 0
              \Trigger_Level_Knob_Sustain = 0
              \Trigger_Level_Knob_Volume_Keyboard = 0
              \Trigger_Level_Knob_Volume_Chords = 0
              
              \Trigger_Rhythm_Button_Alternate_OnOff = 0
              \Trigger_Rhythm_Button_Pattern = 0
              \Trigger_Rhythm_Button_AutoBassSync_OnOff = 0
              \Trigger_Rhythm_Knob_Tempo = 0
              \Trigger_Rhythm_Knob_Volume = 0
              
              \Trigger_Memory_Button_Memory_OnOff = 0
              \Trigger_Memory_Button_Playback_Record_OnOff = 0
              \Trigger_Memory_Button_Repeat_Delete = 0
              \Trigger_Memory_Button_Playback_Enter = 0
              
              \Trigger_Chord_Button_Major = 0
              \Trigger_Chord_Button_Minor = 0
              \Trigger_Chord_Button_Minor = 0
              
              \Trigger_Chordiate = 0
              
              \Trigger_Harp = 0
              
              For i = #Harp_First To #Harp_Last
                Chordian\Machine_State\Status_Harp(i) = 0
              Next
            EndIf
            
            
            ;Power Button
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 126, 113, 145, 137)
              \Trigger_Master_Button_Power_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Master Volume Knob
            If Sqr(Pow(\Mouse_Position_X_Current-190, 2)+Pow(\Mouse_Position_Y_Current-116, 2)) <= 21
              \Trigger_Master_Knob_Volume = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            
            ;Harp Voice Volume Knobs
            If Sqr(Pow(\Mouse_Position_X_Current-94, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 21
              If Sqr(Pow(\Mouse_Position_X_Current-94, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 13
                \Trigger_Level_Knob_Volume_Harp_2 = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
              Else
                \Trigger_Level_Knob_Volume_Harp_1 = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
              EndIf
            EndIf
            
            ;Harp Sustain Knob
            If Sqr(Pow(\Mouse_Position_X_Current-142, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 21
              \Trigger_Level_Knob_Sustain = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Keyboard&Chord Volume Knobs
            If Sqr(Pow(\Mouse_Position_X_Current-190, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 21
              If Sqr(Pow(\Mouse_Position_X_Current-190, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 13
                \Trigger_Level_Knob_Volume_Chords = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
              Else
                \Trigger_Level_Knob_Volume_Keyboard = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
              EndIf
            EndIf
            
            
            ;Rhythm Alternate Button
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 36, 274, 55, 298)
              \Trigger_Rhythm_Button_Alternate_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Rhythm Selector Buttons
            
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 68, 274, 215, 298)
              \Trigger_Rhythm_Button_Pattern = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Rhythm Auto Bass Sync Button
            
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 84, 329, 103, 353)
              \Trigger_Rhythm_Button_AutoBassSync_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Rhythm Tempo Knob
            If Sqr(Pow(\Mouse_Position_X_Current-142, 2)+Pow(\Mouse_Position_Y_Current-339, 2)) <= 21
              \Trigger_Rhythm_Knob_Tempo = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Rhythm Volume Knob
            If Sqr(Pow(\Mouse_Position_X_Current-190, 2)+Pow(\Mouse_Position_Y_Current-339, 2)) <= 21
              \Trigger_Rhythm_Knob_Volume = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Memory On Off Button
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 126, 424, 145, 448)
              \Trigger_Memory_Button_Memory_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Memory Playback Record Button
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 159, 424, 178, 448)
              \Trigger_Memory_Button_Playback_Record_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Memory Repeat Delete Button
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 192, 424, 211, 448)
              \Trigger_Memory_Button_Repeat_Delete = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Memory Playback Enter Button
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 162, 480, 206, 505)
              \Trigger_Memory_Button_Playback_Enter = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Chord buttons
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 271, 240, 631, 264)
              \Trigger_Chord_Button_Major = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 286, 283, 646, 307)
              \Trigger_Chord_Button_Minor = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 301, 326, 661, 350)
              \Trigger_Chord_Button_7th = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Chordiate bar
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 361, 368, 597, 393)
              \Trigger_Chordiate = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
            ;Strumplate
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 674, 0, 800, 600)
              \Trigger_Harp = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
            
          EndWith
          
          PostEvent(#Event_HandleTriggers, #Win_Main, 0)
          
        Case #Event_HandleTriggers
          ;--HandleTriggers
          With Chordian\Input_State
            If \Trigger_Master_Button_Power_OnOff
              Select \Trigger_Master_Button_Power_OnOff
                Case 1
                  \Trigger_Master_Button_Power_OnOff = 0
                  \Keymap(\Keymap_Function(#Btn_Master_Power)) = 1
                  PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
                  
                Case 2
                  \Trigger_Master_Button_Power_OnOff = 0
                  KeyReassign_Function(#Btn_Master_Power)
                  
              EndSelect
            EndIf
            
            If \Trigger_Master_Knob_Volume
              Select \Trigger_Master_Knob_Volume
                Case 1
                  Chordian\Machine_State\Value_Master_Knob_Volume+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
                Case 2
                  \Trigger_Master_Knob_Volume = 0
                  TempString = InputRequester("Chordian>Master>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Master_Knob_Volume))
                  If Len(TempString) > 0
                    Chordian\Machine_State\Value_Master_Knob_Volume = ValF(TempString)
                  EndIf
              EndSelect
              
              KeepInRange(Chordian\Machine_State\Value_Master_Knob_Volume, 0.0, 1.0)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            
            If \Trigger_Level_Knob_Volume_Harp_1
              Select \Trigger_Level_Knob_Volume_Harp_1
                Case 1
                  Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
                Case 2
                  \Trigger_Level_Knob_Volume_Harp_1 = 0
                  TempString = InputRequester("Chordian>Harp>1>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1))
                  If Len(TempString) > 0
                    Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1 = ValF(TempString)
                  EndIf
              EndSelect
              
              KeepInRange(Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1, 0.0, 1.0)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            If \Trigger_Level_Knob_Volume_Harp_2
              Select \Trigger_Level_Knob_Volume_Harp_2
                Case 1
                  Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
                Case 2
                  \Trigger_Level_Knob_Volume_Harp_2 = 0
                  TempString = InputRequester("Chordian>Harp>2>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2))
                  If Len(TempString) > 0
                    Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2 = ValF(TempString)
                  EndIf
              EndSelect
              
              KeepInRange(Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2, 0.0, 1.0)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            If \Trigger_Level_Knob_Sustain
              Select \Trigger_Level_Knob_Sustain
                Case 1
                  Chordian\Machine_State\Value_Level_Knob_Sustain+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
                Case 2
                  \Trigger_Level_Knob_Sustain = 0
                  
                  Select Chordian\Machine_State\Value_External_ChordiateMode
                    Case 1
                      TempString = InputRequester("Chordian>Harp>Sustain", "Insert new Volume. (-0.12-5.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Sustain))
                    Default
                      TempString = InputRequester("Chordian>Harp>Sustain", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Sustain))
                  EndSelect
                  
                  If Len(TempString) > 0
                    Chordian\Machine_State\Value_Level_Knob_Sustain = ValF(TempString)
                  EndIf
              EndSelect
              
              Select Chordian\Machine_State\Value_External_ChordiateMode
                Case 1
                  KeepInRange(Chordian\Machine_State\Value_Level_Knob_Sustain, -0.12, 5.0)
                Default
                  KeepInRange(Chordian\Machine_State\Value_Level_Knob_Sustain, 0.0, 1.0)
              EndSelect
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            If \Trigger_Level_Knob_Volume_Keyboard
              Select \Trigger_Level_Knob_Volume_Keyboard
                Case 1
                  Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
                Case 2
                  \Trigger_Level_Knob_Volume_Keyboard = 0
                  TempString = InputRequester("Chordian>Keyboard>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard))
                  If Len(TempString) > 0
                    Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard = ValF(TempString)
                  EndIf
              EndSelect
              
              KeepInRange(Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard, 0.0, 1.0)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            
            If \Trigger_Level_Knob_Volume_Chords
              Select \Trigger_Level_Knob_Volume_Chords
                Case 1
                  Chordian\Machine_State\Value_Level_Knob_Volume_Chords+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
                Case 2
                  \Trigger_Level_Knob_Volume_Chords = 0
                  TempString = InputRequester("Chordian>Chords>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Volume_Chords))
                  If Len(TempString) > 0
                    Chordian\Machine_State\Value_Level_Knob_Volume_Chords = ValF(TempString)
                  EndIf
              EndSelect
              
              KeepInRange(Chordian\Machine_State\Value_Level_Knob_Volume_Chords, 0.0, 1.0)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            
            If \Trigger_Rhythm_Button_Alternate_OnOff = 1
              \Trigger_Rhythm_Button_Alternate_OnOff = 0
              \Keymap(\Keymap_Function(#Btn_Rhythm_Alternate)) = 1
              PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
              
            ElseIf \Trigger_Rhythm_Button_Alternate_OnOff = 2
              \Trigger_Rhythm_Button_Alternate_OnOff = 0
              KeyReassign_Function(#Btn_Rhythm_Alternate)
            EndIf
            
            
            If \Trigger_Rhythm_Button_Pattern = 1 ;FroggiFifi - Rhythm buttons do not pop out when pressed again, only by lightly pressing another rhythm button - Unemulatable, will stay as it is currently.
              \Trigger_Rhythm_Button_Pattern = 0
              If (\Mouse_Position_X_Current-68)%32 <= 20
                \Keymap(\Keymap_Function(#Btn_Rhythm_First + (\Mouse_Position_X_Current - 68) / 32)) = 1
                PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
              EndIf
              
            ElseIf \Trigger_Rhythm_Button_Pattern = 2
              \Trigger_Rhythm_Button_Pattern = 0
              If (\Mouse_Position_X_Current-68) % 32 <= 20
                KeyReassign_Function(#Btn_Rhythm_First + (\Mouse_Position_X_Current - 68) / 32)
              EndIf
              
            EndIf
            
            
            If \Trigger_Rhythm_Button_AutoBassSync_OnOff = 1
              \Trigger_Rhythm_Button_AutoBassSync_OnOff = 0
              \Keymap(\Keymap_Function(#Btn_Rhythm_AutoBassSync)) = 1
              PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
              
            ElseIf \Trigger_Rhythm_Button_AutoBassSync_OnOff = 2
              \Trigger_Rhythm_Button_AutoBassSync_OnOff = 0
              KeyReassign_Function(#Btn_Rhythm_AutoBassSync)
            EndIf
            
            
            If \Trigger_Rhythm_Knob_Tempo
              Select \Trigger_Rhythm_Knob_Tempo
                Case 1
                  Chordian\Machine_State\Value_Rhythm_Knob_Tempo+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
                Case 2
                  \Trigger_Rhythm_Knob_Tempo = 0
                  
                  Select Chordian\Machine_State\Value_External_ChordiateMode
                    Case 1
                      TempString = UCase(InputRequester("Chordian>Rhythm>Tempo", "Insert new Tempo. (0.0-5.0; 70.5BPM-7986.70BPM)", StrF(Chordian\Machine_State\Value_Rhythm_Knob_Tempo)+Chr(9)+StrF((((60.0/(1.0/(4.7+Pow(Chordian\Machine_State\Value_Rhythm_Knob_Tempo, 2.2)*15.3))))/4), 2)+"BPM"))
                    Default
                      TempString = UCase(InputRequester("Chordian>Rhythm>Tempo", "Insert new Tempo. (0.0-1.0; 70.5BPM-300BPM)", StrF(Chordian\Machine_State\Value_Rhythm_Knob_Tempo)+Chr(9)+StrF((((60.0/(1.0/(4.7+Pow(Chordian\Machine_State\Value_Rhythm_Knob_Tempo, 2.2)*15.3))))/4), 2)+"BPM"))
                  EndSelect
                  
                  If Len(TempString) > 0
                    If CountString(TempString, Chr(9))
                      TempString = StringField(TempString, 1, Chr(9))
                    EndIf
                    If Len(TempString) >= 3
                      If Right(TempString, 3) = "BPM"
                        TempFloat = ValF(Left(TempString, Len(TempString)-3))
                        TempString = ""
                        Chordian\Machine_State\Value_Rhythm_Knob_Tempo = Pow(((((TempFloat/60)*4)-4.7)/15.3), 1/2.2)
                        TempFloat = 0
                      Else
                        Chordian\Machine_State\Value_Rhythm_Knob_Tempo = ValF(TempString)
                      EndIf
                    Else
                      Chordian\Machine_State\Value_Rhythm_Knob_Tempo = ValF(TempString)
                    EndIf
                  EndIf
              EndSelect
              
              Select Chordian\Machine_State\Value_External_ChordiateMode
                Case 1
                  KeepInRange(Chordian\Machine_State\Value_Rhythm_Knob_Tempo, 0.0, 5.0)
                Default
                  KeepInRange(Chordian\Machine_State\Value_Rhythm_Knob_Tempo, 0.0, 1.0)
              EndSelect
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            
            If \Trigger_Rhythm_Knob_Volume
              Select \Trigger_Rhythm_Knob_Volume
                Case 1
                  Chordian\Machine_State\Value_Rhythm_Knob_Volume+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
                Case 2
                  \Trigger_Rhythm_Knob_Volume = 0
                  TempString = InputRequester("Chordian>Rhythm>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Rhythm_Knob_Volume))
                  If Len(TempString) > 0
                    Chordian\Machine_State\Value_Rhythm_Knob_Volume = ValF(TempString)
                  EndIf
              EndSelect
              
              KeepInRange(Chordian\Machine_State\Value_Rhythm_Knob_Volume, 0.0, 1.0)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            
            If \Trigger_Memory_Button_Memory_OnOff = 1
              \Trigger_Memory_Button_Memory_OnOff = 0
              \Keymap(\Keymap_Function(#Btn_Memory)) = 1
              PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
              
            ElseIf \Trigger_Memory_Button_Memory_OnOff = 2
              \Trigger_Memory_Button_Memory_OnOff = 0
              KeyReassign_Function(#Btn_Memory)
            EndIf
            
            
            If \Trigger_Memory_Button_Playback_Record_OnOff = 1
              \Trigger_Memory_Button_Playback_Record_OnOff = 0
              \Keymap(\Keymap_Function(#Btn_Memory_Playback_Record)) = 1
              PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
              
            ElseIf \Trigger_Memory_Button_Playback_Record_OnOff = 2
              \Trigger_Memory_Button_Playback_Record_OnOff = 0
              KeyReassign_Function(#Btn_Memory_Playback_Record)
            EndIf
            
            
            If \Trigger_Memory_Button_Repeat_Delete = 1
              \Trigger_Memory_Button_Repeat_Delete = 0
              If \Keymap(\Keymap_Function(#Btn_Memory_Repeat_Delete))
                \Keymap(\Keymap_Function(#Btn_Memory_Repeat_Delete)) = 0
                PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
              Else
                \Keymap(\Keymap_Function(#Btn_Memory_Repeat_Delete)) = 1
                PostEvent(#Event_HandleFunctionKeys, #Win_Main, 0)
              EndIf
              
              
            ElseIf \Trigger_Memory_Button_Repeat_Delete = 2
              \Trigger_Memory_Button_Repeat_Delete = 0
              KeyReassign_Function(#Btn_Memory_Repeat_Delete)
            EndIf
            
            
            If \Trigger_Memory_Button_Playback_Enter = 1
              \Trigger_Memory_Button_Playback_Enter = 0
              If \Keymap(\Keymap_Function(#Btn_Memory_Playback_Enter))
                PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Function(#Btn_Memory_Playback_Enter))
              Else
                PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Function(#Btn_Memory_Playback_Enter))
              EndIf
              
            ElseIf \Trigger_Memory_Button_Playback_Enter = 2
              \Trigger_Memory_Button_Playback_Enter = 0
              KeyReassign_Function(#Btn_Memory_Playback_Enter)
            EndIf
            
            
            If \Trigger_Chord_Button_Major = 1
              \Trigger_Chord_Button_Major = 0
              If (\Mouse_Position_X_Current-271)%31 <= 20
                If Not \Keymap(\Keymap_Chord(#Chord_Maj, (\Mouse_Position_X_Current-271)/31))
                  PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Chord(#Chord_Maj, (\Mouse_Position_X_Current-271)/31))
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Chord(#Chord_Maj, (\Mouse_Position_X_Current-271)/31))
                EndIf
              EndIf
            ElseIf \Trigger_Chord_Button_Major = 2
              \Trigger_Chord_Button_Major = 0
              KeyReassign_Chord(#Chord_Maj, 0, 0)
            EndIf
            
            If \Trigger_Chord_Button_Minor = 1
              \Trigger_Chord_Button_Minor = 0
              If (\Mouse_Position_X_Current-286)%31 <= 20
                If Not \Keymap(\Keymap_Chord(#Chord_Min, (\Mouse_Position_X_Current-286)/31))
                  PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Chord(#Chord_Min, (\Mouse_Position_X_Current-286)/31))
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Chord(#Chord_Min, (\Mouse_Position_X_Current-286)/31))
                EndIf
              EndIf
            ElseIf \Trigger_Chord_Button_Minor = 2
              \Trigger_Chord_Button_Minor = 0
              KeyReassign_Chord(#Chord_Min, 15, 43)
            EndIf
            
            If \Trigger_Chord_Button_7th = 1
              \Trigger_Chord_Button_7th = 0
              If (\Mouse_Position_X_Current-301)%31 <= 20
                If Not \Keymap(\Keymap_Chord(#Chord_7th, (\Mouse_Position_X_Current-301)/31))
                  PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Chord(#Chord_7th, (\Mouse_Position_X_Current-301)/31))
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Chord(#Chord_7th, (\Mouse_Position_X_Current-301)/31))
                EndIf
              EndIf
            ElseIf \Trigger_Chord_Button_7th = 2
              \Trigger_Chord_Button_7th = 0
              KeyReassign_Chord(#Chord_7th, 30, 86)
            EndIf
            
            If \Trigger_Chordiate = 1
              \Trigger_Chordiate = 0
              If \Keymap(\Keymap_Function(#Btn_Chordiate))
                PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Function(#Btn_Chordiate))
              Else
                PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Function(#Btn_Chordiate))
              EndIf
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
            ElseIf \Trigger_Chordiate = 2
              \Trigger_Chordiate = 0
              KeyReassign_Function(#Btn_Chordiate)
            EndIf
            
            If \Trigger_Harp
              If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 752, 131, 800, 150)
                Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None
                Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                For i = #Note_First To #Note_Last
                  For n = #Chord_First To #Chord_Last
                    \Keymap(\Keymap_Chord(n, i)) = 0
                  Next
                Next
                Chordian\Machine_State\Value_Internal_Tick = 0
                Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None
                Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
                PauseThread(Chordian\RepaintHandler_Thread)
                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                ResumeThread(Chordian\RepaintHandler_Thread)
              Else
                If \Trigger_Harp
                  Select \Mouse_Position_Y_Current
                    Case 92 To 388
                      If Not Chordian\Machine_State\Status_Harp(#Harp_First-(\Mouse_Position_Y_Current-388)/24)
                        For i = #Harp_First To #Harp_Last
                          Chordian\Machine_State\Status_Harp(i) = 0
                        Next
                        
                        Chordian\Machine_State\Status_Harp(#Harp_First-(\Mouse_Position_Y_Current-388)/24) = 1
                        
                        If \Trigger_Harp & 1
                          Select \PrimaryStrumMode
                            Case #Str_None
                            Case #Str_Single
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                            Case #Str_Double
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+1-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+1-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Chord
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+1-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+1-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Spread
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+4-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+4-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Octave
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+3-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+3-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+6-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+6-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+9-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+9-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Full
                              For i = #Snd_Harp_First To #Snd_Harp_Last
                                Chordian\Machine_State\Status_Sound(i) = #Curve_Trigger
                              Next
                            Case #Str_Reverse
                              If #Harp_Last+(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last And #Harp_Last+(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_Last+(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Mirror
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_Last+(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last And #Harp_Last+(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_Last+(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Segment
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              Select (-(\Mouse_Position_Y_Current-388)/24)%3
                                Case 0
                                  If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                    Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                                  EndIf
                                Case 2
                                  If #Harp_First-2-(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                    Chordian\Machine_State\Status_Sound(#Snd_Harp_First-2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                                  EndIf
                              EndSelect
                          EndSelect
                        EndIf
                        
                        If \Trigger_Harp & 2
                          Select \SecondaryStrumMode
                            Case #Str_None
                            Case #Str_Single
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                            Case #Str_Double
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+1-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+1-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Chord
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+1-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+1-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Spread
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+4-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+4-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Octave
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+3-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+3-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+6-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+6-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+9-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+9-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Full
                              For i = #Snd_Harp_First To #Snd_Harp_Last
                                Chordian\Machine_State\Status_Sound(i) = #Curve_Trigger
                              Next
                            Case #Str_Reverse
                              If #Harp_Last+(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last And #Harp_Last+(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_Last+(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Mirror
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_Last+(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last And #Harp_Last+(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_Last+(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Segment
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              Select (-(\Mouse_Position_Y_Current-388)/24)%3
                                Case 0
                                  If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                    Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                                  EndIf
                                Case 2
                                  If #Harp_First-2-(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                    Chordian\Machine_State\Status_Sound(#Snd_Harp_First-2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                                  EndIf
                              EndSelect
                          EndSelect
                        EndIf
                        
                        If \Trigger_Harp & 4
                          Select \TertiaryStrumMode
                            Case #Str_None
                            Case #Str_Single
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                            Case #Str_Double
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+1-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+1-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Chord
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+1-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+1-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Spread
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+4-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+4-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Octave
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_First+3-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+3-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+6-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+6-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                              If #Harp_First+9-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+9-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Full
                              For i = #Snd_Harp_First To #Snd_Harp_Last
                                Chordian\Machine_State\Status_Sound(i) = #Curve_Trigger
                              Next
                            Case #Str_Reverse
                              If #Harp_Last+(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last And #Harp_Last+(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_Last+(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Mirror
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              If #Harp_Last+(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last And #Harp_Last+(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                Chordian\Machine_State\Status_Sound(#Snd_Harp_Last+(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              EndIf
                            Case #Str_Segment
                              Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                              Select (-(\Mouse_Position_Y_Current-388)/24)%3
                                Case 0
                                  If #Harp_First+2-(\Mouse_Position_Y_Current-388)/24 <= #Harp_Last
                                    Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                                  EndIf
                                Case 2
                                  If #Harp_First-2-(\Mouse_Position_Y_Current-388)/24 >= #Harp_First
                                    Chordian\Machine_State\Status_Sound(#Snd_Harp_First-2-(\Mouse_Position_Y_Current-388)/24) = #Curve_Trigger
                                  EndIf
                              EndSelect
                          EndSelect
                        EndIf
                        
                      EndIf
                      
                    Default
                      For i = #Harp_First To #Harp_Last
                        Chordian\Machine_State\Status_Harp(i) = 0
                      Next
                      
                  EndSelect
                EndIf
                
              EndIf
            EndIf
          EndWith
          
          
        Case #Event_HandleChordKeys
          ;--HandleChordKeys
          With Chordian\Input_State
            If Chordian\Machine_State\Value_Master_Button_Power_OnOff
              If Chordian\Machine_State\Value_Internal_TransposeMode
                Chordian\Machine_State\Value_Internal_TransposeMode = 0
                Select \LastKey
                  Case \Keymap_Chord(#Chord_Maj, #Note_Db)
                    Chordian\Machine_State\Value_Internal_Transpose = 1
                  Case \Keymap_Chord(#Chord_Maj, #Note_Ab)
                    Chordian\Machine_State\Value_Internal_Transpose = 8
                  Case \Keymap_Chord(#Chord_Maj, #Note_Eb)
                    Chordian\Machine_State\Value_Internal_Transpose = 3
                  Case \Keymap_Chord(#Chord_Maj, #Note_Bb)
                    Chordian\Machine_State\Value_Internal_Transpose = 10
                  Case \Keymap_Chord(#Chord_Maj, #Note_F)
                    Chordian\Machine_State\Value_Internal_Transpose = 5
                  Case \Keymap_Chord(#Chord_Maj, #Note_C)
                    Chordian\Machine_State\Value_Internal_Transpose = 0
                  Case \Keymap_Chord(#Chord_Maj, #Note_G)
                    Chordian\Machine_State\Value_Internal_Transpose = 7
                  Case \Keymap_Chord(#Chord_Maj, #Note_D)
                    Chordian\Machine_State\Value_Internal_Transpose = 2
                  Case \Keymap_Chord(#Chord_Maj, #Note_A)
                    Chordian\Machine_State\Value_Internal_Transpose = 9
                  Case \Keymap_Chord(#Chord_Maj, #Note_E)
                    Chordian\Machine_State\Value_Internal_Transpose = 4
                  Case \Keymap_Chord(#Chord_Maj, #Note_B)
                    Chordian\Machine_State\Value_Internal_Transpose = 11
                  Case \Keymap_Chord(#Chord_Maj, #Note_Fc)
                    Chordian\Machine_State\Value_Internal_Transpose = 6
                EndSelect
                
                Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None 
                Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                
              ElseIf Not Chordian\Machine_State\Value_Memory_Button_Memory_OnOff Or (Chordian\Machine_State\Value_Memory_Button_Memory_OnOff And Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff)
                If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                  Chordian\Machine_State\Value_Internal_Tick = 0
                  SendNewTick = 1
                EndIf
                
                Select \LastKey
                  Case \Keymap_Chord(#Chord_Maj, #Note_Db), \Keymap_Chord(#Chord_Min, #Note_Db), \Keymap_Chord(#Chord_7th, #Note_Db)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Db
                  Case \Keymap_Chord(#Chord_Maj, #Note_Ab), \Keymap_Chord(#Chord_Min, #Note_Ab), \Keymap_Chord(#Chord_7th, #Note_Ab)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Ab
                  Case \Keymap_Chord(#Chord_Maj, #Note_Eb), \Keymap_Chord(#Chord_Min, #Note_Eb), \Keymap_Chord(#Chord_7th, #Note_Eb)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Eb
                  Case \Keymap_Chord(#Chord_Maj, #Note_Bb), \Keymap_Chord(#Chord_Min, #Note_Bb), \Keymap_Chord(#Chord_7th, #Note_Bb)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Bb
                  Case \Keymap_Chord(#Chord_Maj, #Note_F), \Keymap_Chord(#Chord_Min, #Note_F), \Keymap_Chord(#Chord_7th, #Note_F)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_F
                  Case \Keymap_Chord(#Chord_Maj, #Note_C), \Keymap_Chord(#Chord_Min, #Note_C), \Keymap_Chord(#Chord_7th, #Note_C)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_C
                  Case \Keymap_Chord(#Chord_Maj, #Note_G), \Keymap_Chord(#Chord_Min, #Note_G), \Keymap_Chord(#Chord_7th, #Note_G)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_G
                  Case \Keymap_Chord(#Chord_Maj, #Note_D), \Keymap_Chord(#Chord_Min, #Note_D), \Keymap_Chord(#Chord_7th, #Note_D)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_D
                  Case \Keymap_Chord(#Chord_Maj, #Note_A), \Keymap_Chord(#Chord_Min, #Note_A), \Keymap_Chord(#Chord_7th, #Note_A)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_A
                  Case \Keymap_Chord(#Chord_Maj, #Note_E), \Keymap_Chord(#Chord_Min, #Note_E), \Keymap_Chord(#Chord_7th, #Note_E)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_E
                  Case \Keymap_Chord(#Chord_Maj, #Note_B), \Keymap_Chord(#Chord_Min, #Note_B), \Keymap_Chord(#Chord_7th, #Note_B)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_B
                  Case \Keymap_Chord(#Chord_Maj, #Note_Fc), \Keymap_Chord(#Chord_Min, #Note_Fc), \Keymap_Chord(#Chord_7th, #Note_Fc)
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Fc
                  Default
                    Select Chordian\Machine_State\Value_Internal_Chord_Note
                      Case #Note_First_Melodic To #Note_Last_Melodic
                        Chordian\Machine_State\Value_Internal_Chord_Note - Chordian\Machine_State\Value_Internal_Transpose
                        RollInRange(Chordian\Machine_State\Value_Internal_Chord_Note, #Note_First_Melodic, #Note_Last_Melodic)
                    EndSelect
                EndSelect
                
                If Chordian\Machine_State\Value_Internal_Chord_Note <> #Note_None
                  If \Keymap(\Keymap_Chord(#Chord_7th, #Note_F)) And
                     \Keymap(\Keymap_Chord(#Chord_7th, #Note_C)) And
                     \Keymap(\Keymap_Chord(#Chord_7th, #Note_G))
                    Chordian\Machine_State\Value_Internal_TransposeMode = 1
                    
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_C
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Maj
                    
                    ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                    ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                    
                    SendNewChord = 1
                    
                  ElseIf Chordian\Machine_State\Value_Memory_Button_Memory_OnOff And Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And
                         \Keymap(\Keymap_Chord(#Chord_Maj, #Note_A)) And
                         \Keymap(\Keymap_Chord(#Chord_Maj, #Note_E)) And
                         \Keymap(\Keymap_Chord(#Chord_Maj, #Note_B))
                    
                    Chordian\Machine_State\Value_Internal_Memory_Position_Current - 1
                    If Chordian\Machine_State\Value_Internal_Memory_Position_Current < 0
                      Chordian\Machine_State\Value_Internal_Memory_Position_Current = 0
                    EndIf
                    
                    For i = #Snd_Bass_First To #Snd_Bass_Last
                      Chordian\Machine_State\Status_Sound(i) = #Curve_None
                    Next
                    For i = #Snd_Chord_First To #Snd_Chord_Last
                      Chordian\Machine_State\Status_Sound(i) = #Curve_None
                    Next
                    For i = #Snd_Harp_First To #Snd_Harp_Last
                      Chordian\Machine_State\Status_Sound(i) = #Curve_None
                    Next
                    
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Ignore
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ignore
                    
                    SendNewChord = 1
                    
                  ElseIf Chordian\Machine_State\Value_Memory_Button_Memory_OnOff And Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And
                         \Keymap(\Keymap_Chord(#Chord_Min, #Note_A)) And
                         \Keymap(\Keymap_Chord(#Chord_Min, #Note_E)) And
                         \Keymap(\Keymap_Chord(#Chord_Min, #Note_B))
                    
                    Chordian\Machine_State\Value_Internal_Memory_Position_Current = 0
                    Chordian\Machine_State\Value_Internal_Memory_Position_Skip = 0
                    
                    For i = 0 To ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note(), 1)
                      Chordian\Machine_State\Internal_Memory_Chord_Note(i, 0) = #Chord_None
                      Chordian\Machine_State\Internal_Memory_Chord_Note(i, 1) = #Note_None
                    Next
                    
                    For i = #Snd_Bass_First To #Snd_Bass_Last
                      Chordian\Machine_State\Status_Sound(i) = #Curve_None
                    Next
                    For i = #Snd_Chord_First To #Snd_Chord_Last
                      Chordian\Machine_State\Status_Sound(i) = #Curve_None
                    Next
                    For i = #Snd_Harp_First To #Snd_Harp_Last
                      Chordian\Machine_State\Status_Sound(i) = #Curve_None
                    Next
                    
                    Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Ignore
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ignore
                    
                    SendNewChord = 1
                    
                  ElseIf Chordian\Machine_State\Value_Memory_Button_Memory_OnOff And Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And
                         \Keymap(\Keymap_Chord(#Chord_7th, #Note_A)) And
                         \Keymap(\Keymap_Chord(#Chord_7th, #Note_E)) And
                         \Keymap(\Keymap_Chord(#Chord_7th, #Note_B))
                    
                    Chordian\Machine_State\Value_Internal_Memory_Position_Skip = Chordian\Machine_State\Value_Internal_Memory_Position_Current
                    
                    Chordian\Machine_State\Status_Sound(#Snd_Beep) = #Curve_Oneshot
                    
                  Else
                    
                    If \Keymap(\Keymap_Chord(#Chord_Maj, Chordian\Machine_State\Value_Internal_Chord_Note)) And
                       \Keymap(\Keymap_Chord(#Chord_Min, Chordian\Machine_State\Value_Internal_Chord_Note)) And
                       \Keymap(\Keymap_Chord(#Chord_7th, Chordian\Machine_State\Value_Internal_Chord_Note))
                      If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                        Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Chr
                      Else
                        Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug
                      EndIf
                      SendNewChord = 1
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                    ElseIf \Keymap(\Keymap_Chord(#Chord_Maj, Chordian\Machine_State\Value_Internal_Chord_Note)) And
                           \Keymap(\Keymap_Chord(#Chord_Min, Chordian\Machine_State\Value_Internal_Chord_Note))
                      If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug
                        If \LastKeyEventWasDown
                          \LastKeyEventWasDown = 0
                          If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                            Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_As2
                          Else
                            Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim
                          EndIf
                          SendNewChord = 1
                        EndIf
                      Else
                        If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_As2
                        Else
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim
                        EndIf
                        SendNewChord = 1
                      EndIf
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                    ElseIf \Keymap(\Keymap_Chord(#Chord_Maj, Chordian\Machine_State\Value_Internal_Chord_Note)) And
                           \Keymap(\Keymap_Chord(#Chord_7th, Chordian\Machine_State\Value_Internal_Chord_Note))
                      If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug
                        If \LastKeyEventWasDown
                          \LastKeyEventWasDown = 0
                          If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                            Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ac4
                          Else
                            Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7
                          EndIf
                          SendNewChord = 1
                        EndIf
                      Else
                        If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ac4
                        Else
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7
                        EndIf
                        SendNewChord = 1
                      EndIf
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                    ElseIf \Keymap(\Keymap_Chord(#Chord_Min, Chordian\Machine_State\Value_Internal_Chord_Note)) And
                           \Keymap(\Keymap_Chord(#Chord_7th, Chordian\Machine_State\Value_Internal_Chord_Note))
                      If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug
                        If \LastKeyEventWasDown
                          \LastKeyEventWasDown = 0
                          If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                            Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mc4
                          Else
                            Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7
                          EndIf
                          SendNewChord = 1
                        EndIf
                      Else
                        If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mc4
                        Else
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7
                        EndIf
                        SendNewChord = 1
                      EndIf
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                    ElseIf \Keymap(\Keymap_Chord(#Chord_Maj, Chordian\Machine_State\Value_Internal_Chord_Note))
                      If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And (Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7 Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7)
                      Else
                        If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ad9
                        Else
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Maj
                        EndIf
                        SendNewChord = 1
                      EndIf
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                    ElseIf \Keymap(\Keymap_Chord(#Chord_Min, Chordian\Machine_State\Value_Internal_Chord_Note))
                      If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And (Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7 Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7)
                      Else
                        If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Su4
                        Else
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Min
                        EndIf
                        SendNewChord = 1
                      EndIf
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                    ElseIf \Keymap(\Keymap_Chord(#Chord_7th, Chordian\Machine_State\Value_Internal_Chord_Note))
                      If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And (Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7 Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7)
                      Else
                        If Chordian\Machine_State\Value_External_ChordiateMode And \Keymap(\Keymap_Function(#Btn_Chordiate))
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ad2
                        Else
                          Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_7th
                        EndIf
                        SendNewChord = 1
                      EndIf
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                    ElseIf Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff
                      Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                      Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None
                      Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
                    EndIf
                  EndIf
                ElseIf Not Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
                  If \LastKey <> \Keymap_Function(#Btn_Chordiate)
                    SendNewChord = 1
                  EndIf
                EndIf
                
                If SendNewChord
                  Chordian\Machine_State\Value_Internal_Chord_Note + Chordian\Machine_State\Value_Internal_Transpose
                  RollInRange(Chordian\Machine_State\Value_Internal_Chord_Note, #Note_First_Melodic, #Note_Last_Melodic)
                  
                  SendNewChord = 0
                  If Not Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
                    Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Trigger
                    For i = #Snd_Chord_First To #Snd_Chord_Last
                      Chordian\Machine_State\Status_Sound(i) = #Curve_Trigger
                    Next
                  EndIf
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                EndIf
                If SendNewTick
                  SendNewTick = 0
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTick, 1, 0)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                EndIf
              Else
                If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff
                  ;--Keyboard
                  If \Keymap(\Keymap_Chord(#Chord_Maj, #Note_Eb)) And Not Chordian\Machine_State\Value_Internal_Keyboard_ButtonDown
                    Chordian\Machine_State\Value_Internal_Keyboard_Transpose - 1
                    Chordian\Machine_State\Value_Internal_Keyboard_ButtonDown = 1
                  ElseIf Not \Keymap(\Keymap_Chord(#Chord_Maj, #Note_Eb))
                    Chordian\Machine_State\Value_Internal_Keyboard_ButtonDown = 0
                  EndIf
                  If \Keymap(\Keymap_Chord(#Chord_Maj, #Note_Bb)) And Not Chordian\Machine_State\Value_Internal_Keyboard_ButtonUp
                    Chordian\Machine_State\Value_Internal_Keyboard_Transpose + 1
                    Chordian\Machine_State\Value_Internal_Keyboard_ButtonUp = 1
                  ElseIf Not \Keymap(\Keymap_Chord(#Chord_Maj, #Note_Bb))
                    Chordian\Machine_State\Value_Internal_Keyboard_ButtonUp = 0
                  EndIf
                  If \LastKey = \Keymap_Chord(#Chord_7th, #Note_A) Or \LastKey = \Keymap_Chord(#Chord_7th, #Note_E) Or \LastKey = \Keymap_Chord(#Chord_7th, #Note_B)
                    If \Keymap(\Keymap_Chord(#Chord_7th, #Note_A)) And
                       \Keymap(\Keymap_Chord(#Chord_7th, #Note_E)) And
                       \Keymap(\Keymap_Chord(#Chord_7th, #Note_B))
                      
                      Chordian\Machine_State\Value_Internal_Memory_Position_Current = Chordian\Machine_State\Value_Internal_Memory_Position_Skip
                      
                      If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                        Chordian\Machine_State\Value_Internal_Tick = 0
                        SendNewTick = 1
                      EndIf
                      
                      Chordian\Machine_State\Value_Internal_Chord_Chord = Chordian\Machine_State\Internal_Memory_Chord_Note(Chordian\Machine_State\Value_Internal_Memory_Position_Current, 0)
                      Chordian\Machine_State\Value_Internal_Chord_Note = Chordian\Machine_State\Internal_Memory_Chord_Note(Chordian\Machine_State\Value_Internal_Memory_Position_Current, 1)
                      
                      If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                        For i = #Snd_Bass_First To #Snd_Bass_Last
                          Chordian\Machine_State\Status_Sound(i) = #Curve_None
                        Next
                        For i = #Snd_Chord_First To #Snd_Chord_Last
                          Chordian\Machine_State\Status_Sound(i) = #Curve_None
                        Next
                        For i = #Snd_Harp_First To #Snd_Harp_Last
                          Chordian\Machine_State\Status_Sound(i) = #Curve_None
                        Next
                        
                        Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Ignore
                        Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ignore
                      EndIf
                      
                      SendNewChord = 1
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                      
                      If SendNewChord
                        SendNewChord = 0
                        If Not Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
                          Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Trigger
                          For i = #Snd_Chord_First To #Snd_Chord_Last
                            Chordian\Machine_State\Status_Sound(i) = #Curve_Trigger
                          Next
                        EndIf
                        If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                          ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
                        EndIf
                        
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      EndIf
                      If SendNewTick
                        SendNewTick = 0
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTick, 1, 0)
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      EndIf
                      
                      Chordian\Machine_State\Value_Internal_Memory_Position_Current + 1
                    EndIf
                  EndIf
                  
                  Select Chordian\Machine_State\Value_External_ChordiateMode
                    Case 1
                      KeepInRange(Chordian\Machine_State\Value_Internal_Keyboard_Transpose, -2, 2)
                    Default
                      KeepInRange(Chordian\Machine_State\Value_Internal_Keyboard_Transpose, 0, 1)
                  EndSelect
                  
                  If \Keymap(\Keymap_Chord(#Chord_7th, #Note_Db))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 48 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 48 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_Ab))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 49 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 49 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_Ab))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 50 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 50 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_Eb))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 51 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 51 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_Eb))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 52 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 52 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                    
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_Bb))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 53 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 53 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_F))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 54 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 54 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_F))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 55 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 55 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_C))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 56 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 56 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_C))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 57 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 57 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_G))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 58 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 58 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_G))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 59 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 59 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                    
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_D))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 60 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 60 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_A))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 61 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 61 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_A))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 62 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 62 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_E))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 63 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 63 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_E))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 64 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 64 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                    
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_B))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 65 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 65 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_Fc))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 66 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 66 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_Fc))
                    If Chordian\Machine_State\Value_Internal_Keyboard_Note <> 67 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = 67 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                    EndIf
                  Else
                    If Chordian\Machine_State\Status_Sound(#Snd_Keyboard) <> #Curve_None Or
                       Chordian\Machine_State\Status_Sound(#Snd_Keyboard) <> #Curve_Release
                      Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Release
                      Chordian\Machine_State\Value_Internal_Keyboard_Note = -1
                    EndIf
                    
                  EndIf
                EndIf
              EndIf
            EndIf
          EndWith
          
        Case #Event_HandleHarpKeys
          ;--HandleHarpKeys
          With Chordian\Input_State
            If Chordian\Machine_State\Value_Master_Button_Power_OnOff
              For i = #Harp_First-#Harp_First To #Harp_Last-#Harp_First
                If \Keymap(\Keymap_Harp(i))
                  If Not Chordian\Machine_State\Status_Harp(i)
                    Chordian\Machine_State\Status_Harp(i) = 1
                    Chordian\Machine_State\Status_Sound(#Snd_Harp_First+i) = #Curve_Trigger
                  EndIf
                Else
                  Chordian\Machine_State\Status_Harp(i) = 0
                EndIf
              Next
            EndIf
          EndWith
          
          ;--HandleFunctionKeys
        Case #Event_HandleFunctionKeys
          With Chordian\Input_State
            If \Keymap(\Keymap_Function(#Btn_Master_Power))
              \Keymap(\Keymap_Function(#Btn_Master_Power)) = 0
              Chordian\Machine_State\Value_Master_Button_Power_OnOff = Bool(Not Chordian\Machine_State\Value_Master_Button_Power_OnOff)
              Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None
              Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
              
              For i = #Note_First To #Note_Last
                For n = #Chord_First To #Chord_Last
                  \Keymap(\Keymap_Chord(n, i)) = 0
                Next
              Next
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
            EndIf
            
            If \Keymap(\Keymap_Function(#Btn_Rhythm_Alternate))
              \Keymap(\Keymap_Function(#Btn_Rhythm_Alternate)) = 0
              
              Chordian\Machine_State\Value_Rhythm_Button_Alternate_OnOff = Bool(Not Chordian\Machine_State\Value_Rhythm_Button_Alternate_OnOff)
              
              ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            For i = #Rhythm_First To #Rhythm_Last
              
              If \Keymap(\Keymap_Function(#Btn_Rhythm_First + i))
                \Keymap(\Keymap_Function(#Btn_Rhythm_First + i)) = 0
                
                If #Rhythm_First + i = Chordian\Machine_State\Value_Rhythm_Button_Pattern
                  Chordian\Machine_State\Value_Rhythm_Button_Pattern = #Rhythm_None
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                Else
                  If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                    If Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
                      Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Release
                      Chordian\Machine_State\Status_Sound(#Snd_Chord_1) = #Curve_Release
                      Chordian\Machine_State\Status_Sound(#Snd_Chord_2) = #Curve_Release
                      Chordian\Machine_State\Status_Sound(#Snd_Chord_3) = #Curve_Release
                    ElseIf Chordian\Machine_State\Value_Internal_Chord_Chord <> #Chord_None And Chordian\Machine_State\Value_Internal_Chord_Note <> #Note_None And
                           Chordian\Machine_State\Value_Internal_Chord_Chord <> #Chord_Ignore And Chordian\Machine_State\Value_Internal_Chord_Note <> #Note_Ignore
                      Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Trigger
                      Chordian\Machine_State\Status_Sound(#Snd_Chord_1) = #Curve_Trigger
                      Chordian\Machine_State\Status_Sound(#Snd_Chord_2) = #Curve_Trigger
                      Chordian\Machine_State\Status_Sound(#Snd_Chord_3) = #Curve_Trigger
                    EndIf
                  EndIf
                  Chordian\Machine_State\Value_Rhythm_Button_Pattern = #Rhythm_First + i
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                EndIf
                
                PauseThread(Chordian\RepaintHandler_Thread)
                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                ResumeThread(Chordian\RepaintHandler_Thread)
              EndIf
            Next
            
            
            If \Keymap(\Keymap_Function(#Btn_Rhythm_AutoBassSync))
              \Keymap(\Keymap_Function(#Btn_Rhythm_AutoBassSync)) = 0
              
              Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff = Bool(Not Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff)
              
              If Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
                If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current <> #Rhythm_None
                  Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Release
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_1) = #Curve_Release
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_2) = #Curve_Release
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_3) = #Curve_Release
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                EndIf
              Else
                If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current <> #Rhythm_None And
                   Chordian\Machine_State\Value_Internal_Chord_Chord <> #Chord_None And Chordian\Machine_State\Value_Internal_Chord_Note <> #Note_None And
                   Chordian\Machine_State\Value_Internal_Chord_Chord <> #Chord_Ignore And Chordian\Machine_State\Value_Internal_Chord_Note <> #Note_Ignore
                  Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Trigger
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_1) = #Curve_Trigger
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_2) = #Curve_Trigger
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_3) = #Curve_Trigger
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                EndIf
              EndIf
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            
            If \Keymap(\Keymap_Function(#Btn_Memory))
              \Keymap(\Keymap_Function(#Btn_Memory)) = 0
              
              Chordian\Machine_State\Value_Memory_Button_Memory_OnOff = Bool(Not Chordian\Machine_State\Value_Memory_Button_Memory_OnOff)
              
              If Chordian\Machine_State\Value_Memory_Button_Memory_OnOff
                Chordian\Machine_State\Value_Internal_Memory_Position_Current = 0
              EndIf
              
              Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_None
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
            EndIf
            
            
            If \Keymap(\Keymap_Function(#Btn_Memory_Playback_Record))
              \Keymap(\Keymap_Function(#Btn_Memory_Playback_Record)) = 0
              
              Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff = Bool(Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff)
              
              Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_None
              
              PostEvent(#Event_HandleChordKeys, #Win_Main, 0)
              PostEvent(#Event_HandleHarpKeys, #Win_Main, 0)
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            
            If Chordian\Machine_State\Value_Memory_Button_Repeat_Delete <> \Keymap(\Keymap_Function(#Btn_Memory_Repeat_Delete))
              Chordian\Machine_State\Value_Memory_Button_Repeat_Delete = \Keymap(\Keymap_Function(#Btn_Memory_Repeat_Delete))
              
              If Chordian\Machine_State\Value_Memory_Button_Memory_OnOff
                If Chordian\Machine_State\Value_Memory_Button_Repeat_Delete
                  If Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff
                    Chordian\Machine_State\Value_Internal_Memory_Position_Current-1
                    If Chordian\Machine_State\Value_Internal_Memory_Position_Current < 0
                      Chordian\Machine_State\Value_Internal_Memory_Position_Current = 0
                    EndIf
                    If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                      Chordian\Machine_State\Value_Internal_Tick = 0
                      SendNewTick = 1
                    EndIf
                    
                    Chordian\Machine_State\Value_Internal_Chord_Chord = Chordian\Machine_State\Internal_Memory_Chord_Note(Chordian\Machine_State\Value_Internal_Memory_Position_Current, 0)
                    Chordian\Machine_State\Value_Internal_Chord_Note = Chordian\Machine_State\Internal_Memory_Chord_Note(Chordian\Machine_State\Value_Internal_Memory_Position_Current, 1)
                    
                    If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                      For i = #Snd_Bass_First To #Snd_Bass_Last
                        Chordian\Machine_State\Status_Sound(i) = #Curve_None
                      Next
                      For i = #Snd_Chord_First To #Snd_Chord_Last
                        Chordian\Machine_State\Status_Sound(i) = #Curve_None
                      Next
                      For i = #Snd_Harp_First To #Snd_Harp_Last
                        Chordian\Machine_State\Status_Sound(i) = #Curve_None
                      Next
                      
                      Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Ignore
                      Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ignore
                    EndIf
                    
                    SendNewChord = 1
                    If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                      SendNewTick = 1
                    EndIf
                    
                    If SendNewChord
                      SendNewChord = 0
                      If Not Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
                        Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Trigger
                        For i = #Snd_Chord_First To #Snd_Chord_Last
                          Chordian\Machine_State\Status_Sound(i) = #Curve_Trigger
                        Next
                      EndIf
                      If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
                      EndIf
                      
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                    EndIf
                    If SendNewTick
                      SendNewTick = 0
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTick, 1, 0)
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                    EndIf
                    
                    
                  Else
                    Chordian\Machine_State\Value_Internal_Memory_Position_Current = 0
                    
                    Chordian\Machine_State\Status_Sound(#Snd_Beep) = #Curve_Oneshot
                    
                  EndIf
                EndIf
              EndIf
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
              
            EndIf
            
            
            
            If Chordian\Machine_State\Value_Memory_Button_Playback_Enter <> \Keymap(\Keymap_Function(#Btn_Memory_Playback_Enter))
              Chordian\Machine_State\Value_Memory_Button_Playback_Enter = \Keymap(\Keymap_Function(#Btn_Memory_Playback_Enter))
              If Chordian\Machine_State\Value_Memory_Button_Memory_OnOff
                If Chordian\Machine_State\Value_Memory_Button_Playback_Enter
                  If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff
                    If (Chordian\Machine_State\Value_Internal_Memory_Position_Current <= 51) Or (Chordian\Machine_State\Value_Internal_Memory_Position_Current <= ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note()) And Chordian\Machine_State\Value_External_ChordiateMode)
                      If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                        Chordian\Machine_State\Value_Internal_Tick = 0
                        SendNewTick = 1
                      EndIf
                      
                      Chordian\Machine_State\Value_Internal_Chord_Chord = Chordian\Machine_State\Internal_Memory_Chord_Note(Chordian\Machine_State\Value_Internal_Memory_Position_Current, 0)
                      Chordian\Machine_State\Value_Internal_Chord_Note = Chordian\Machine_State\Internal_Memory_Chord_Note(Chordian\Machine_State\Value_Internal_Memory_Position_Current, 1)
                      Select Chordian\Machine_State\Value_Internal_Chord_Note
                        Case #Note_First_Melodic To #Note_Last_Melodic
                          Chordian\Machine_State\Value_Internal_Chord_Note + Chordian\Machine_State\Value_Internal_Transpose
                          RollInRange(Chordian\Machine_State\Value_Internal_Chord_Note, #Note_First_Melodic, #Note_Last_Melodic)
                      EndSelect
                      
                      If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                        For i = #Snd_Bass_First To #Snd_Bass_Last
                          Chordian\Machine_State\Status_Sound(i) = #Curve_None
                        Next
                        For i = #Snd_Chord_First To #Snd_Chord_Last
                          Chordian\Machine_State\Status_Sound(i) = #Curve_None
                        Next
                        For i = #Snd_Harp_First To #Snd_Harp_Last
                          Chordian\Machine_State\Status_Sound(i) = #Curve_None
                        Next
                        
                        Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Ignore
                        Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ignore
                      EndIf
                      
                      SendNewChord = 1
                      If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                        SendNewTick = 1
                      EndIf
                      
                      If SendNewChord
                        SendNewChord = 0
                        If Not Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
                          Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Trigger
                          For i = #Snd_Chord_First To #Snd_Chord_Last
                            Chordian\Machine_State\Status_Sound(i) = #Curve_Trigger
                          Next
                        EndIf
                        If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                          ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
                        EndIf
                        
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      EndIf
                      If SendNewTick
                        SendNewTick = 0
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTick, 1, 0)
                        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                      EndIf
                      
                      Chordian\Machine_State\Value_Internal_Memory_Position_Current + 1
                      
                    Else
                      Chordian\Machine_State\Status_Sound(#Snd_Beep) = #Curve_Oneshot
                      
                    EndIf
                    
                  Else
                    If (Chordian\Machine_State\Value_Internal_Memory_Position_Current <= 51) Or (Chordian\Machine_State\Value_Internal_Memory_Position_Current <= ArraySize(Chordian\Machine_State\Internal_Memory_Chord_Note()) And Chordian\Machine_State\Value_External_ChordiateMode)
                      
                      If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                        Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Ignore
                        Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ignore
                      EndIf
                      
                      Chordian\Machine_State\Internal_Memory_Chord_Note(Chordian\Machine_State\Value_Internal_Memory_Position_Current, 0) = Chordian\Machine_State\Value_Internal_Chord_Chord
                      Select Chordian\Machine_State\Value_Internal_Chord_Note
                        Case #Note_First_Melodic To #Note_Last_Melodic
                          Chordian\Machine_State\Value_Internal_Chord_Note - Chordian\Machine_State\Value_Internal_Transpose
                          RollInRange(Chordian\Machine_State\Value_Internal_Chord_Note, #Note_First_Melodic, #Note_Last_Melodic)
                      EndSelect
                      Chordian\Machine_State\Internal_Memory_Chord_Note(Chordian\Machine_State\Value_Internal_Memory_Position_Current, 1) = Chordian\Machine_State\Value_Internal_Chord_Note
                      
                      Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None
                      Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                      
                      ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
                      
                      Chordian\Machine_State\Value_Internal_Memory_Position_Current + 1
                      
                      Chordian\Machine_State\Status_Sound(#Snd_Beep) = #Curve_Oneshot
                      
                    Else
                      Chordian\Machine_State\Status_Sound(#Snd_Beep) = #Curve_Trigger
                      
                    EndIf
                    
                  EndIf
                EndIf
              EndIf
              
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
            EndIf
            
          EndWith
          
        Case #PB_Event_RestoreWindow
          SetActiveGadget(#Gad_Canvas)
          
        Case #PB_Event_SizeWindow
          ;--Resize window
          If GetWindowState(#Win_Main) = #PB_Window_Normal And GetMenuItemState(#Men_Main, #Itm_Aspect)
            If WindowWidth(#Win_Main) <> PreviousSizeX And Abs(WindowHeight(#Win_Main) - PreviousSizeY) <= Abs(WindowWidth(#Win_Main) - PreviousSizeX)
              ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, #PB_Ignore, (600 * (WindowWidth(#Win_Main) / 800.0) + 20))
            ElseIf WindowHeight(#Win_Main) <> PreviousSizeY And Abs(WindowWidth(#Win_Main) - PreviousSizeX) <= Abs(WindowHeight(#Win_Main) - PreviousSizeY)
              ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, (800 * ((WindowHeight(#Win_Main) - 20) / 600.0)), #PB_Ignore)
            EndIf
            PreviousSizeX = WindowWidth(#Win_Main)
            PreviousSizeY = WindowHeight(#Win_Main)
          EndIf
          
          While Not WaitForSingleObject_(Chordian\Repaint_Event\Semaphore_Repaint_Done, 0) = #WAIT_OBJECT_0
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Stop, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
          Wend
          
          GetGraphics()
          ResizeGadget(#Gad_Canvas, 0, 0, WindowWidth(#Win_Main), WindowHeight(#Win_Main)-20)
          
          WaitForSingleObject_(Chordian\Repaint_Event\Semaphore_Repaint_Stop, 0)
          
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Base, 1, 0)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
          
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Resume, 1, 0)
          
        Case #PB_Event_CloseWindow
          FlushPreferenceBuffers()
          ClosePreferences()
          
          i = 0
          Repeat
            i + 1
            ReleaseSemaphore_(Chordian\Semaphore_EndPatternHandler, 1, 0)
            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTick, 1, 0)
            If i > 10
              KillThread(Chordian\PatternHandler_Thread)
              Break
            EndIf
          Until WaitThread(Chordian\PatternHandler_Thread, 10)
          
          i = 0
          Repeat
            i + 1
            ReleaseSemaphore_(Chordian\Semaphore_EndFrequencyHandler, 1, 0)
            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
            If i > 10
              KillThread(Chordian\FrequencyHandler_Thread)
              Break
            EndIf
          Until WaitThread(Chordian\FrequencyHandler_Thread, 10)
          
          i = 0
          Repeat
            i + 1
            ReleaseSemaphore_(Chordian\Semaphore_EndMachineHandler, 1, 0)
            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallMachineHandler, 1, 0)
            If i > 10
              KillThread(Chordian\MachineHandler_Thread)
              Break
            EndIf
          Until WaitThread(Chordian\MachineHandler_Thread, 10)
          
          i = 0
          Repeat
            i + 1
            ReleaseSemaphore_(Chordian\Semaphore_EndSynthHandler, 1, 0)
            If i > 10
              KillThread(Chordian\SynthHandler_Thread)
              Break
            EndIf
          Until WaitThread(Chordian\SynthHandler_Thread, 10)
          DirectSound\Release()
          
          i = 0
          Repeat
            i + 1
            ReleaseSemaphore_(Chordian\Semaphore_EndRepaintHandler, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            If i > 10
              KillThread(Chordian\RepaintHandler_Thread)
              Break
            EndIf
          Until WaitThread(Chordian\RepaintHandler_Thread, 10)
          
          If MIDIHandle
            midiOutClose_(MIDIHandle)
          EndIf
          
          ProcedureReturn
          
      EndSelect
    EndIf
  ForEver
  
EndProcedure


Main()
End
