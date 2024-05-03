;-Enumerations
Enumeration -1
  #Chord_None
  #Chord_First
  
  ;Default Chords
  #Chord_Maj = #Chord_First
  #Chord_Min
  #Chord_7th
  #Chord_Dim
  #Chord_Ma7
  #Chord_Mi7
  #Chord_Aug
  
  ;Custom Chords
  #Chord_Ad9
  #Chord_Su4
  
  ;Reserved Chords for future use
  #Chord_Ad2
  #Chord_As2
  #Chord_Ac4
  #Chord_Mc4
  #Chord_Chr
  
  #Chord_Ignore
  #Chord_Last = #Chord_Ignore
EndEnumeration

Enumeration -1
  #Transpose_None
  #Transpose_0
  #Transpose_1
  #Transpose_2
  #Transpose_3
  #Transpose_4
  #Transpose_5
  #Transpose_6
  #Transpose_7
  #Transpose_8
  #Transpose_9
  #Transpose_10
  #Transpose_11
EndEnumeration

Enumeration -1
  #Note_None
  #Note_First
  #Note_First_Melodic = #Note_First
  #Note_Cc = #Note_First_Melodic
  #Note_Db = #Note_Cc
  #Note_Gc
  #Note_Ab = #Note_Gc
  #Note_Dc
  #Note_Eb = #Note_Dc
  #Note_Ac
  #Note_Bb = #Note_Ac
  #Note_F
  #Note_C
  #Note_G
  #Note_D
  #Note_A
  #Note_E
  #Note_B
  #Note_Fc
  #Note_Gb = #Note_Fc
  #Note_Last_Melodic = #Note_Gb
  #Note_Ignore
  #Note_Last = #Note_Ignore
EndEnumeration

Enumeration -1
  #Harp_None
  #Harp_First
  #Harp_1 = #Harp_First
  #Harp_2
  #Harp_3
  #Harp_4
  #Harp_5
  #Harp_6
  #Harp_7
  #Harp_8
  #Harp_9
  #Harp_10
  #Harp_11
  #Harp_12
  #Harp_13
  #Harp_Last = #Harp_13
EndEnumeration

Enumeration -1
  #Rhythm_None
  #Rhythm_First
  #Rhythm_Rock1 = #Rhythm_First
  #Rhythm_March = #Rhythm_Rock1
  #Rhythm_Rock2
  #Rhythm_Tango = #Rhythm_Rock2
  #Rhythm_Disco
  #Rhythm_Blues = #Rhythm_Disco
  #Rhythm_Latin
  #Rhythm_Swing = #Rhythm_Latin
  #Rhythm_Country
  #Rhythm_Waltz = #Rhythm_Country
  #Rhythm_Last = #Rhythm_Waltz
EndEnumeration

Enumeration -1
  #Pattern_None
  #Pattern_First
  #Pattern_Frequency = #Pattern_First
  #Pattern_Bass
  #Pattern_Chords
  #Pattern_Drum_First
  #Pattern_Drum_BD = #Pattern_Drum_First
  #Pattern_Drum_Click
  #Pattern_Drum_HiHat
  #Pattern_Drum_Ride
  #Pattern_Drum_Snare
  #Pattern_Drum_Last = #Pattern_Drum_Snare
  #Pattern_Last = #Pattern_Drum_Last
EndEnumeration

Enumeration 1
  #Snd_First
  #Snd_Bass_First = #Snd_First
  #Snd_Bass = #Snd_Bass_First
  #Snd_Bass_Last = #Snd_Bass
  
  #Snd_Chord_First
  #Snd_Chord_1 = #Snd_Chord_First
  #Snd_Chord_2
  #Snd_Chord_3
  #Snd_Chord_Last = #Snd_Chord_3
  
  #Snd_Harp_First
  #Snd_Harp_1 = #Snd_Harp_First
  #Snd_Harp_2
  #Snd_Harp_3
  #Snd_Harp_4
  #Snd_Harp_5
  #Snd_Harp_6
  #Snd_Harp_7
  #Snd_Harp_8
  #Snd_Harp_9
  #Snd_Harp_10
  #Snd_Harp_11
  #Snd_Harp_12
  #Snd_Harp_13
  #Snd_Harp_Last = #Snd_Harp_13
  
  #Snd_Drum_First
  #Snd_Drum_BD = #Snd_Drum_First
  #Snd_Drum_Click
  #Snd_Drum_HiHat
  #Snd_Drum_Ride
  #Snd_Drum_Snare
  #Snd_Drum_Last = #Snd_Drum_Snare
  
  #Snd_Keyboard_First
  #Snd_Keyboard = #Snd_Keyboard_First
  #Snd_Keyboard_Last = #Snd_Keyboard
  
  #Snd_Beep_First
  #Snd_Beep = #Snd_Beep_First
  #Snd_Beep_Last = #Snd_Beep
  
  #Snd_Last = #Snd_Beep_Last
EndEnumeration

Enumeration 1
  #Img_First
  
  #Img_GUI_First = #Img_First
  #Img_Background = #Img_GUI_First
  
  #Img_Base
  
  #Img_Button_Black_Off
  #Img_Button_Black_On
  #Img_Button_Blue_Off
  #Img_Button_Blue_On
  #Img_Button_Dark_Off
  #Img_Button_Dark_On
  #Img_Button_Dark_C_Off
  #Img_Button_Dark_C_On
  #Img_Button_Dark_X_Off
  #Img_Button_Dark_X_On
  #Img_Button_Dark_Tri_Off
  #Img_Button_Dark_Tri_On
  #Img_Button_Red_Off
  #Img_Button_Red_On
  #Img_Button_Light_Off
  #Img_Button_Light_On
  #Img_Button_Light_Up_Off
  #Img_Button_Light_Up_On
  #Img_Button_Light_Down_Off
  #Img_Button_Light_Down_On
  #Img_Button_Light_O_Off
  #Img_Button_Light_O_On
  #Img_Button_Light_C_Off
  #Img_Button_Light_C_On
  
  #Img_Button_Bar_Light_Off
  #Img_Button_Bar_Light_On
  #Img_Button_Bar_Red_Off
  #Img_Button_Bar_Red_On
  
  #Img_Button_Wide_Black_Off
  #Img_Button_Wide_Black_On
  #Img_Button_Wide_Red_Off
  #Img_Button_Wide_Red_On
  
  #Img_Knob_Big
  #Img_Knob_Ring
  #Img_Knob_Small
  
  #Img_LED_Off
  #Img_LED_On
  
  #Img_GUI_Last = #Img_LED_On
  
  #Img_UI_Curve_None
  #Img_UI_Curve_Trigger
  #Img_UI_Curve_Attack
  #Img_UI_Curve_Decay
  #Img_UI_Curve_Sustain
  #Img_UI_Curve_Release
  #Img_UI_Curve_Oneshot
  #Img_UI_Curve_Ignore
  
  #Img_UI_Chord_Maj
  #Img_UI_Chord_Min
  #Img_UI_Chord_7th
  #Img_UI_Chord_Dim
  #Img_UI_Chord_Ma7
  #Img_UI_Chord_Mi7
  #Img_UI_Chord_Aug
  
  #Img_UI_Chord_Ad9
  #Img_UI_Chord_Su4
  #Img_UI_Chord_Ad2
  #Img_UI_Chord_As2
  #Img_UI_Chord_Ac4
  #Img_UI_Chord_Mc4
  #Img_UI_Chord_Chr
  
  #Img_UI_Note_0
  #Img_UI_Note_1
  #Img_UI_Note_2
  #Img_UI_Note_3
  #Img_UI_Note_4
  #Img_UI_Note_5
  #Img_UI_Note_6
  #Img_UI_Note_7
  #Img_UI_Note_8
  #Img_UI_Note_9
  #Img_UI_Note_10
  #Img_UI_Note_11
  
  #Img_Last = #Img_UI_Note_11
EndEnumeration

Enumeration 0
  #Dat_First
  
  #Dat_Bass_First = #Dat_First
  #Dat_Bass_1 = #Dat_Bass_First
  #Dat_Bass_2
  #Dat_Bass_3
  #Dat_Bass_4
  #Dat_Bass_Last = #Dat_Bass_4
  
  #Dat_Chord_First
  #Dat_Chord_1 = #Dat_Chord_First
  #Dat_Chord_2
  #Dat_Chord_3
  #Dat_Chord_Last = #Dat_Chord_3
  
  #Dat_Harp_First
  #Dat_Harp_1 = #Dat_Harp_First
  #Dat_Harp_2
  #Dat_Harp_3
  #Dat_Harp_4
  #Dat_Harp_5
  #Dat_Harp_6
  #Dat_Harp_7
  #Dat_Harp_8
  #Dat_Harp_9
  #Dat_Harp_10
  #Dat_Harp_11
  #Dat_Harp_12
  #Dat_Harp_13
  #Dat_Harp_Last = #Dat_Harp_13
  
  #Dat_Drum_First
  #Dat_Drum_BD = #Dat_Drum_First
  #Dat_Drum_Click
  #Dat_Drum_HiHat
  #Dat_Drum_Ride
  #Dat_Drum_Snare
  #Dat_Drum_Last = #Dat_Drum_Snare
  
  #Dat_Keyboard
  
  #Dat_Beep
  
  #Dat_Last = #Dat_Beep
EndEnumeration

Enumeration -1
  #Curve_None
  #Curve_First
  #Curve_Trigger = #Curve_First
  #Curve_Attack
  #Curve_Decay
  #Curve_Sustain
  #Curve_Release
  #Curve_Oneshot
  #Curve_Ignore
  #Curve_Last = #Curve_Ignore
EndEnumeration

Enumeration 1
  #Win_Main
  #Win_ChordEdit
  #Win_PatEdit
EndEnumeration

Enumeration 1
  #Gad_Canvas
  
  #Gad_ChordEdit_Button_Refresh
  #Gad_ChordEdit_Button_Import
  #Gad_ChordEdit_Button_Export
  
  #Gad_ChordEdit_Text_Maj
  #Gad_ChordEdit_Text_Min
  #Gad_ChordEdit_Text_7th
  #Gad_ChordEdit_Text_Dim
  #Gad_ChordEdit_Text_Ma7
  #Gad_ChordEdit_Text_Mi7
  #Gad_ChordEdit_Text_Aug
  #Gad_ChordEdit_Text_Chordiate
  #Gad_ChordEdit_Text_Ad9
  #Gad_ChordEdit_Text_Su4
  #Gad_ChordEdit_Text_Ad2
  #Gad_ChordEdit_Text_As2
  #Gad_ChordEdit_Text_Ac4
  #Gad_ChordEdit_Text_Mc4
  #Gad_ChordEdit_Text_Chr
  
  #Gad_ChordEdit_Row_Maj
  #Gad_ChordEdit_Row_Min = #Gad_ChordEdit_Row_Maj + 4
  #Gad_ChordEdit_Row_7th = #Gad_ChordEdit_Row_Min + 4
  #Gad_ChordEdit_Row_Dim = #Gad_ChordEdit_Row_7th + 4
  #Gad_ChordEdit_Row_Ma7 = #Gad_ChordEdit_Row_Dim + 4
  #Gad_ChordEdit_Row_Mi7 = #Gad_ChordEdit_Row_Ma7 + 4
  #Gad_ChordEdit_Row_Aug = #Gad_ChordEdit_Row_Mi7 + 4
  
  #Gad_ChordEdit_Row_Ad9 = #Gad_ChordEdit_Row_Aug + 4
  #Gad_ChordEdit_Row_Su4 = #Gad_ChordEdit_Row_Ad9 + 4
  #Gad_ChordEdit_Row_Ad2 = #Gad_ChordEdit_Row_Su4 + 4
  #Gad_ChordEdit_Row_As2 = #Gad_ChordEdit_Row_Ad2 + 4
  #Gad_ChordEdit_Row_Ac4 = #Gad_ChordEdit_Row_As2 + 4
  #Gad_ChordEdit_Row_Mc4 = #Gad_ChordEdit_Row_Ac4 + 4
  #Gad_ChordEdit_Row_Chr = #Gad_ChordEdit_Row_Mc4 + 4
  
  #Gad_PatEdit_Select_Alternate = #Gad_ChordEdit_Row_Chr + 4
  #Gad_PatEdit_Select_Pattern
  #Gad_PatEdit_Select_Note
  
  #Gad_PatEdit_Button_Refresh
  #Gad_PatEdit_Button_Import
  #Gad_PatEdit_Button_Export
  
  #Gad_PatEdit_Text_0
  #Gad_PatEdit_Text_4
  #Gad_PatEdit_Text_8
  #Gad_PatEdit_Text_12
  
  #Gad_PatEdit_Text_Frequency
  #Gad_PatEdit_Text_Bass
  #Gad_PatEdit_Text_Chords
  #Gad_PatEdit_Text_Drum_BD
  #Gad_PatEdit_Text_Drum_Click
  #Gad_PatEdit_Text_Drum_HiHat
  #Gad_PatEdit_Text_Drum_Ride
  #Gad_PatEdit_Text_Drum_Snare
  
  #Gad_PatEdit_Row_Frequency
  #Gad_PatEdit_Row_Bass = #Gad_PatEdit_Row_Frequency + 32
  #Gad_PatEdit_Row_Chords = #Gad_PatEdit_Row_Bass + 32
  #Gad_PatEdit_Row_Drum_BD = #Gad_PatEdit_Row_Chords + 32
  #Gad_PatEdit_Row_Drum_Click = #Gad_PatEdit_Row_Drum_BD + 32
  #Gad_PatEdit_Row_Drum_HiHat = #Gad_PatEdit_Row_Drum_Click + 32
  #Gad_PatEdit_Row_Drum_Ride = #Gad_PatEdit_Row_Drum_HiHat + 32
  #Gad_PatEdit_Row_Drum_Snare = #Gad_PatEdit_Row_Drum_Ride + 32
EndEnumeration

Enumeration 1
  #Men_Main
EndEnumeration

Enumeration 1
  #Itm_ResetSize
  #Itm_Aspect
  #Itm_Load
  #Itm_Save
  #Itm_ResetState
  #Itm_Exit
  #Itm_Tuning
  #Itm_StrumMode_Primary_First
  #Itm_StrumMode_Primary_None = #Itm_StrumMode_Primary_First
  #Itm_StrumMode_Primary_Single
  #Itm_StrumMode_Primary_Double
  #Itm_StrumMode_Primary_Chord
  #Itm_StrumMode_Primary_Spread
  #Itm_StrumMode_Primary_Octave
  #Itm_StrumMode_Primary_Full
  #Itm_StrumMode_Primary_Reverse
  #Itm_StrumMode_Primary_Mirror
  #Itm_StrumMode_Primary_Segment
  #Itm_StrumMode_Primary_Last = #Itm_StrumMode_Primary_Segment
  #Itm_StrumMode_Secondary_First
  #Itm_StrumMode_Secondary_None = #Itm_StrumMode_Secondary_First
  #Itm_StrumMode_Secondary_Single
  #Itm_StrumMode_Secondary_Double
  #Itm_StrumMode_Secondary_Chord
  #Itm_StrumMode_Secondary_Spread
  #Itm_StrumMode_Secondary_Octave
  #Itm_StrumMode_Secondary_Full
  #Itm_StrumMode_Secondary_Reverse
  #Itm_StrumMode_Secondary_Mirror
  #Itm_StrumMode_Secondary_Segment
  #Itm_StrumMode_Secondary_Last = #Itm_StrumMode_Secondary_Segment
  #Itm_StrumMode_Tertiary_First
  #Itm_StrumMode_Tertiary_None = #Itm_StrumMode_Tertiary_First
  #Itm_StrumMode_Tertiary_Single
  #Itm_StrumMode_Tertiary_Double
  #Itm_StrumMode_Tertiary_Chord
  #Itm_StrumMode_Tertiary_Spread
  #Itm_StrumMode_Tertiary_Octave
  #Itm_StrumMode_Tertiary_Full
  #Itm_StrumMode_Tertiary_Reverse
  #Itm_StrumMode_Tertiary_Mirror
  #Itm_StrumMode_Tertiary_Segment
  #Itm_StrumMode_Tertiary_Last = #Itm_StrumMode_Tertiary_Segment
  #Itm_ChordiateMode
  #Itm_ChordEdit
  #Itm_PatEdit
  #Itm_Manual
  #Itm_About
EndEnumeration

Enumeration -1
  #Str_None
  #Str_Single
  #Str_Double
  #Str_Chord
  #Str_Spread
  #Str_Octave
  #Str_Full
  #Str_Reverse
  #Str_Mirror
  #Str_Segment
EndEnumeration

Enumeration #PB_Event_FirstCustomValue
  #Event_GetTriggers
  #Event_HandleTriggers
  #Event_GeneralKeyDown
  #Event_GeneralKeyUp
  #Event_HandleChordKeys
  #Event_HandleHarpKeys
  #Event_HandleFunctionKeys
EndEnumeration

Enumeration 0
  #JSON_Main
EndEnumeration

Enumeration -1
  #Btn_None
  #Btn_First
  #Btn_Master_Power = #Btn_First
  #Btn_Rhythm_Alternate
  #Btn_Rhythm_First
  #Btn_Rhythm_Rock1_March = #Btn_Rhythm_First
  #Btn_Rhythm_Rock2_Tango
  #Btn_Rhythm_Disco_Blues
  #Btn_Rhythm_Latin_Swing
  #Btn_Rhythm_Country_Waltz
  #Btn_Rhythm_Last = #Btn_Rhythm_Country_Waltz
  #Btn_Rhythm_AutoBassSync
  #Btn_Memory
  #Btn_Memory_Playback_Record
  #Btn_Memory_Repeat_Delete
  #Btn_Memory_Playback_Enter
  #Btn_Chordiate
  #Btn_Last = #Btn_Chordiate
EndEnumeration

