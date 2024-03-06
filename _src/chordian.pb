EnableExplicit
;-Data Sections
;--Graphics Data
DataSection
  Img_Background:
  IncludeBinary "img\background.png"
  Img_Base:
  IncludeBinary "img\base.png"
  Img_Button_Black_Off:
  IncludeBinary "img\button_black_off.png"
  Img_Button_Black_On:
  IncludeBinary "img\button_black_on.png"
  Img_Button_Blue_Off:
  IncludeBinary "img\button_blue_off.png"
  Img_Button_Blue_On:
  IncludeBinary "img\button_blue_on.png"
  Img_Button_Dark_Off:
  IncludeBinary "img\button_dark_off.png"
  Img_Button_Dark_On:
  IncludeBinary "img\button_dark_on.png"
  Img_Button_Dark_C_Off:
  IncludeBinary "img\button_dark_c_off.png"
  Img_Button_Dark_C_On:
  IncludeBinary "img\button_dark_c_on.png"
  Img_Button_Dark_X_Off:
  IncludeBinary "img\button_dark_x_off.png"
  Img_Button_Dark_X_On:
  IncludeBinary "img\button_dark_x_on.png"
  Img_Button_Dark_Tri_Off:
  IncludeBinary "img\button_dark_tri_off.png"
  Img_Button_Dark_Tri_On:
  IncludeBinary "img\button_dark_tri_on.png"
  Img_Button_Red_Off:
  IncludeBinary "img\button_red_off.png"
  Img_Button_Red_On:
  IncludeBinary "img\button_red_on.png"
  Img_Button_Light_Off:
  IncludeBinary "img\button_light_off.png"
  Img_Button_Light_On:
  IncludeBinary "img\button_light_on.png"
  Img_Button_Light_Up_Off:
  IncludeBinary "img\button_light_up_off.png"
  Img_Button_Light_Up_On:
  IncludeBinary "img\button_light_up_on.png"
  Img_Button_Light_Down_Off:
  IncludeBinary "img\button_light_down_off.png"
  Img_Button_Light_Down_On:
  IncludeBinary "img\button_light_down_on.png"
  Img_Button_Light_O_Off:
  IncludeBinary "img\button_light_o_off.png"
  Img_Button_Light_O_On:
  IncludeBinary "img\button_light_o_on.png"
  Img_Button_Light_C_Off:
  IncludeBinary "img\button_light_c_off.png"
  Img_Button_Light_C_On:
  IncludeBinary "img\button_light_c_on.png"
  
  Img_Button_Wide_Off:
  IncludeBinary "img\button_wide_off.png"
  Img_Button_Wide_On:
  IncludeBinary "img\button_wide_on.png"
  
  Img_Knob_Big:
  IncludeBinary "img\knob_big.png"
  Img_Knob_Ring:
  IncludeBinary "img\knob_ring.png"
  Img_Knob_Small:
  IncludeBinary "img\knob_small.png"
  
  Img_LED_Off:
  IncludeBinary "img\led_off.png"
  Img_LED_On:
  IncludeBinary "img\led_on.png"
EndDataSection

;--Sound Data
DataSection
  Snd_Bass:
  IncludeBinary "snd\chordian_bass.wav"
  Snd_Chord:
  IncludeBinary "snd\chordian_chord.wav"
  Snd_Harp:
  IncludeBinary "snd\chordian_harp.wav"
  Snd_Harp_Mod:
  IncludeBinary "snd\chordian_harp_mod.wav"
  Snd_Drum_BD:
  IncludeBinary "snd\chordian_drum_bd.wav"
  Snd_Drum_Click:
  IncludeBinary "snd\chordian_drum_click.wav"
  Snd_Drum_HiHat:
  IncludeBinary "snd\chordian_drum_hihat.wav"
  Snd_Drum_Ride:
  IncludeBinary "snd\chordian_drum_ride.wav"
  Snd_Drum_Snare:
  IncludeBinary "snd\chordian_drum_snare.wav"
  Snd_Keyboard:
  IncludeBinary "snd\chordian_keyboard.wav"
EndDataSection

;-Enumerations

Enumeration -1
  #Chord_None
  #Chord_First
  #Chord_Maj = #Chord_First
  #Chord_Min
  #Chord_7th
  #Chord_Middle = #Chord_7th
  #Chord_Dim
  #Chord_Ma7
  #Chord_Mi7
  #Chord_Aug
  #Chord_Last = #Chord_Aug
EndEnumeration

Enumeration -1
  #Note_None
  #Note_First
  #Note_Cc = #Note_First
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
  #Note_Last = #Note_Gb
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
  #Pattern_Drum_BD
  #Pattern_Drum_Click
  #Pattern_Drum_HiHat
  #Pattern_Drum_Ride
  #Pattern_Drum_Snare
  #Pattern_Last = #Pattern_Drum_Snare
EndEnumeration

Enumeration 1
  #Snd_Bass
  #Snd_Chord_1
  #Snd_Chord_2
  #Snd_Chord_3
  
  #Snd_Harp_1_Vibrato
  #Snd_Harp_1_Standard
  #Snd_Harp_2_Vibrato
  #Snd_Harp_2_Standard
  #Snd_Harp_3_Vibrato
  #Snd_Harp_3_Standard
  #Snd_Harp_4_Vibrato
  #Snd_Harp_4_Standard
  #Snd_Harp_5_Vibrato
  #Snd_Harp_5_Standard
  #Snd_Harp_6_Vibrato
  #Snd_Harp_6_Standard
  #Snd_Harp_7_Vibrato
  #Snd_Harp_7_Standard
  #Snd_Harp_8_Vibrato
  #Snd_Harp_8_Standard
  #Snd_Harp_9_Vibrato
  #Snd_Harp_9_Standard
  #Snd_Harp_10_Vibrato
  #Snd_Harp_10_Standard
  #Snd_Harp_11_Vibrato
  #Snd_Harp_11_Standard
  #Snd_Harp_12_Vibrato
  #Snd_Harp_12_Standard
  #Snd_Harp_13_Vibrato
  #Snd_Harp_13_Standard
  
  #Snd_Drum_BD
  #Snd_Drum_Click
  #Snd_Drum_HiHat
  #Snd_Drum_Ride
  #Snd_Drum_Snare
  
  #Snd_Keyboard
EndEnumeration

Enumeration 1
  #Img_First
  
  #Img_Background = #Img_First
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
  
  #Img_Button_Wide_Off
  #Img_Button_Wide_On
  
  #Img_Knob_Big
  #Img_Knob_Ring
  #Img_Knob_Small
  
  #Img_LED_Off
  #Img_LED_On
  
  #Img_Last = #Img_LED_On
EndEnumeration

Enumeration 0
  #Dat_First
  #Dat_Bass_1 = #Dat_First
  #Dat_Bass_2
  #Dat_Bass_3
  #Dat_Bass_4
  #Dat_Chord_1
  #Dat_Chord_2
  #Dat_Chord_3
  #Dat_Harp_1
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
  #Dat_Drum_BD
  #Dat_Drum_Click
  #Dat_Drum_HiHat
  #Dat_Drum_Ride
  #Dat_Drum_Snare
  #Dat_Keyboard
  #Dat_Last = #Dat_Keyboard
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
  #Curve_Last = #Curve_Oneshot
EndEnumeration

Enumeration 1
  #Win_Main
EndEnumeration

Enumeration 1
  #Gad_Canvas
EndEnumeration

Enumeration 1
  #Men_Main
EndEnumeration

Enumeration 1
  #Itm_Load
  #Itm_Save
  #Itm_Reset
  #Itm_Exit
  #Itm_Tuning
  #Itm_MasterEditMode
  #Itm_Manual
  #Itm_About
EndEnumeration

Enumeration #PB_Event_FirstCustomValue
  #Event_GetTriggers
  #Event_HandleTriggers
  #Event_GeneralKeyDown
  #Event_GeneralKeyUp
  #Event_HandleChordKeys
  #Event_HandleHarpKeys
EndEnumeration

;-Loop Variables
Define i.l
Define n.l
Define s.l
Define p.l
Define r.l

;-Temp Variables
Define TempString.s
Define TempLong1.l
Define TempLong2.l
Define TempFloat.f

;--MIDI Data
Global Dim MIDIs.a(#Note_Last, #Chord_Last, #Dat_Last)

;---MIDI Helper
Procedure.l AutofillDerivedNotes(Note.l, Chord.l)
  MIDIs(Note, Chord, #Dat_Bass_2) = MIDIs(Note, Chord, #Dat_Bass_1)-12
  Select Note
    Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
      MIDIs(Note, Chord, #Dat_Bass_3) = MIDIs(Note, Chord, #Dat_Bass_2)+7
    Default
      MIDIs(Note, Chord, #Dat_Bass_3) = MIDIs(Note, Chord, #Dat_Bass_1)+7
  EndSelect
  Select Chord
    Case #Chord_Maj, #Chord_7th, #Chord_Ma7, #Chord_Aug
      MIDIs(Note, Chord, #Dat_Bass_4) = MIDIs(Note, Chord, #Dat_Bass_3)-3
    Default
      MIDIs(Note, Chord, #Dat_Bass_4) = MIDIs(Note, Chord, #Dat_Bass_3)-4
  EndSelect
  
  MIDIs(Note, Chord, #Dat_Harp_1) = MIDIs(Note, Chord, #Dat_Chord_1)-24
  MIDIs(Note, Chord, #Dat_Harp_2) = MIDIs(Note, Chord, #Dat_Chord_2)-24
  MIDIs(Note, Chord, #Dat_Harp_3) = MIDIs(Note, Chord, #Dat_Chord_3)-24
  MIDIs(Note, Chord, #Dat_Harp_4) = MIDIs(Note, Chord, #Dat_Harp_1)+12
  MIDIs(Note, Chord, #Dat_Harp_5) = MIDIs(Note, Chord, #Dat_Harp_2)+12
  MIDIs(Note, Chord, #Dat_Harp_6) = MIDIs(Note, Chord, #Dat_Harp_3)+12
  MIDIs(Note, Chord, #Dat_Harp_7) = MIDIs(Note, Chord, #Dat_Harp_4)+12
  MIDIs(Note, Chord, #Dat_Harp_8) = MIDIs(Note, Chord, #Dat_Harp_5)+12
  MIDIs(Note, Chord, #Dat_Harp_9) = MIDIs(Note, Chord, #Dat_Harp_6)+12
  MIDIs(Note, Chord, #Dat_Harp_10) = MIDIs(Note, Chord, #Dat_Harp_7)+12
  MIDIs(Note, Chord, #Dat_Harp_11) = MIDIs(Note, Chord, #Dat_Harp_8)+12
  MIDIs(Note, Chord, #Dat_Harp_12) = MIDIs(Note, Chord, #Dat_Harp_9)+12
  MIDIs(Note, Chord, #Dat_Harp_13) = MIDIs(Note, Chord, #Dat_Harp_10)+12
  
EndProcedure

;---C#/Db
;    Maj
MIDIs(#Note_Db, #Chord_Maj, #Dat_Bass_1) = 37
MIDIs(#Note_Db, #Chord_Maj, #Dat_Chord_1) = 49
MIDIs(#Note_Db, #Chord_Maj, #Dat_Chord_2) = 53
MIDIs(#Note_Db, #Chord_Maj, #Dat_Chord_3) = 44
;    Min
MIDIs(#Note_Db, #Chord_Min, #Dat_Bass_1) = 37
MIDIs(#Note_Db, #Chord_Min, #Dat_Chord_1) = 49
MIDIs(#Note_Db, #Chord_Min, #Dat_Chord_2) = 52
MIDIs(#Note_Db, #Chord_Min, #Dat_Chord_3) = 44
;    7th
MIDIs(#Note_Db, #Chord_7th, #Dat_Bass_1) = 37
MIDIs(#Note_Db, #Chord_7th, #Dat_Chord_1) = 49
MIDIs(#Note_Db, #Chord_7th, #Dat_Chord_2) = 53
MIDIs(#Note_Db, #Chord_7th, #Dat_Chord_3) = 47
;    Dim
MIDIs(#Note_Db, #Chord_Dim, #Dat_Bass_1) = 37
MIDIs(#Note_Db, #Chord_Dim, #Dat_Chord_1) = 49
MIDIs(#Note_Db, #Chord_Dim, #Dat_Chord_2) = 52
MIDIs(#Note_Db, #Chord_Dim, #Dat_Chord_3) = 46
;    Ma7
MIDIs(#Note_Db, #Chord_Ma7, #Dat_Bass_1) = 37
MIDIs(#Note_Db, #Chord_Ma7, #Dat_Chord_1) = 49
MIDIs(#Note_Db, #Chord_Ma7, #Dat_Chord_2) = 53
MIDIs(#Note_Db, #Chord_Ma7, #Dat_Chord_3) = 48
;    Mi7
MIDIs(#Note_Db, #Chord_Mi7, #Dat_Bass_1) = 37
MIDIs(#Note_Db, #Chord_Mi7, #Dat_Chord_1) = 49
MIDIs(#Note_Db, #Chord_Mi7, #Dat_Chord_2) = 52
MIDIs(#Note_Db, #Chord_Mi7, #Dat_Chord_3) = 47
;    Aug
MIDIs(#Note_Db, #Chord_Aug, #Dat_Bass_1) = 37
MIDIs(#Note_Db, #Chord_Aug, #Dat_Chord_1) = 49
MIDIs(#Note_Db, #Chord_Aug, #Dat_Chord_2) = 53
MIDIs(#Note_Db, #Chord_Aug, #Dat_Chord_3) = 45

;---G#/Ab
;    Maj
MIDIs(#Note_Ab, #Chord_Maj, #Dat_Bass_1) = 32
MIDIs(#Note_Ab, #Chord_Maj, #Dat_Chord_1) = 44
MIDIs(#Note_Ab, #Chord_Maj, #Dat_Chord_2) = 48
MIDIs(#Note_Ab, #Chord_Maj, #Dat_Chord_3) = 51
;    Min
MIDIs(#Note_Ab, #Chord_Min, #Dat_Bass_1) = 32
MIDIs(#Note_Ab, #Chord_Min, #Dat_Chord_1) = 44
MIDIs(#Note_Ab, #Chord_Min, #Dat_Chord_2) = 47
MIDIs(#Note_Ab, #Chord_Min, #Dat_Chord_3) = 51
;    7th
MIDIs(#Note_Ab, #Chord_7th, #Dat_Bass_1) = 32
MIDIs(#Note_Ab, #Chord_7th, #Dat_Chord_1) = 44
MIDIs(#Note_Ab, #Chord_7th, #Dat_Chord_2) = 48
MIDIs(#Note_Ab, #Chord_7th, #Dat_Chord_3) = 42
;    Dim
MIDIs(#Note_Ab, #Chord_Dim, #Dat_Bass_1) = 32
MIDIs(#Note_Ab, #Chord_Dim, #Dat_Chord_1) = 44
MIDIs(#Note_Ab, #Chord_Dim, #Dat_Chord_2) = 47
MIDIs(#Note_Ab, #Chord_Dim, #Dat_Chord_3) = 53
;    Ma7
MIDIs(#Note_Ab, #Chord_Ma7, #Dat_Bass_1) = 32
MIDIs(#Note_Ab, #Chord_Ma7, #Dat_Chord_1) = 44
MIDIs(#Note_Ab, #Chord_Ma7, #Dat_Chord_2) = 48
MIDIs(#Note_Ab, #Chord_Ma7, #Dat_Chord_3) = 43
;    Mi7
MIDIs(#Note_Ab, #Chord_Mi7, #Dat_Bass_1) = 32
MIDIs(#Note_Ab, #Chord_Mi7, #Dat_Chord_1) = 44
MIDIs(#Note_Ab, #Chord_Mi7, #Dat_Chord_2) = 47
MIDIs(#Note_Ab, #Chord_Mi7, #Dat_Chord_3) = 42
;    Aug
MIDIs(#Note_Ab, #Chord_Aug, #Dat_Bass_1) = 32
MIDIs(#Note_Ab, #Chord_Aug, #Dat_Chord_1) = 44
MIDIs(#Note_Ab, #Chord_Aug, #Dat_Chord_2) = 48
MIDIs(#Note_Ab, #Chord_Aug, #Dat_Chord_3) = 52

;---D#/Eb
;    Maj
MIDIs(#Note_Eb, #Chord_Maj, #Dat_Bass_1) = 39
MIDIs(#Note_Eb, #Chord_Maj, #Dat_Chord_1) = 51
MIDIs(#Note_Eb, #Chord_Maj, #Dat_Chord_2) = 43
MIDIs(#Note_Eb, #Chord_Maj, #Dat_Chord_3) = 46
;    Min
MIDIs(#Note_Eb, #Chord_Min, #Dat_Bass_1) = 39
MIDIs(#Note_Eb, #Chord_Min, #Dat_Chord_1) = 51
MIDIs(#Note_Eb, #Chord_Min, #Dat_Chord_2) = 42
MIDIs(#Note_Eb, #Chord_Min, #Dat_Chord_3) = 46
;    7th
MIDIs(#Note_Eb, #Chord_7th, #Dat_Bass_1) = 39
MIDIs(#Note_Eb, #Chord_7th, #Dat_Chord_1) = 51
MIDIs(#Note_Eb, #Chord_7th, #Dat_Chord_2) = 43
MIDIs(#Note_Eb, #Chord_7th, #Dat_Chord_3) = 49
;    Dim
MIDIs(#Note_Eb, #Chord_Dim, #Dat_Bass_1) = 39
MIDIs(#Note_Eb, #Chord_Dim, #Dat_Chord_1) = 51
MIDIs(#Note_Eb, #Chord_Dim, #Dat_Chord_2) = 42
MIDIs(#Note_Eb, #Chord_Dim, #Dat_Chord_3) = 48
;    Ma7
MIDIs(#Note_Eb, #Chord_Ma7, #Dat_Bass_1) = 39
MIDIs(#Note_Eb, #Chord_Ma7, #Dat_Chord_1) = 51
MIDIs(#Note_Eb, #Chord_Ma7, #Dat_Chord_2) = 43
MIDIs(#Note_Eb, #Chord_Ma7, #Dat_Chord_3) = 50
;    Mi7
MIDIs(#Note_Eb, #Chord_Mi7, #Dat_Bass_1) = 39
MIDIs(#Note_Eb, #Chord_Mi7, #Dat_Chord_1) = 51
MIDIs(#Note_Eb, #Chord_Mi7, #Dat_Chord_2) = 42
MIDIs(#Note_Eb, #Chord_Mi7, #Dat_Chord_3) = 49
;    Aug
MIDIs(#Note_Eb, #Chord_Aug, #Dat_Bass_1) = 39
MIDIs(#Note_Eb, #Chord_Aug, #Dat_Chord_1) = 51
MIDIs(#Note_Eb, #Chord_Aug, #Dat_Chord_2) = 43
MIDIs(#Note_Eb, #Chord_Aug, #Dat_Chord_3) = 47

;---A#/Bb
;    Maj
MIDIs(#Note_Bb, #Chord_Maj, #Dat_Bass_1) = 34
MIDIs(#Note_Bb, #Chord_Maj, #Dat_Chord_1) = 46
MIDIs(#Note_Bb, #Chord_Maj, #Dat_Chord_2) = 50
MIDIs(#Note_Bb, #Chord_Maj, #Dat_Chord_3) = 53
;    Min
MIDIs(#Note_Bb, #Chord_Min, #Dat_Bass_1) = 34
MIDIs(#Note_Bb, #Chord_Min, #Dat_Chord_1) = 46
MIDIs(#Note_Bb, #Chord_Min, #Dat_Chord_2) = 49
MIDIs(#Note_Bb, #Chord_Min, #Dat_Chord_3) = 53
;    7th
MIDIs(#Note_Bb, #Chord_7th, #Dat_Bass_1) = 34
MIDIs(#Note_Bb, #Chord_7th, #Dat_Chord_1) = 46
MIDIs(#Note_Bb, #Chord_7th, #Dat_Chord_2) = 50
MIDIs(#Note_Bb, #Chord_7th, #Dat_Chord_3) = 44
;    Dim
MIDIs(#Note_Bb, #Chord_Dim, #Dat_Bass_1) = 34
MIDIs(#Note_Bb, #Chord_Dim, #Dat_Chord_1) = 46
MIDIs(#Note_Bb, #Chord_Dim, #Dat_Chord_2) = 49
MIDIs(#Note_Bb, #Chord_Dim, #Dat_Chord_3) = 43
;    Ma7
MIDIs(#Note_Bb, #Chord_Ma7, #Dat_Bass_1) = 34
MIDIs(#Note_Bb, #Chord_Ma7, #Dat_Chord_1) = 46
MIDIs(#Note_Bb, #Chord_Ma7, #Dat_Chord_2) = 50
MIDIs(#Note_Bb, #Chord_Ma7, #Dat_Chord_3) = 45
;    Mi7
MIDIs(#Note_Bb, #Chord_Mi7, #Dat_Bass_1) = 34
MIDIs(#Note_Bb, #Chord_Mi7, #Dat_Chord_1) = 46
MIDIs(#Note_Bb, #Chord_Mi7, #Dat_Chord_2) = 49
MIDIs(#Note_Bb, #Chord_Mi7, #Dat_Chord_3) = 44
;    Aug
MIDIs(#Note_Bb, #Chord_Aug, #Dat_Bass_1) = 34
MIDIs(#Note_Bb, #Chord_Aug, #Dat_Chord_1) = 46
MIDIs(#Note_Bb, #Chord_Aug, #Dat_Chord_2) = 50
MIDIs(#Note_Bb, #Chord_Aug, #Dat_Chord_3) = 42

;---F
;    Maj
MIDIs(#Note_F, #Chord_Maj, #Dat_Bass_1) = 41
MIDIs(#Note_F, #Chord_Maj, #Dat_Chord_1) = 53
MIDIs(#Note_F, #Chord_Maj, #Dat_Chord_2) = 45
MIDIs(#Note_F, #Chord_Maj, #Dat_Chord_3) = 48
;    Min
MIDIs(#Note_F, #Chord_Min, #Dat_Bass_1) = 41
MIDIs(#Note_F, #Chord_Min, #Dat_Chord_1) = 53
MIDIs(#Note_F, #Chord_Min, #Dat_Chord_2) = 44
MIDIs(#Note_F, #Chord_Min, #Dat_Chord_3) = 48
;    7th
MIDIs(#Note_F, #Chord_7th, #Dat_Bass_1) = 41
MIDIs(#Note_F, #Chord_7th, #Dat_Chord_1) = 53
MIDIs(#Note_F, #Chord_7th, #Dat_Chord_2) = 45
MIDIs(#Note_F, #Chord_7th, #Dat_Chord_3) = 51
;    Dim
MIDIs(#Note_F, #Chord_Dim, #Dat_Bass_1) = 41
MIDIs(#Note_F, #Chord_Dim, #Dat_Chord_1) = 53
MIDIs(#Note_F, #Chord_Dim, #Dat_Chord_2) = 44
MIDIs(#Note_F, #Chord_Dim, #Dat_Chord_3) = 50
;    Ma7
MIDIs(#Note_F, #Chord_Ma7, #Dat_Bass_1) = 41
MIDIs(#Note_F, #Chord_Ma7, #Dat_Chord_1) = 53
MIDIs(#Note_F, #Chord_Ma7, #Dat_Chord_2) = 45
MIDIs(#Note_F, #Chord_Ma7, #Dat_Chord_3) = 52
;    Mi7
MIDIs(#Note_F, #Chord_Mi7, #Dat_Bass_1) = 41
MIDIs(#Note_F, #Chord_Mi7, #Dat_Chord_1) = 53
MIDIs(#Note_F, #Chord_Mi7, #Dat_Chord_2) = 44
MIDIs(#Note_F, #Chord_Mi7, #Dat_Chord_3) = 51
;    Aug
MIDIs(#Note_F, #Chord_Aug, #Dat_Bass_1) = 41
MIDIs(#Note_F, #Chord_Aug, #Dat_Chord_1) = 53
MIDIs(#Note_F, #Chord_Aug, #Dat_Chord_2) = 45
MIDIs(#Note_F, #Chord_Aug, #Dat_Chord_3) = 49

;---C
;    Maj
MIDIs(#Note_C, #Chord_Maj, #Dat_Bass_1) = 36
MIDIs(#Note_C, #Chord_Maj, #Dat_Chord_1) = 48
MIDIs(#Note_C, #Chord_Maj, #Dat_Chord_2) = 52
MIDIs(#Note_C, #Chord_Maj, #Dat_Chord_3) = 43
;    Min
MIDIs(#Note_C, #Chord_Min, #Dat_Bass_1) = 36
MIDIs(#Note_C, #Chord_Min, #Dat_Chord_1) = 48
MIDIs(#Note_C, #Chord_Min, #Dat_Chord_2) = 51
MIDIs(#Note_C, #Chord_Min, #Dat_Chord_3) = 43
;    7th
MIDIs(#Note_C, #Chord_7th, #Dat_Bass_1) = 36
MIDIs(#Note_C, #Chord_7th, #Dat_Chord_1) = 48
MIDIs(#Note_C, #Chord_7th, #Dat_Chord_2) = 52
MIDIs(#Note_C, #Chord_7th, #Dat_Chord_3) = 46
;    Dim
MIDIs(#Note_C, #Chord_Dim, #Dat_Bass_1) = 36
MIDIs(#Note_C, #Chord_Dim, #Dat_Chord_1) = 48
MIDIs(#Note_C, #Chord_Dim, #Dat_Chord_2) = 51
MIDIs(#Note_C, #Chord_Dim, #Dat_Chord_3) = 45
;    Ma7
MIDIs(#Note_C, #Chord_Ma7, #Dat_Bass_1) = 36
MIDIs(#Note_C, #Chord_Ma7, #Dat_Chord_1) = 48
MIDIs(#Note_C, #Chord_Ma7, #Dat_Chord_2) = 52
MIDIs(#Note_C, #Chord_Ma7, #Dat_Chord_3) = 47
;    Mi7
MIDIs(#Note_C, #Chord_Mi7, #Dat_Bass_1) = 36
MIDIs(#Note_C, #Chord_Mi7, #Dat_Chord_1) = 48
MIDIs(#Note_C, #Chord_Mi7, #Dat_Chord_2) = 51
MIDIs(#Note_C, #Chord_Mi7, #Dat_Chord_3) = 46
;    Aug
MIDIs(#Note_C, #Chord_Aug, #Dat_Bass_1) = 36
MIDIs(#Note_C, #Chord_Aug, #Dat_Chord_1) = 48
MIDIs(#Note_C, #Chord_Aug, #Dat_Chord_2) = 52
MIDIs(#Note_C, #Chord_Aug, #Dat_Chord_3) = 44

;---G
;    Maj
MIDIs(#Note_G, #Chord_Maj, #Dat_Bass_1) = 31
MIDIs(#Note_G, #Chord_Maj, #Dat_Chord_1) = 43
MIDIs(#Note_G, #Chord_Maj, #Dat_Chord_2) = 47
MIDIs(#Note_G, #Chord_Maj, #Dat_Chord_3) = 50
;    Min
MIDIs(#Note_G, #Chord_Min, #Dat_Bass_1) = 31
MIDIs(#Note_G, #Chord_Min, #Dat_Chord_1) = 43
MIDIs(#Note_G, #Chord_Min, #Dat_Chord_2) = 46
MIDIs(#Note_G, #Chord_Min, #Dat_Chord_3) = 50
;    7th
MIDIs(#Note_G, #Chord_7th, #Dat_Bass_1) = 31
MIDIs(#Note_G, #Chord_7th, #Dat_Chord_1) = 43
MIDIs(#Note_G, #Chord_7th, #Dat_Chord_2) = 47
MIDIs(#Note_G, #Chord_7th, #Dat_Chord_3) = 53
;    Dim
MIDIs(#Note_G, #Chord_Dim, #Dat_Bass_1) = 31
MIDIs(#Note_G, #Chord_Dim, #Dat_Chord_1) = 43
MIDIs(#Note_G, #Chord_Dim, #Dat_Chord_2) = 46
MIDIs(#Note_G, #Chord_Dim, #Dat_Chord_3) = 52
;    Ma7
MIDIs(#Note_G, #Chord_Ma7, #Dat_Bass_1) = 31
MIDIs(#Note_G, #Chord_Ma7, #Dat_Chord_1) = 43
MIDIs(#Note_G, #Chord_Ma7, #Dat_Chord_2) = 47
MIDIs(#Note_G, #Chord_Ma7, #Dat_Chord_3) = 42
;    Mi7
MIDIs(#Note_G, #Chord_Mi7, #Dat_Bass_1) = 31
MIDIs(#Note_G, #Chord_Mi7, #Dat_Chord_1) = 43
MIDIs(#Note_G, #Chord_Mi7, #Dat_Chord_2) = 46
MIDIs(#Note_G, #Chord_Mi7, #Dat_Chord_3) = 53
;    Aug
MIDIs(#Note_G, #Chord_Aug, #Dat_Bass_1) = 31
MIDIs(#Note_G, #Chord_Aug, #Dat_Chord_1) = 43
MIDIs(#Note_G, #Chord_Aug, #Dat_Chord_2) = 47
MIDIs(#Note_G, #Chord_Aug, #Dat_Chord_3) = 51

;---D
;    Maj
MIDIs(#Note_D, #Chord_Maj, #Dat_Bass_1) = 38
MIDIs(#Note_D, #Chord_Maj, #Dat_Chord_1) = 50
MIDIs(#Note_D, #Chord_Maj, #Dat_Chord_2) = 42
MIDIs(#Note_D, #Chord_Maj, #Dat_Chord_3) = 45
;    Min
MIDIs(#Note_D, #Chord_Min, #Dat_Bass_1) = 38
MIDIs(#Note_D, #Chord_Min, #Dat_Chord_1) = 50
MIDIs(#Note_D, #Chord_Min, #Dat_Chord_2) = 53
MIDIs(#Note_D, #Chord_Min, #Dat_Chord_3) = 45
;    7th
MIDIs(#Note_D, #Chord_7th, #Dat_Bass_1) = 38
MIDIs(#Note_D, #Chord_7th, #Dat_Chord_1) = 50
MIDIs(#Note_D, #Chord_7th, #Dat_Chord_2) = 42
MIDIs(#Note_D, #Chord_7th, #Dat_Chord_3) = 48
;    Dim
MIDIs(#Note_D, #Chord_Dim, #Dat_Bass_1) = 38
MIDIs(#Note_D, #Chord_Dim, #Dat_Chord_1) = 50
MIDIs(#Note_D, #Chord_Dim, #Dat_Chord_2) = 53
MIDIs(#Note_D, #Chord_Dim, #Dat_Chord_3) = 47
;    Ma7
MIDIs(#Note_D, #Chord_Ma7, #Dat_Bass_1) = 38
MIDIs(#Note_D, #Chord_Ma7, #Dat_Chord_1) = 50
MIDIs(#Note_D, #Chord_Ma7, #Dat_Chord_2) = 42
MIDIs(#Note_D, #Chord_Ma7, #Dat_Chord_3) = 49
;    Mi7
MIDIs(#Note_D, #Chord_Mi7, #Dat_Bass_1) = 38
MIDIs(#Note_D, #Chord_Mi7, #Dat_Chord_1) = 50
MIDIs(#Note_D, #Chord_Mi7, #Dat_Chord_2) = 53
MIDIs(#Note_D, #Chord_Mi7, #Dat_Chord_3) = 48
;    Aug
MIDIs(#Note_D, #Chord_Aug, #Dat_Bass_1) = 38
MIDIs(#Note_D, #Chord_Aug, #Dat_Chord_1) = 50
MIDIs(#Note_D, #Chord_Aug, #Dat_Chord_2) = 42
MIDIs(#Note_D, #Chord_Aug, #Dat_Chord_3) = 46

;---A
;    Maj
MIDIs(#Note_A, #Chord_Maj, #Dat_Bass_1) = 33
MIDIs(#Note_A, #Chord_Maj, #Dat_Chord_1) = 45
MIDIs(#Note_A, #Chord_Maj, #Dat_Chord_2) = 49
MIDIs(#Note_A, #Chord_Maj, #Dat_Chord_3) = 52
;    Min
MIDIs(#Note_A, #Chord_Min, #Dat_Bass_1) = 33
MIDIs(#Note_A, #Chord_Min, #Dat_Chord_1) = 45
MIDIs(#Note_A, #Chord_Min, #Dat_Chord_2) = 48
MIDIs(#Note_A, #Chord_Min, #Dat_Chord_3) = 52
;    7th
MIDIs(#Note_A, #Chord_7th, #Dat_Bass_1) = 33
MIDIs(#Note_A, #Chord_7th, #Dat_Chord_1) = 45
MIDIs(#Note_A, #Chord_7th, #Dat_Chord_2) = 49
MIDIs(#Note_A, #Chord_7th, #Dat_Chord_3) = 43
;    Dim
MIDIs(#Note_A, #Chord_Dim, #Dat_Bass_1) = 33
MIDIs(#Note_A, #Chord_Dim, #Dat_Chord_1) = 45
MIDIs(#Note_A, #Chord_Dim, #Dat_Chord_2) = 48
MIDIs(#Note_A, #Chord_Dim, #Dat_Chord_3) = 42
;    Ma7
MIDIs(#Note_A, #Chord_Ma7, #Dat_Bass_1) = 33
MIDIs(#Note_A, #Chord_Ma7, #Dat_Chord_1) = 45
MIDIs(#Note_A, #Chord_Ma7, #Dat_Chord_2) = 49
MIDIs(#Note_A, #Chord_Ma7, #Dat_Chord_3) = 44
;    Mi7
MIDIs(#Note_A, #Chord_Mi7, #Dat_Bass_1) = 33
MIDIs(#Note_A, #Chord_Mi7, #Dat_Chord_1) = 45
MIDIs(#Note_A, #Chord_Mi7, #Dat_Chord_2) = 48
MIDIs(#Note_A, #Chord_Mi7, #Dat_Chord_3) = 43
;    Aug
MIDIs(#Note_A, #Chord_Aug, #Dat_Bass_1) = 33
MIDIs(#Note_A, #Chord_Aug, #Dat_Chord_1) = 45
MIDIs(#Note_A, #Chord_Aug, #Dat_Chord_2) = 49
MIDIs(#Note_A, #Chord_Aug, #Dat_Chord_3) = 53

;---E
;    Maj
MIDIs(#Note_E, #Chord_Maj, #Dat_Bass_1) = 40
MIDIs(#Note_E, #Chord_Maj, #Dat_Chord_1) = 52
MIDIs(#Note_E, #Chord_Maj, #Dat_Chord_2) = 44
MIDIs(#Note_E, #Chord_Maj, #Dat_Chord_3) = 47
;    Min
MIDIs(#Note_E, #Chord_Min, #Dat_Bass_1) = 40
MIDIs(#Note_E, #Chord_Min, #Dat_Chord_1) = 52
MIDIs(#Note_E, #Chord_Min, #Dat_Chord_2) = 43
MIDIs(#Note_E, #Chord_Min, #Dat_Chord_3) = 47
;    7th
MIDIs(#Note_E, #Chord_7th, #Dat_Bass_1) = 40
MIDIs(#Note_E, #Chord_7th, #Dat_Chord_1) = 52
MIDIs(#Note_E, #Chord_7th, #Dat_Chord_2) = 44
MIDIs(#Note_E, #Chord_7th, #Dat_Chord_3) = 50
;    Dim
MIDIs(#Note_E, #Chord_Dim, #Dat_Bass_1) = 40
MIDIs(#Note_E, #Chord_Dim, #Dat_Chord_1) = 52
MIDIs(#Note_E, #Chord_Dim, #Dat_Chord_2) = 43
MIDIs(#Note_E, #Chord_Dim, #Dat_Chord_3) = 49
;    Ma7
MIDIs(#Note_E, #Chord_Ma7, #Dat_Bass_1) = 40
MIDIs(#Note_E, #Chord_Ma7, #Dat_Chord_1) = 52
MIDIs(#Note_E, #Chord_Ma7, #Dat_Chord_2) = 44
MIDIs(#Note_E, #Chord_Ma7, #Dat_Chord_3) = 51
;    Mi7
MIDIs(#Note_E, #Chord_Mi7, #Dat_Bass_1) = 40
MIDIs(#Note_E, #Chord_Mi7, #Dat_Chord_1) = 52
MIDIs(#Note_E, #Chord_Mi7, #Dat_Chord_2) = 43
MIDIs(#Note_E, #Chord_Mi7, #Dat_Chord_3) = 50
;    Aug
MIDIs(#Note_E, #Chord_Aug, #Dat_Bass_1) = 40
MIDIs(#Note_E, #Chord_Aug, #Dat_Chord_1) = 52
MIDIs(#Note_E, #Chord_Aug, #Dat_Chord_2) = 44
MIDIs(#Note_E, #Chord_Aug, #Dat_Chord_3) = 48

;---B
;    Maj
MIDIs(#Note_B, #Chord_Maj, #Dat_Bass_1) = 35
MIDIs(#Note_B, #Chord_Maj, #Dat_Chord_1) = 47
MIDIs(#Note_B, #Chord_Maj, #Dat_Chord_2) = 51
MIDIs(#Note_B, #Chord_Maj, #Dat_Chord_3) = 42
;    Min
MIDIs(#Note_B, #Chord_Min, #Dat_Bass_1) = 35
MIDIs(#Note_B, #Chord_Min, #Dat_Chord_1) = 47
MIDIs(#Note_B, #Chord_Min, #Dat_Chord_2) = 50
MIDIs(#Note_B, #Chord_Min, #Dat_Chord_3) = 42
;    7th
MIDIs(#Note_B, #Chord_7th, #Dat_Bass_1) = 35
MIDIs(#Note_B, #Chord_7th, #Dat_Chord_1) = 47
MIDIs(#Note_B, #Chord_7th, #Dat_Chord_2) = 51
MIDIs(#Note_B, #Chord_7th, #Dat_Chord_3) = 45
;    Dim
MIDIs(#Note_B, #Chord_Dim, #Dat_Bass_1) = 35
MIDIs(#Note_B, #Chord_Dim, #Dat_Chord_1) = 47
MIDIs(#Note_B, #Chord_Dim, #Dat_Chord_2) = 50
MIDIs(#Note_B, #Chord_Dim, #Dat_Chord_3) = 44
;    Ma7
MIDIs(#Note_B, #Chord_Ma7, #Dat_Bass_1) = 35
MIDIs(#Note_B, #Chord_Ma7, #Dat_Chord_1) = 47
MIDIs(#Note_B, #Chord_Ma7, #Dat_Chord_2) = 51
MIDIs(#Note_B, #Chord_Ma7, #Dat_Chord_3) = 46
;    Mi7
MIDIs(#Note_B, #Chord_Mi7, #Dat_Bass_1) = 35
MIDIs(#Note_B, #Chord_Mi7, #Dat_Chord_1) = 47
MIDIs(#Note_B, #Chord_Mi7, #Dat_Chord_2) = 50
MIDIs(#Note_B, #Chord_Mi7, #Dat_Chord_3) = 45
;    Aug
MIDIs(#Note_B, #Chord_Aug, #Dat_Bass_1) = 35
MIDIs(#Note_B, #Chord_Aug, #Dat_Chord_1) = 47
MIDIs(#Note_B, #Chord_Aug, #Dat_Chord_2) = 51
MIDIs(#Note_B, #Chord_Aug, #Dat_Chord_3) = 43

;---F#/Gb
;    Maj
MIDIs(#Note_Fc, #Chord_Maj, #Dat_Bass_1) = 30
MIDIs(#Note_Fc, #Chord_Maj, #Dat_Chord_1) = 42
MIDIs(#Note_Fc, #Chord_Maj, #Dat_Chord_2) = 46
MIDIs(#Note_Fc, #Chord_Maj, #Dat_Chord_3) = 49
;    Min
MIDIs(#Note_Fc, #Chord_Min, #Dat_Bass_1) = 30
MIDIs(#Note_Fc, #Chord_Min, #Dat_Chord_1) = 42
MIDIs(#Note_Fc, #Chord_Min, #Dat_Chord_2) = 45
MIDIs(#Note_Fc, #Chord_Min, #Dat_Chord_3) = 49
;    7th
MIDIs(#Note_Fc, #Chord_7th, #Dat_Bass_1) = 30
MIDIs(#Note_Fc, #Chord_7th, #Dat_Chord_1) = 42
MIDIs(#Note_Fc, #Chord_7th, #Dat_Chord_2) = 46
MIDIs(#Note_Fc, #Chord_7th, #Dat_Chord_3) = 52
;    Dim
MIDIs(#Note_Fc, #Chord_Dim, #Dat_Bass_1) = 30
MIDIs(#Note_Fc, #Chord_Dim, #Dat_Chord_1) = 42
MIDIs(#Note_Fc, #Chord_Dim, #Dat_Chord_2) = 45
MIDIs(#Note_Fc, #Chord_Dim, #Dat_Chord_3) = 51
;    Ma7
MIDIs(#Note_Fc, #Chord_Ma7, #Dat_Bass_1) = 30
MIDIs(#Note_Fc, #Chord_Ma7, #Dat_Chord_1) = 42
MIDIs(#Note_Fc, #Chord_Ma7, #Dat_Chord_2) = 46
MIDIs(#Note_Fc, #Chord_Ma7, #Dat_Chord_3) = 53
;    Mi7
MIDIs(#Note_Fc, #Chord_Mi7, #Dat_Bass_1) = 30
MIDIs(#Note_Fc, #Chord_Mi7, #Dat_Chord_1) = 42
MIDIs(#Note_Fc, #Chord_Mi7, #Dat_Chord_2) = 45
MIDIs(#Note_Fc, #Chord_Mi7, #Dat_Chord_3) = 52
;    Aug
MIDIs(#Note_Fc, #Chord_Aug, #Dat_Bass_1) = 30
MIDIs(#Note_Fc, #Chord_Aug, #Dat_Chord_1) = 42
MIDIs(#Note_Fc, #Chord_Aug, #Dat_Chord_2) = 46
MIDIs(#Note_Fc, #Chord_Aug, #Dat_Chord_3) = 50

;---Autofill
For i = #Note_First To #Note_Last
  For n = #Chord_First To #Chord_Last
    AutofillDerivedNotes(i, n)
  Next
Next

;--Frequency Data
Global Tuning.f = 440.0
Global Dim Frequencies.l(#Note_Last, #Chord_Last, #Dat_Last)
Global Dim FrequenciesKeyboard.l(127)

For i = #Note_First To #Note_Last
  For n = #Chord_First To #Chord_Last
    For s = #Dat_First To #Dat_Last
      Frequencies(i, n, s) = Tuning*Pow(2.0, (MIDIs(i, n, s)-71)/12.0)*225.0
    Next
  Next
Next

For i = 0 To 127
  FrequenciesKeyboard(i) = 440.0*Pow(2.0, (i-71)/12.0)*225.0
Next

;--Pattern Data
; This is used for pattern data.

Global Dim Patterns.b(1, #Rhythm_Last, #Note_Last, 31, #Pattern_Last)

For s = 0 To 1
  For r = #Rhythm_First To #Rhythm_Last
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        For p = #Pattern_First To #Pattern_Last
          Patterns(s, r, n, i, p) = #Curve_Release
        Next
        Patterns(s, r, n, i, #Pattern_Frequency) = 0
      Next
    Next
  Next
Next

;---Rock1
For i = #Note_First To #Note_Last
  
  Patterns(0, #Rhythm_Rock1, i, 0, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock1, i, 1, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock1, i, 6, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock1, i, 7, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock1, i, 8, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock1, i, 9, #Pattern_Bass) = #Curve_Release
  
  Patterns(0, #Rhythm_Rock1, i, 0+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock1, i, 1+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock1, i, 6+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock1, i, 7+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock1, i, 8+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock1, i, 9+16, #Pattern_Bass) = #Curve_Release
  
  Patterns(0, #Rhythm_Rock1, i, 12+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock1, i, 13+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock1, i, 14+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock1, i, 15+16, #Pattern_Bass) = #Curve_Release
  
  
  Patterns(0, #Rhythm_Rock1, i, 4, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 6, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 12, #Pattern_Chords) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock1, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 6+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock1, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 6, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock1, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 6+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock1, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 6, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 14, #Pattern_Drum_HiHat) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock1, i, 0+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 2+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 6+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 8+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 14+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock1, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 14, #Pattern_Drum_Snare) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock1, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock1, i, 14+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  
Next
For n = #Note_First To #Note_Last
  For i = 0 To 31
    Select i
      Case 8 To 15, 8+16 To 11+16, 14+16 To 15+16
        Patterns(0, #Rhythm_Rock1, n, i, #Pattern_Frequency) = 2
      Case 12+16 To 13+16
        Patterns(0, #Rhythm_Rock1, n, i, #Pattern_Frequency) = 3
      Default
        Select n
          Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
            Patterns(0, #Rhythm_Rock1, n, i, #Pattern_Frequency) = 1
          Default
            Patterns(0, #Rhythm_Rock1, n, i, #Pattern_Frequency) = 0
        EndSelect
    EndSelect
  Next
Next


;---Rock2
For i = #Note_First To #Note_Last
  Patterns(0, #Rhythm_Rock2, i, 0, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock2, i, 1, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock2, i, 6, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock2, i, 7, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock2, i, 8, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock2, i, 9, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock2, i, 14, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock2, i, 15, #Pattern_Bass) = #Curve_Release
  
  Patterns(0, #Rhythm_Rock2, i, 0+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock2, i, 1+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock2, i, 6+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock2, i, 7+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock2, i, 8+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock2, i, 9+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Rock2, i, 14+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Rock2, i, 15+16, #Pattern_Bass) = #Curve_Release
  
  Patterns(0, #Rhythm_Rock2, i, 4, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 12, #Pattern_Chords) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock2, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock2, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 6, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock2, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 6+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock2, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 6, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock2, i, 0+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 2+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 6+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 8+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock2, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock2, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Rock2, i, 14, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Rock2, i, 14+16, #Pattern_Drum_Ride) = #Curve_Oneshot
Next

For n = #Note_First To #Note_Last
  For i = 0 To 31
    Select n
      Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
        Patterns(0, #Rhythm_Rock2, n, i, #Pattern_Frequency) = 1
      Default
        Patterns(0, #Rhythm_Rock2, n, i, #Pattern_Frequency) = 0
    EndSelect
  Next
Next


;---Disco
For i = #Note_First To #Note_Last
  Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 0+16, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 4+16, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 8+16, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 12+16, #Pattern_Bass) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 14+16, #Pattern_Bass) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Disco, i, 2, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 5, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 11, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 2+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 5+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 8+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 11+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 14+16, #Pattern_Chords) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 7, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 13, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 15, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 7+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 1, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 3, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 5, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 6, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 7, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 9, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 11, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 13, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 15, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 0+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 1+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 2+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 3+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 5+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 6+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 7+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 8+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 9+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 11+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 13+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 14+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 15+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Disco, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
Next

For n = #Note_First To #Note_Last
  For i = 0 To 31
    Select n
      Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
        Patterns(0, #Rhythm_Disco, n, i, #Pattern_Frequency) = 1
      Default
        Patterns(0, #Rhythm_Disco, n, i, #Pattern_Frequency) = 0
    EndSelect
  Next
Next


;---Latin
For i = #Note_First To #Note_Last
  Patterns(0, #Rhythm_Latin, i, 0, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Latin, i, 1, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Latin, i, 8, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Latin, i, 9, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Latin, i, 12, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Latin, i, 13, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Latin, i, 0+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Latin, i, 1+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Latin, i, 6+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Latin, i, 7+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Latin, i, 8+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Latin, i, 9+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Latin, i, 14+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Latin, i, 15+16, #Pattern_Bass) = #Curve_Release
  
  Patterns(0, #Rhythm_Latin, i, 0, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 4, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 10, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 14, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 2+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 6+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 10+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 12+16, #Pattern_Chords) = #Curve_Trigger
  Patterns(0, #Rhythm_Latin, i, 13+16, #Pattern_Chords) = #Curve_Release
  
  Patterns(0, #Rhythm_Latin, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 14, #Pattern_Drum_BD) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Latin, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 14+16, #Pattern_Drum_BD) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Latin, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 3, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 6, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 11, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 14, #Pattern_Drum_HiHat) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Latin, i, 2+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 3+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 6+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 11+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 14+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Latin, i, 6, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 6+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Latin, i, 12, #Pattern_Drum_Click) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 14, #Pattern_Drum_Click) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 12+16, #Pattern_Drum_Click) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 14+16, #Pattern_Drum_Click) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Latin, i, 0, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 8, #Pattern_Drum_Ride) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Latin, i, 0+16, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Latin, i, 8+16, #Pattern_Drum_Ride) = #Curve_Oneshot
Next

For n = #Note_First To #Note_Last
  For i = 0 To 31
    Select i
      Case 12 To 15, 8+16 To 15+16
        Patterns(0, #Rhythm_Latin, n, i, #Pattern_Frequency) = 2
      Case 8 To 11
        Patterns(0, #Rhythm_Latin, n, i, #Pattern_Frequency) = 3
      Default
        Select n
          Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
            Patterns(0, #Rhythm_Latin, n, i, #Pattern_Frequency) = 1
          Default
            Patterns(0, #Rhythm_Latin, n, i, #Pattern_Frequency) = 0
        EndSelect
    EndSelect
  Next
Next


;---Country
For i = #Note_First To #Note_Last
  Patterns(0, #Rhythm_Country, i, 0, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Country, i, 1, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Country, i, 8, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Country, i, 9, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Country, i, 0+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Country, i, 1+16, #Pattern_Bass) = #Curve_Release
  Patterns(0, #Rhythm_Country, i, 8+16, #Pattern_Bass) = #Curve_Trigger
  Patterns(0, #Rhythm_Country, i, 9+16, #Pattern_Bass) = #Curve_Release
  
  Patterns(0, #Rhythm_Country, i, 4, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 12, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Country, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Country, i, 3, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 7, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 11, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 15, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 3+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 7+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 11+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 15+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Country, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 10+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 11+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 14+16, #Pattern_Drum_Snare) = #Curve_Oneshot
  
  Patterns(0, #Rhythm_Country, i, 0, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 4, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 8, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 12, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 0+16, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 4+16, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 8+16, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 12+16, #Pattern_Drum_Ride) = #Curve_Oneshot
  Patterns(0, #Rhythm_Country, i, 14+16, #Pattern_Drum_Ride) = #Curve_Oneshot
Next

For n = #Note_First To #Note_Last
  For i = 0 To 31
    Select i
      Case 8 To 15, 8+16 To 15+16
        Patterns(0, #Rhythm_Country, n, i, #Pattern_Frequency) = 2
      Default
        Select n
          Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
            Patterns(0, #Rhythm_Country, n, i, #Pattern_Frequency) = 1
          Default
            Patterns(0, #Rhythm_Country, n, i, #Pattern_Frequency) = 0
        EndSelect
    EndSelect
  Next
Next

;---March (Not implemented)
;---Tango (Not implemented)
;---Blues (Not implemented)
;---Swing (Not implemented)
;---Waltz (Not implemented)

;--Chord Key Data
Global Dim ChordKeys.u(#Chord_Last, #Note_Last)
ChordKeys(#Chord_Maj, #Note_Db) = #VK_1
ChordKeys(#Chord_Min, #Note_Db) = #VK_Q
ChordKeys(#Chord_7th, #Note_Db) = #VK_A

ChordKeys(#Chord_Maj, #Note_Ab) = #VK_2
ChordKeys(#Chord_Min, #Note_Ab) = #VK_W
ChordKeys(#Chord_7th, #Note_Ab) = #VK_S

ChordKeys(#Chord_Maj, #Note_Eb) = #VK_3
ChordKeys(#Chord_Min, #Note_Eb) = #VK_E
ChordKeys(#Chord_7th, #Note_Eb) = #VK_D

ChordKeys(#Chord_Maj, #Note_Bb) = #VK_4
ChordKeys(#Chord_Min, #Note_Bb) = #VK_R
ChordKeys(#Chord_7th, #Note_Bb) = #VK_F

ChordKeys(#Chord_Maj, #Note_F) = #VK_5
ChordKeys(#Chord_Min, #Note_F) = #VK_T
ChordKeys(#Chord_7th, #Note_F) = #VK_G

ChordKeys(#Chord_Maj, #Note_C) = #VK_6
ChordKeys(#Chord_Min, #Note_C) = #VK_Z
ChordKeys(#Chord_7th, #Note_C) = #VK_H

ChordKeys(#Chord_Maj, #Note_G) = #VK_7
ChordKeys(#Chord_Min, #Note_G) = #VK_U
ChordKeys(#Chord_7th, #Note_G) = #VK_J

ChordKeys(#Chord_Maj, #Note_D) = #VK_8
ChordKeys(#Chord_Min, #Note_D) = #VK_I
ChordKeys(#Chord_7th, #Note_D) = #VK_K

ChordKeys(#Chord_Maj, #Note_A) = #VK_9
ChordKeys(#Chord_Min, #Note_A) = #VK_O
ChordKeys(#Chord_7th, #Note_A) = #VK_L

ChordKeys(#Chord_Maj, #Note_E) = #VK_0
ChordKeys(#Chord_Min, #Note_E) = #VK_P
ChordKeys(#Chord_7th, #Note_E) = 192

ChordKeys(#Chord_Maj, #Note_B) = 219
ChordKeys(#Chord_Min, #Note_B) = 186
ChordKeys(#Chord_7th, #Note_B) = 222

ChordKeys(#Chord_Maj, #Note_Fc) = 221
ChordKeys(#Chord_Min, #Note_Fc) = 187
ChordKeys(#Chord_7th, #Note_Fc) = 191


Global Dim HarpKeys.u(#Harp_Last)
HarpKeys(#Harp_1) = #VK_ESCAPE
HarpKeys(#Harp_2) = #VK_F1
HarpKeys(#Harp_3) = #VK_F2
HarpKeys(#Harp_4) = #VK_F3
HarpKeys(#Harp_5) = #VK_F4
HarpKeys(#Harp_6) = #VK_F5
HarpKeys(#Harp_7) = #VK_F6
HarpKeys(#Harp_8) = #VK_F7
HarpKeys(#Harp_9) = #VK_F8
HarpKeys(#Harp_10) = #VK_F9
HarpKeys(#Harp_11) = #VK_F10
HarpKeys(#Harp_12) = #VK_F11
HarpKeys(#Harp_13) = #VK_F12

;-Variables
; These are used for program flow.
Define Event.l

;This is the volume update thread id.
Define VolumeThread.i

; This is used for the keyboard.
; Each key event usually returns a value of 0 to 255. 65535 is just to be on the secure end, with Unicode and whatnot.
Global Dim Keys.a(262143)
Global LastKey.u = 0

; If any keys have been released after LastKey was set.
Global LastKeyEventWasDown.u = 0

; This keeps track of the current tick.
Global Tick.f = 0

; This is used to signify a rhythm tick event.
Global NewTick.l = 0

; This is used to signify a chord change.
Global NewChord.l = 0

;If buttons have been pressed, but no change in chords has happened.
Global NoChordChange.l = 0


; These are used to check mouse status.
Global MousePositionXCurrent.l
Global MousePositionXPrevious.l

Global MousePositionYCurrent.l
Global MousePositionYPrevious.l

Global MouseButtonLeftCurrent.l
Global MouseButtonLeftPrevious.l

Global MouseButtonRightCurrent.l
Global MouseButtonRightPrevious.l

Global MouseButtonMiddleCurrent.l
Global MouseButtonMiddlePrevious.l

Global MouseWheelCurrent.l
Global MouseWheelPreviouss.l


; These are used to define different action regions.
;   Upper Section
Global Trigger_Master_Button_Power.l
Global Trigger_Master_Knob_Volume.l

;   Middle-Upper Section
Global Trigger_Level_Knob_Volume_Harp_1.l
Global Trigger_Level_Knob_Volume_Harp_2.l
Global Trigger_Level_Knob_Sustain.l
Global Trigger_Level_Knob_Volume_Keyboard.l
Global Trigger_Level_Knob_Volume_Chords.l

;   Middle-Lower Section
Global Trigger_Rhythm_Button_Alternate.l
Global Trigger_Rhythm_Button_Select.l
Global Trigger_Rhythm_Button_AutoBassSync.l
Global Trigger_Rhythm_Knob_Tempo.l
Global Trigger_Rhythm_Knob_Volume.l

;   Lower Section
Global Trigger_Memory_Button_On_Off.l
Global Trigger_Memory_Button_Playback_Record.l
Global Trigger_Memory_Button_Repeat_Delete.l
Global Trigger_Memory_Button_Playback_Enter.l

;   Chord Button Section
Global Trigger_Chord_Button_Major.l
Global Trigger_Chord_Button_Minor.l
Global Trigger_Chord_Button_7th.l

;   Harp Section
Global Trigger_Harp_Plate.l

; These are the different settings.
;   Upper Section
Global Value_Master_Power.l = 1
Global Value_Master_Volume.f = 1.0

;   Middle-Upper Section
Global Value_Level_Volume_Harp_1.f = 1.0
Global Value_Level_Volume_Harp_2.f = 1.0
Global Value_Level_Sustain.f = 0.5
Global Value_Level_Volume_Keyboard.f = 1.0
Global Value_Level_Volume_Chords.f = 1.0

;   Middle-Lower Section
Global Value_Rhythm_Alternate.l
Global Value_Rhythm_Alternate_Current.l
Global Value_Rhythm_Pattern.l = #Rhythm_None
Global Value_Rhythm_Pattern_Current.l = #Rhythm_None
Global Value_Rhythm_AutoBassSync.l = 1
Global Value_Rhythm_Tempo.f = 0.5
Global Value_Rhythm_Volume.f = 1.0

;   Lower Section
Global Value_Memory_Enable.l
Global Value_Memory_Playback_Record.l = 1
Global Value_Memory_Repeat_Delete.l
Global Value_Memory_Playback_Enter.l

;   Chord Button Section
Global Value_Chord_Chord.l = #Chord_None
Global Value_Chord_Note.l = #Note_None

;   Harp Section
Global Dim Value_Harp_Plate.l(#Harp_Last)

; These are used for Harp/Trigger control.
Global Dim Status_Sound.l(#Dat_Last)
For i = #Dat_First To #Dat_Last
  Status_Sound(i) = #Curve_None
Next

Global Dim Status_Harp.l(#Harp_Last)

; This is used for rhythm definition.

;-Procedures
Procedure.l UpdateFrequencies()
  If Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None
    Select Value_Rhythm_Pattern_Current
      Case #Rhythm_None
        SetSoundFrequency(#Snd_Bass, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Bass_1))
      Default
        Select Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Frequency)
          Case 0
            SetSoundFrequency(#Snd_Bass, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Bass_1))
          Case 1
            SetSoundFrequency(#Snd_Bass, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Bass_2))
          Case 2
            SetSoundFrequency(#Snd_Bass, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Bass_3))
          Case 3
            SetSoundFrequency(#Snd_Bass, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Bass_4))
        EndSelect
    EndSelect
    SetSoundFrequency(#Snd_Chord_1, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Chord_1))
    SetSoundFrequency(#Snd_Chord_2, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Chord_2))
    SetSoundFrequency(#Snd_Chord_3, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Chord_3))
    
    If GetSoundFrequency(#Snd_Harp_1_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_1)
      SetSoundFrequency(#Snd_Harp_1_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_1))
      SetSoundFrequency(#Snd_Harp_1_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_1))
      SetSoundPosition(#Snd_Harp_1_Standard, GetSoundPosition(#Snd_Harp_1_Vibrato)+7)
    EndIf
    If GetSoundFrequency(#Snd_Harp_2_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_2)
      SetSoundFrequency(#Snd_Harp_2_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_2))
      SetSoundFrequency(#Snd_Harp_2_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_2))
      SetSoundPosition(#Snd_Harp_2_Standard, GetSoundPosition(#Snd_Harp_2_Vibrato)+8)
    EndIf
    If GetSoundFrequency(#Snd_Harp_3_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_3)
      SetSoundFrequency(#Snd_Harp_3_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_3))
      SetSoundFrequency(#Snd_Harp_3_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_3))
      SetSoundPosition(#Snd_Harp_3_Standard, GetSoundPosition(#Snd_Harp_3_Vibrato)+9)
    EndIf
    If GetSoundFrequency(#Snd_Harp_4_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_4)
      SetSoundFrequency(#Snd_Harp_4_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_4))
      SetSoundFrequency(#Snd_Harp_4_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_4))
      SetSoundPosition(#Snd_Harp_4_Standard, GetSoundPosition(#Snd_Harp_4_Vibrato)+10)
    EndIf
    If GetSoundFrequency(#Snd_Harp_5_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_5)
      SetSoundFrequency(#Snd_Harp_5_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_5))
      SetSoundFrequency(#Snd_Harp_5_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_5))
      SetSoundPosition(#Snd_Harp_5_Standard, GetSoundPosition(#Snd_Harp_5_Vibrato)+11)
    EndIf
    If GetSoundFrequency(#Snd_Harp_6_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_6)
      SetSoundFrequency(#Snd_Harp_6_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_6))
      SetSoundFrequency(#Snd_Harp_6_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_6))
      SetSoundPosition(#Snd_Harp_6_Standard, GetSoundPosition(#Snd_Harp_6_Vibrato)+12)
    EndIf
    If GetSoundFrequency(#Snd_Harp_7_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_7)
      SetSoundFrequency(#Snd_Harp_7_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_7))
      SetSoundFrequency(#Snd_Harp_7_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_7))
      SetSoundPosition(#Snd_Harp_7_Standard, GetSoundPosition(#Snd_Harp_7_Vibrato)+13)
    EndIf
    If GetSoundFrequency(#Snd_Harp_8_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_8)
      SetSoundFrequency(#Snd_Harp_8_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_8))
      SetSoundFrequency(#Snd_Harp_8_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_8))
      SetSoundPosition(#Snd_Harp_8_Standard, GetSoundPosition(#Snd_Harp_8_Vibrato)+14)
    EndIf
    If GetSoundFrequency(#Snd_Harp_9_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_9)
      SetSoundFrequency(#Snd_Harp_9_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_9))
      SetSoundFrequency(#Snd_Harp_9_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_9))
      SetSoundPosition(#Snd_Harp_9_Standard, GetSoundPosition(#Snd_Harp_9_Vibrato)+15)
    EndIf
    If GetSoundFrequency(#Snd_Harp_10_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_10)
      SetSoundFrequency(#Snd_Harp_10_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_10))
      SetSoundFrequency(#Snd_Harp_10_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_10))
      SetSoundPosition(#Snd_Harp_10_Standard, GetSoundPosition(#Snd_Harp_10_Vibrato)+16)
    EndIf
    If GetSoundFrequency(#Snd_Harp_11_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_11)
      SetSoundFrequency(#Snd_Harp_11_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_11))
      SetSoundFrequency(#Snd_Harp_11_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_11))
      SetSoundPosition(#Snd_Harp_11_Standard, GetSoundPosition(#Snd_Harp_11_Vibrato)+17)
    EndIf
    If GetSoundFrequency(#Snd_Harp_12_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_12)
      SetSoundFrequency(#Snd_Harp_12_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_12))
      SetSoundFrequency(#Snd_Harp_12_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_12))
      SetSoundPosition(#Snd_Harp_12_Standard, GetSoundPosition(#Snd_Harp_12_Vibrato)+18)
    EndIf
    If GetSoundFrequency(#Snd_Harp_13_Standard) <> Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_13)
      SetSoundFrequency(#Snd_Harp_13_Vibrato, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_13))
      SetSoundFrequency(#Snd_Harp_13_Standard, Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_13))
      SetSoundPosition(#Snd_Harp_13_Standard, GetSoundPosition(#Snd_Harp_13_Vibrato)+19)
    EndIf
  EndIf
  
EndProcedure
Procedure UpdateVolume()
  Static Dim VolumeStatus.f(#Dat_Last)
  Static TimeCurrent.q
  Static TimePrevious.q
  Static TimeDelta.q
  Static FirstRun.l = 1
  Static Phase.f
  Protected a.l
  Protected i.l
  
  Protected SinPhase.f
  Protected CosPhase.f
  Protected Sin2Phase.f
  Protected Cos2Phase.f
  Protected Sin3Phase.f
  Protected Cos3Phase.f
  
  TimePrevious = TimeCurrent
  TimeCurrent = ElapsedMilliseconds()
  If FirstRun
    TimePrevious = TimeCurrent
    FirstRun = 0
  EndIf
  TimeDelta = TimeCurrent-TimePrevious
  Phase+1080.0*(TimeDelta/1000.0)*(0.9+Value_Rhythm_Tempo/5)
  
  SinPhase = Sin(Radian(Phase))
  CosPhase = Cos(Radian(Phase))
  ;Sin2Phase = Sqr(Abs(SinPhase))*Sign(SinPhase)
  Cos2Phase = Sqr(Abs(CosPhase))*Sign(CosPhase)
  Sin3Phase = Sqr(Sqr(Abs(SinPhase)))*Sign(SinPhase)
  ;Cos3Phase = Sqr(Sqr(Abs(CosPhase)))*Sign(CosPhase)
  
  Select Value_Rhythm_Pattern_Current
    Case #Rhythm_None
      If Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None
        If Value_Rhythm_Pattern <> Value_Rhythm_Pattern_Current Or Value_Rhythm_Alternate <> Value_Rhythm_Alternate_Current
          Value_Rhythm_Pattern_Current = Value_Rhythm_Pattern
          Value_Rhythm_Alternate_Current = Value_Rhythm_Alternate
          NewTick = 1
          NewChord = 1
          Tick = 0
          Tick+(TimeDelta/1000.0)*(3.0+Value_Rhythm_Tempo*8.0)
          While Tick >= 32.0
            Tick-32.0
          Wend
        EndIf
      Else
        Value_Rhythm_Pattern_Current = Value_Rhythm_Pattern
        Value_Rhythm_Alternate_Current = Value_Rhythm_Alternate
        NewTick = 1
        NewChord = 1
        Tick = 0
      EndIf
      
    Default
      If Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None
        If Value_Rhythm_Pattern = #Rhythm_None ;FroggiFifi - #Rhythm_None immediately overwrites the rhythm pattern, and does not play the full previous pattern.
          Value_Rhythm_Pattern_Current = #Rhythm_None
          NewTick = 1
          NewChord = 1
          Tick = 0
        Else
          If Int(Tick+(TimeDelta/1000.0)*(3.0+Value_Rhythm_Tempo*8.0)) > Int(Tick)
            NewTick = 1
          EndIf
          Tick+(TimeDelta/1000.0)*(3.0+Value_Rhythm_Tempo*8.0)
          If Tick >= 32.0
            If Value_Rhythm_Pattern <> Value_Rhythm_Pattern_Current Or Value_Rhythm_Alternate <> Value_Rhythm_Alternate_Current
              Value_Rhythm_Pattern_Current = Value_Rhythm_Pattern
              Value_Rhythm_Alternate_Current = Value_Rhythm_Alternate
              NewTick = 1
            EndIf
          EndIf
          While Tick >= 32.0
            Tick-32.0
          Wend
        EndIf
      Else
        Value_Rhythm_Pattern_Current = Value_Rhythm_Pattern
        Value_Rhythm_Alternate_Current = Value_Rhythm_Alternate
        NewTick = 1
        NewChord = 1
        Tick = 0
        Tick+(TimeDelta/1000.0)*(3.0+Value_Rhythm_Tempo*8.0)
        While Tick >= 32.0
          Tick-32.0
        Wend
      EndIf
      
  EndSelect
  
  If NewTick
    NewTick = 0
    Select Value_Rhythm_Pattern_Current
      Case #Rhythm_None
        NewChord = 1
        If Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None
          Status_Sound(#Dat_Bass_1) = #Curve_Trigger
          Status_Sound(#Dat_Chord_1) = #Curve_Trigger
          Status_Sound(#Dat_Chord_2) = #Curve_Trigger
          Status_Sound(#Dat_Chord_3) = #Curve_Trigger
        EndIf
      Default
        If Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None
          If Value_Rhythm_AutoBassSync
            NewChord = 1
            Status_Sound(#Dat_Bass_1) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Bass)
            Status_Sound(#Dat_Chord_1) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Chords)
            Status_Sound(#Dat_Chord_2) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Chords)
            Status_Sound(#Dat_Chord_3) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Chords)
          Else
            Status_Sound(#Dat_Bass_1) = #Curve_Trigger
            Status_Sound(#Dat_Chord_1) = #Curve_Trigger
            Status_Sound(#Dat_Chord_2) = #Curve_Trigger
            Status_Sound(#Dat_Chord_3) = #Curve_Trigger
          EndIf
          
          Status_Sound(#Dat_Drum_BD) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Drum_BD)
          Status_Sound(#Dat_Drum_Click) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Drum_Click)
          Status_Sound(#Dat_Drum_HiHat) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Drum_HiHat)
          Status_Sound(#Dat_Drum_Snare) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Drum_Snare)
          Status_Sound(#Dat_Drum_Ride) = Patterns(Value_Rhythm_Alternate_Current, Value_Rhythm_Pattern_Current, Value_Chord_Note, Int(Tick), #Pattern_Drum_Ride)
          
        EndIf
    EndSelect
  EndIf
  
  If NewChord
    NewChord = 0
    UpdateFrequencies()
  EndIf
  
  If Value_Chord_Chord = #Chord_None Or Value_Chord_Note = #Note_None
    Phase = 0
    Tick = 0
  EndIf
  
  Select Value_Master_Power
    Case 0
      For i = #Dat_First To #Dat_Last
        VolumeStatus(i) = 0.0
        Status_Sound(i) = #Curve_None
      Next
    Case 1
      For i = #Dat_Bass_1 To #Dat_Bass_4
        Select Status_Sound(i)
          Case #Curve_None
            VolumeStatus(i) = 0.0
          Case #Curve_Trigger
            VolumeStatus(i) = 1.0
            Status_Sound(i) = #Curve_Attack
            i-1
          Case #Curve_Oneshot
            VolumeStatus(i) = 1.0
            Status_Sound(i) = #Curve_Release
            i-1
          Case #Curve_Attack
            Status_Sound(i) = #Curve_Decay
            i-1
          Case #Curve_Decay
            Status_Sound(i) = #Curve_Sustain
            i-1
          Case #Curve_Sustain
          Case #Curve_Release
            VolumeStatus(i)-1.0*(TimeDelta/333.0)
            If VolumeStatus(i) < 0.0
              VolumeStatus(i) = 0.0
            EndIf
        EndSelect
      Next
      
      For i = #Dat_Chord_1 To #Dat_Chord_3
        Select Status_Sound(i)
          Case #Curve_None
            VolumeStatus(i) = 0.0
          Case #Curve_Trigger
            VolumeStatus(i) = 1.0
            Status_Sound(i) = #Curve_Attack
            i-1
          Case #Curve_Oneshot
            VolumeStatus(i) = 1.0
            Status_Sound(i) = #Curve_Release
            i-1
          Case #Curve_Attack
            Status_Sound(i) = #Curve_Decay
            i-1
          Case #Curve_Decay
            If VolumeStatus(i) > 0.95
              VolumeStatus(i)-1.0*(TimeDelta/333.0)
              If VolumeStatus(i) < 0.95
                VolumeStatus(i) = 0.95
                Status_Sound(i) = #Curve_Sustain
                i-1
              EndIf
            EndIf
          Case #Curve_Sustain
          Case #Curve_Release
            VolumeStatus(i)-1.0*(TimeDelta/180.0)
            If VolumeStatus(i) < 0.0
              VolumeStatus(i) = 0.0
              Status_Sound(i) = #Curve_None
            EndIf
        EndSelect
      Next
      
      
      For i = #Dat_Harp_1 To #Dat_Harp_13
        Select Status_Sound(i)
          Case #Curve_None
            VolumeStatus(i) = 0.0
          Case #Curve_Trigger
            VolumeStatus(i) = 1.0
            Status_Sound(i) = #Curve_Attack
            i-1
          Case #Curve_Attack
            Status_Sound(i) = #Curve_Decay
            i-1
          Case #Curve_Decay
            Status_Sound(i) = #Curve_Sustain
            i-1
          Case #Curve_Sustain
            Status_Sound(i) = #Curve_Release
            i-1
          Case #Curve_Release
            VolumeStatus(i)-1.0*(TimeDelta/(366.0+2734.0*Value_Level_Sustain))
            If VolumeStatus(i) < 0.0
              VolumeStatus(i) = 0.0
              Status_Sound(i) = #Curve_None
            EndIf
        EndSelect
      Next
      
      Select Status_Sound(#Dat_Keyboard)
        Case #Curve_None
          VolumeStatus(#Dat_Keyboard) = 0.0
        Case #Curve_Trigger
          VolumeStatus(#Dat_Keyboard) = 1.0
      EndSelect
      
      
      If Status_Sound(#Dat_Drum_BD) = #Curve_Trigger Or Status_Sound(#Dat_Drum_BD) = #Curve_Oneshot
        Status_Sound(#Dat_Drum_BD) = #Curve_Release
        VolumeStatus(#Dat_Drum_BD) = 1.0
        PlaySound(#Snd_Drum_BD, 0, Bool(Status_Sound(#Dat_Drum_BD) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_BD))
      EndIf
      If Status_Sound(#Dat_Drum_Click) = #Curve_Trigger Or Status_Sound(#Dat_Drum_Click) = #Curve_Oneshot
        Status_Sound(#Dat_Drum_Click) = #Curve_Release
        VolumeStatus(#Dat_Drum_Click) = 1.0
        PlaySound(#Snd_Drum_Click, 0, Bool(Status_Sound(#Dat_Drum_Click) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_Click)) 
      EndIf
      If Status_Sound(#Dat_Drum_HiHat) = #Curve_Trigger Or Status_Sound(#Dat_Drum_HiHat) = #Curve_Oneshot
        Status_Sound(#Dat_Drum_HiHat) = #Curve_Release
        VolumeStatus(#Dat_Drum_HiHat) = 1.0
        PlaySound(#Snd_Drum_HiHat, 0, Bool(Status_Sound(#Dat_Drum_HiHat) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_HiHat)) 
      EndIf
      If Status_Sound(#Dat_Drum_Snare) = #Curve_Trigger Or Status_Sound(#Dat_Drum_Snare) = #Curve_Oneshot
        Status_Sound(#Dat_Drum_Snare) = #Curve_Release
        VolumeStatus(#Dat_Drum_Snare) = 1.0
        PlaySound(#Snd_Drum_Snare, 0, Bool(Status_Sound(#Dat_Drum_Snare) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_Snare)) 
      EndIf
      If Status_Sound(#Dat_Drum_Ride) = #Curve_Trigger Or Status_Sound(#Dat_Drum_Ride) = #Curve_Oneshot
        Status_Sound(#Dat_Drum_Ride) = #Curve_Release
        VolumeStatus(#Dat_Drum_Ride) = 1.0
        PlaySound(#Snd_Drum_Ride, 0, Bool(Status_Sound(#Dat_Drum_Ride) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_Ride)) 
      EndIf
      
  EndSelect
  
  SoundVolume(#Snd_Bass, Bool(Status_Sound(#Dat_Bass_1) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Bass_1))
  SoundVolume(#Snd_Chord_1  , Bool(Status_Sound(#Dat_Chord_1) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_1) * 0.86)
  SoundVolume(#Snd_Chord_2  , Bool(Status_Sound(#Dat_Chord_2) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_2) * 0.86)
  SoundVolume(#Snd_Chord_3  , Bool(Status_Sound(#Dat_Chord_3) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_3) * 0.86)
  
  SoundVolume(#Snd_Harp_1_Vibrato   , Bool(Status_Sound(#Dat_Harp_1) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 1.00 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_1) * (0.74-0.26*Cos2Phase))
  SoundVolume(#Snd_Harp_1_Standard  , Bool(Status_Sound(#Dat_Harp_1) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 1.00 * VolumeStatus(#Dat_Harp_1))
  SoundVolume(#Snd_Harp_2_Vibrato   , Bool(Status_Sound(#Dat_Harp_2) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.98 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_2) * (0.75-0.25*Cos2Phase))
  SoundVolume(#Snd_Harp_2_Standard  , Bool(Status_Sound(#Dat_Harp_2) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.98 *  VolumeStatus(#Dat_Harp_2))
  SoundVolume(#Snd_Harp_3_Vibrato   , Bool(Status_Sound(#Dat_Harp_3) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.96 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_3) * (0.76-0.24*Cos2Phase))
  SoundVolume(#Snd_Harp_3_Standard  , Bool(Status_Sound(#Dat_Harp_3) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.96 *  VolumeStatus(#Dat_Harp_3))
  SoundVolume(#Snd_Harp_4_Vibrato   , Bool(Status_Sound(#Dat_Harp_4) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.94 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_4) * (0.77-0.23*Cos2Phase))
  SoundVolume(#Snd_Harp_4_Standard  , Bool(Status_Sound(#Dat_Harp_4) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.94 *  VolumeStatus(#Dat_Harp_4))
  SoundVolume(#Snd_Harp_5_Vibrato   , Bool(Status_Sound(#Dat_Harp_5) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.92 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_5) * (0.78-0.22*Cos2Phase))
  SoundVolume(#Snd_Harp_5_Standard  , Bool(Status_Sound(#Dat_Harp_5) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.92 *  VolumeStatus(#Dat_Harp_5))
  SoundVolume(#Snd_Harp_6_Vibrato   , Bool(Status_Sound(#Dat_Harp_6) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.90 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_6) * (0.79-0.21*Cos2Phase))
  SoundVolume(#Snd_Harp_6_Standard  , Bool(Status_Sound(#Dat_Harp_6) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.90 *  VolumeStatus(#Dat_Harp_6))
  SoundVolume(#Snd_Harp_7_Vibrato   , Bool(Status_Sound(#Dat_Harp_7) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.88 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_7) * (0.80-0.20*Cos2Phase))
  SoundVolume(#Snd_Harp_7_Standard  , Bool(Status_Sound(#Dat_Harp_7) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.88 *  VolumeStatus(#Dat_Harp_7))
  SoundVolume(#Snd_Harp_8_Vibrato   , Bool(Status_Sound(#Dat_Harp_8) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.86 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_8) * (0.81-0.19*Cos2Phase))
  SoundVolume(#Snd_Harp_8_Standard  , Bool(Status_Sound(#Dat_Harp_8) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.86 *  VolumeStatus(#Dat_Harp_8))
  SoundVolume(#Snd_Harp_9_Vibrato   , Bool(Status_Sound(#Dat_Harp_9) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.84 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_9) * (0.82-0.18*Cos2Phase))
  SoundVolume(#Snd_Harp_9_Standard  , Bool(Status_Sound(#Dat_Harp_9) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.84 *  VolumeStatus(#Dat_Harp_9))
  SoundVolume(#Snd_Harp_10_Vibrato  , Bool(Status_Sound(#Dat_Harp_10) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.82 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_10) * (0.83-0.17*Cos2Phase))
  SoundVolume(#Snd_Harp_10_Standard , Bool(Status_Sound(#Dat_Harp_10) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.82 *  VolumeStatus(#Dat_Harp_10))
  SoundVolume(#Snd_Harp_11_Vibrato  , Bool(Status_Sound(#Dat_Harp_11) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.80 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_11) * (0.84-0.16*Cos2Phase))
  SoundVolume(#Snd_Harp_11_Standard , Bool(Status_Sound(#Dat_Harp_11) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.80 *  VolumeStatus(#Dat_Harp_11))
  SoundVolume(#Snd_Harp_12_Vibrato  , Bool(Status_Sound(#Dat_Harp_12) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.78 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_12) * (0.85-0.15*Cos2Phase))
  SoundVolume(#Snd_Harp_12_Standard , Bool(Status_Sound(#Dat_Harp_12) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.78 *  VolumeStatus(#Dat_Harp_12))
  SoundVolume(#Snd_Harp_13_Vibrato  , Bool(Status_Sound(#Dat_Harp_13) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.76 * (1.0 - Value_Level_Volume_Harp_2 * 0.6) * VolumeStatus(#Dat_Harp_13) * (0.86-0.14*Cos2Phase))
  SoundVolume(#Snd_Harp_13_Standard , Bool(Status_Sound(#Dat_Harp_13) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * (Value_Level_Volume_Harp_1/1.5 + Value_Level_Volume_Harp_2/(1.0+2.0*Value_Level_Volume_Harp_1)) * 0.76 *  VolumeStatus(#Dat_Harp_13))
  
  SetSoundFrequency(#Snd_Harp_1_Vibrato, GetSoundFrequency(#Snd_Harp_1_Standard)*(1.00-0.0070*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_2_Vibrato, GetSoundFrequency(#Snd_Harp_2_Standard)*(1.00-0.0068*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_3_Vibrato, GetSoundFrequency(#Snd_Harp_3_Standard)*(1.00-0.0066*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_4_Vibrato, GetSoundFrequency(#Snd_Harp_4_Standard)*(1.00-0.0064*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_5_Vibrato, GetSoundFrequency(#Snd_Harp_5_Standard)*(1.00-0.0062*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_6_Vibrato, GetSoundFrequency(#Snd_Harp_6_Standard)*(1.00-0.0060*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_7_Vibrato, GetSoundFrequency(#Snd_Harp_7_Standard)*(1.00-0.0058*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_8_Vibrato, GetSoundFrequency(#Snd_Harp_8_Standard)*(1.00-0.0056*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_9_Vibrato, GetSoundFrequency(#Snd_Harp_9_Standard)*(1.00-0.0054*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_10_Vibrato, GetSoundFrequency(#Snd_Harp_10_Standard)*(1.00-0.0052*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_11_Vibrato, GetSoundFrequency(#Snd_Harp_11_Standard)*(1.00-0.0050*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_12_Vibrato, GetSoundFrequency(#Snd_Harp_12_Standard)*(1.00-0.0048*Sin3Phase))
  SetSoundFrequency(#Snd_Harp_13_Vibrato, GetSoundFrequency(#Snd_Harp_13_Standard)*(1.00-0.0046*Sin3Phase))
  
  If SoundStatus(#Snd_Drum_BD, #PB_Sound_Playing)
    SoundVolume(#Snd_Drum_BD, Bool(Status_Sound(#Dat_Drum_BD) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_BD))
  EndIf
  If SoundStatus(#Snd_Drum_Click, #PB_Sound_Playing)
    SoundVolume(#Snd_Drum_Click, Bool(Status_Sound(#Dat_Drum_Click) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_Click))
  EndIf
  If SoundStatus(#Snd_Drum_HiHat, #PB_Sound_Playing)
    SoundVolume(#Snd_Drum_HiHat, Bool(Status_Sound(#Dat_Drum_HiHat) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_HiHat))
  EndIf
  If SoundStatus(#Snd_Drum_Snare, #PB_Sound_Playing)
    SoundVolume(#Snd_Drum_Snare, Bool(Status_Sound(#Dat_Drum_Snare) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_Snare))
  EndIf
  If SoundStatus(#Snd_Drum_Ride, #PB_Sound_Playing)
    SoundVolume(#Snd_Drum_Ride, Bool(Status_Sound(#Dat_Drum_Ride) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_Ride))
  EndIf
  
  SoundVolume(#Snd_Keyboard, Bool(Status_Sound(#Dat_Keyboard) <> #Curve_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Keyboard * VolumeStatus(#Dat_Keyboard))
  
  ProcedureReturn TimeDelta
EndProcedure

Procedure UpdateVolumeThread(*Null)
  Repeat
    If Not UpdateVolume()
      Delay(1)
    EndIf
  ForEver
EndProcedure

;-Initialization
If InitSound()
  UsePNGImageDecoder()
  ;-Get Graphics
  CatchImage(#Img_Background, ?Img_Background)
  CatchImage(#Img_Base, ?Img_Base)
  CatchImage(#Img_Button_Black_Off, ?Img_Button_Black_Off)
  CatchImage(#Img_Button_Black_On, ?Img_Button_Black_On)
  CatchImage(#Img_Button_Blue_Off, ?Img_Button_Blue_Off)
  CatchImage(#Img_Button_Blue_On, ?Img_Button_Blue_On)
  CatchImage(#Img_Button_Dark_Off, ?Img_Button_Dark_Off)
  CatchImage(#Img_Button_Dark_On, ?Img_Button_Dark_On)
  CatchImage(#Img_Button_Dark_C_Off, ?Img_Button_Dark_C_Off)
  CatchImage(#Img_Button_Dark_C_On, ?Img_Button_Dark_C_On)
  CatchImage(#Img_Button_Dark_X_Off, ?Img_Button_Dark_X_Off)
  CatchImage(#Img_Button_Dark_X_On, ?Img_Button_Dark_X_On)
  CatchImage(#Img_Button_Dark_Tri_Off, ?Img_Button_Dark_Tri_Off)
  CatchImage(#Img_Button_Dark_Tri_On, ?Img_Button_Dark_Tri_On)
  CatchImage(#Img_Button_Red_Off, ?Img_Button_Red_Off)
  CatchImage(#Img_Button_Red_On, ?Img_Button_Red_On)
  CatchImage(#Img_Button_Light_Off, ?Img_Button_Light_Off)
  CatchImage(#Img_Button_Light_On, ?Img_Button_Light_On)
  CatchImage(#Img_Button_Light_Up_Off, ?Img_Button_Light_Up_Off)
  CatchImage(#Img_Button_Light_Up_On, ?Img_Button_Light_Up_On)
  CatchImage(#Img_Button_Light_Down_Off, ?Img_Button_Light_Down_Off)
  CatchImage(#Img_Button_Light_Down_On, ?Img_Button_Light_Down_On)
  CatchImage(#Img_Button_Light_O_Off, ?Img_Button_Light_O_Off)
  CatchImage(#Img_Button_Light_O_On, ?Img_Button_Light_O_On)
  CatchImage(#Img_Button_Light_C_Off, ?Img_Button_Light_C_Off)
  CatchImage(#Img_Button_Light_C_On, ?Img_Button_Light_C_On)
  
  CatchImage(#Img_Button_Wide_Off, ?Img_Button_Wide_Off)
  CatchImage(#Img_Button_Wide_On, ?Img_Button_Wide_On)
  
  CatchImage(#Img_Knob_Big, ?Img_Knob_Big)
  CatchImage(#Img_Knob_Ring, ?Img_Knob_Ring)
  CatchImage(#Img_Knob_Small, ?Img_Knob_Small)
  
  CatchImage(#Img_LED_Off, ?Img_LED_Off)
  CatchImage(#Img_LED_On, ?Img_LED_On)
  
  
  ;-Get Sounds
  CatchSound(#Snd_Bass, ?Snd_Bass)
  CatchSound(#Snd_Chord_1, ?Snd_Chord)
  CatchSound(#Snd_Chord_2, ?Snd_Chord)
  CatchSound(#Snd_Chord_3, ?Snd_Chord)
  
  CatchSound(#Snd_Harp_1_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_1_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_2_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_2_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_3_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_3_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_4_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_4_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_5_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_5_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_6_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_6_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_7_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_7_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_8_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_8_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_9_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_9_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_10_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_10_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_11_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_11_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_12_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_12_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_13_Vibrato, ?Snd_Harp_Mod)
  CatchSound(#Snd_Harp_13_Standard, ?Snd_Harp)
  
  CatchSound(#Snd_Drum_BD, ?Snd_Drum_BD)
  CatchSound(#Snd_Drum_Click, ?Snd_Drum_Click)
  CatchSound(#Snd_Drum_HiHat, ?Snd_Drum_HiHat)
  CatchSound(#Snd_Drum_Ride, ?Snd_Drum_Ride)
  CatchSound(#Snd_Drum_Snare, ?Snd_Drum_Snare)
  
  CatchSound(#Snd_Keyboard, ?Snd_Keyboard)
  
  
  ;-Play all sounds
  PlaySound(#Snd_Bass, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Chord_1, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Chord_2, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Chord_3, #PB_Sound_Loop, 0)
  
  PlaySound(#Snd_Harp_1_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_1_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_2_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_2_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_3_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_3_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_4_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_4_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_5_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_5_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_6_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_6_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_7_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_7_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_8_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_8_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_9_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_9_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_10_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_10_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_11_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_11_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_12_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_12_Standard, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_13_Vibrato, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp_13_Standard, #PB_Sound_Loop, 0)
  
  PlaySound(#Snd_Keyboard, #PB_Sound_Loop, 0)
  
  VolumeThread = CreateThread(@UpdateVolumeThread(), 0)
  
  If OpenWindow(#Win_Main, #PB_Ignore, #PB_Ignore, 800, 620, "Chordian", #PB_Window_SystemMenu)
    
    CreateMenu(#Men_Main, WindowID(#Win_Main))
    
    MenuTitle("File")
    MenuItem(#Itm_Load, "Load state...")
    MenuItem(#Itm_Save, "Save state...")
    MenuBar()
    MenuItem(#Itm_Reset, "Reset state")
    MenuBar()
    MenuItem(#Itm_Exit, "Exit")
    
    DisableMenuItem(#Men_Main, #Itm_Load, 1)
    DisableMenuItem(#Men_Main, #Itm_Save, 1)
    DisableMenuItem(#Men_Main, #Itm_Reset, 1)
    
    MenuTitle("Edit")
    MenuItem(#Itm_Tuning, "Set Tuning...")
    MenuBar()
    MenuItem(#Itm_MasterEditMode, "Master Edit Mode...")
    
    DisableMenuItem(#Men_Main, #Itm_MasterEditMode, 1)
    
    MenuTitle("Help")
    MenuItem(#Itm_Manual, "Open manual...")
    MenuItem(#Itm_About, "About...")
    
    DisableMenuItem(#Men_Main, #Itm_Manual, 1)
    
    If CanvasGadget(#Gad_Canvas, 0, 0, WindowWidth(#Win_Main), WindowHeight(#Win_Main), #PB_Canvas_Keyboard)
      SetActiveGadget(#Gad_Canvas)
      Repeat
        Event = WaitWindowEvent()
        Select Event
          Case #PB_Event_Menu
            ;--Menu Actions
            Select EventMenu()
              Case #Itm_Load
              Case #Itm_Save
              Case #Itm_Reset
              Case #Itm_Exit
                PostEvent(#PB_Event_CloseWindow)
              Case #Itm_Tuning
                TempString = InputRequester("Chordian>Master>Tuning", "Insert new Tuning. (440.0)", StrF(Tuning))
                If Len(TempString) > 0
                  Tuning = ValF(TempString)
                EndIf
                For i = #Note_First To #Note_Last
                  For n = #Chord_First To #Chord_Last
                    For s = #Dat_First To #Dat_Last
                      Frequencies(i, n, s) = Tuning*Pow(2.0, (MIDIs(i, n, s)-71)/12.0)*225.0
                    Next
                  Next
                Next
                NewChord = 1
              Case #Itm_MasterEditMode
              Case #Itm_Manual
              Case #Itm_About
                DisableWindow(#Win_Main, 1)
                CompilerIf Defined(PB_Editor_BuildCount, #PB_Constant)
                  MessageRequester("Chordian>About", "An Omnichord Emulator"+#CRLF$+"Build "+Str(#PB_Editor_BuildCount)+#CRLF$+#CRLF$+"Please see the GitHub page for more information."+#CRLF$+"https://github.com/Jan125/pb.chordian", #PB_MessageRequester_Ok)
                CompilerElseIf Defined(PB_Editor_CompileCount, #PB_Constant)
                  MessageRequester("Chordian>About", "An Omnichord Emulator"+#CRLF$+"Dev Fragment "+Str(#PB_Editor_CompileCount)+#CRLF$+#CRLF$+"Please see the GitHub page for more information."+#CRLF$+"https://github.com/Jan125/pb.chordian", #PB_MessageRequester_Ok)
                CompilerElse
                  MessageRequester("Chordian>About", "An Omnichord Emulator"+#CRLF$+#CRLF$+#CRLF$+"Please see the GitHub page for more information."+#CRLF$+"https://github.com/Jan125/pb.chordian", #PB_MessageRequester_Ok)
                CompilerEndIf
                DisableWindow(#Win_Main, 0)
            EndSelect
            
          Case #PB_Event_Gadget
            ;--Gadget Actions
            Select EventGadget()
              Case #Gad_Canvas
                ;---Canvas Actions
                Select EventType()
                  Case #PB_EventType_KeyDown
                    PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key))
                    
                  Case #PB_EventType_KeyUp
                    PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key))
                    
                  Case #PB_EventType_LeftButtonDown
                    MouseButtonLeftPrevious = MouseButtonLeftCurrent
                    MouseButtonLeftCurrent = 1
                    PostEvent(#Event_GetTriggers)
                    
                  Case #PB_EventType_LeftButtonUp
                    MouseButtonLeftPrevious = MouseButtonLeftCurrent
                    MouseButtonLeftCurrent = 0
                    PostEvent(#Event_GetTriggers)
                    
                  Case #PB_EventType_RightButtonDown
                    MouseButtonRightPrevious = MouseButtonRightCurrent
                    MouseButtonRightCurrent = 1
                    PostEvent(#Event_GetTriggers)
                    
                  Case #PB_EventType_RightButtonUp
                    MouseButtonRightPrevious = MouseButtonRightCurrent
                    MouseButtonRightCurrent = 0
                    PostEvent(#Event_GetTriggers)
                    
                  Case #PB_EventType_MiddleButtonDown
                    MouseButtonMiddlePrevious = MouseButtonMiddleCurrent
                    MouseButtonMiddleCurrent = 1
                    PostEvent(#Event_GetTriggers)
                    
                  Case #PB_EventType_MiddleButtonUp
                    MouseButtonMiddlePrevious = MouseButtonMiddleCurrent
                    MouseButtonMiddleCurrent = 0
                    PostEvent(#Event_GetTriggers)
                    
                  Case #PB_EventType_MouseMove
                    MousePositionXPrevious = MousePositionXCurrent
                    MousePositionYPrevious = MousePositionYCurrent
                    MousePositionXCurrent = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_MouseX)
                    MousePositionYCurrent = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_MouseY)
                    PostEvent(#Event_HandleTriggers)
                    
                EndSelect
            EndSelect
            
          Case #Event_GeneralKeyDown
            ;--GeneralKeyDown
            If Keys(EventData()) = 0
              PostEvent(#Event_HandleChordKeys)
              PostEvent(#Event_HandleHarpKeys)
              PostEvent(#PB_Event_Repaint)
            EndIf
            Keys(EventData()) = 1
            LastKey = EventData()
            LastKeyEventWasDown = 1
            
          Case #Event_GeneralKeyUp
            ;--GeneralKeyUp
            Keys(EventData()) = 0
            PostEvent(#PB_Event_Repaint)
            If Not Value_Memory_Playback_Record
              PostEvent(#Event_HandleChordKeys)
            EndIf
            LastKeyEventWasDown = 0
            
          Case #Event_GetTriggers
            ;--GetTriggers
            
            If MouseButtonLeftCurrent = 0 And MouseButtonMiddleCurrent = 0 And MouseButtonRightCurrent = 0
              Trigger_Master_Button_Power = 0
              Trigger_Master_Knob_Volume = 0
              
              Trigger_Level_Knob_Volume_Harp_1 = 0
              Trigger_Level_Knob_Volume_Harp_2 = 0
              Trigger_Level_Knob_Sustain = 0
              Trigger_Level_Knob_Volume_Keyboard = 0
              Trigger_Level_Knob_Volume_Chords = 0
              
              Trigger_Rhythm_Button_Select = 0
              Trigger_Rhythm_Button_AutoBassSync = 0
              Trigger_Rhythm_Knob_Tempo = 0
              Trigger_Rhythm_Knob_Volume = 0
              
              Trigger_Memory_Button_On_Off = 0
              Trigger_Memory_Button_Playback_Record = 0
              Trigger_Memory_Button_Repeat_Delete = 0
              Trigger_Memory_Button_Playback_Enter = 0
              
              Trigger_Chord_Button_Major = 0
              Trigger_Chord_Button_Minor = 0
              Trigger_Chord_Button_7th = 0
              
              Trigger_Harp_Plate = 0
              For i = #Harp_First To #Harp_Last
                Status_Harp(i) = 0
              Next
            EndIf
            ;Power Button
            If MousePositionXCurrent >= 126 And MousePositionXCurrent <= 145 And MousePositionYCurrent >= 113 And MousePositionYCurrent <= 137 And MouseButtonLeftPrevious = 0
              Trigger_Master_Button_Power = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            ;Master Volume Knob
            If Sqr(Pow(MousePositionXCurrent-190, 2)+Pow(MousePositionYCurrent-116, 2)) <= 21
              Trigger_Master_Knob_Volume = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Harp Voice Volume Knobs
            If Sqr(Pow(MousePositionXCurrent-94, 2)+Pow(MousePositionYCurrent-191, 2)) <= 21
              If Sqr(Pow(MousePositionXCurrent-94, 2)+Pow(MousePositionYCurrent-191, 2)) <= 13
                Trigger_Level_Knob_Volume_Harp_2 = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
              Else
                Trigger_Level_Knob_Volume_Harp_1 = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
              EndIf
            EndIf
            
            ;Harp Sustain Knob
            If Sqr(Pow(MousePositionXCurrent-142, 2)+Pow(MousePositionYCurrent-191, 2)) <= 21
              Trigger_Level_Knob_Sustain = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            
            ;Keyboard&Chord Volume Knobs
            If Sqr(Pow(MousePositionXCurrent-190, 2)+Pow(MousePositionYCurrent-191, 2)) <= 21
              If Sqr(Pow(MousePositionXCurrent-190, 2)+Pow(MousePositionYCurrent-191, 2)) <= 13
                Trigger_Level_Knob_Volume_Chords = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
              Else
                Trigger_Level_Knob_Volume_Keyboard = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
              EndIf
            EndIf
            
            ;Rhythm Alternate Button
            If MousePositionXCurrent >= 36 And MousePositionXCurrent <= 55 And MousePositionYCurrent >= 274 And MousePositionYCurrent <= 298 And MouseButtonLeftPrevious = 0
              Trigger_Rhythm_Button_Alternate = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Rhythm Selector Buttons
            If MousePositionXCurrent >= 68 And MousePositionXCurrent <= 215 And MousePositionYCurrent >= 274 And MousePositionYCurrent <= 298
              Trigger_Rhythm_Button_Select = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Rhythm Auto Bass Sync Button
            If MousePositionXCurrent >= 84 And MousePositionXCurrent <= 103 And MousePositionYCurrent >= 329 And MousePositionYCurrent <= 353 And MouseButtonLeftPrevious = 0
              Trigger_Rhythm_Button_AutoBassSync = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Rhythm Tempo Knob
            If Sqr(Pow(MousePositionXCurrent-142, 2)+Pow(MousePositionYCurrent-339, 2)) <= 21
              Trigger_Rhythm_Knob_Tempo = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Rhythm Volume Knob
            If Sqr(Pow(MousePositionXCurrent-190, 2)+Pow(MousePositionYCurrent-339, 2)) <= 21
              Trigger_Rhythm_Knob_Volume = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Memory On Off Button
            If MousePositionXCurrent >= 126 And MousePositionXCurrent <= 145 And MousePositionYCurrent >= 424 And MousePositionYCurrent <= 448 And MouseButtonLeftPrevious = 0
              Trigger_Memory_Button_On_Off = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Memory Playback Record Button
            If MousePositionXCurrent >= 159 And MousePositionXCurrent <= 178 And MousePositionYCurrent >= 424 And MousePositionYCurrent <= 448 And MouseButtonLeftPrevious = 0
              Trigger_Memory_Button_Playback_Record = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Memory Repeat Delete Button
            If MousePositionXCurrent >= 192 And MousePositionXCurrent <= 211 And MousePositionYCurrent >= 424 And MousePositionYCurrent <= 448 And MouseButtonLeftPrevious = 0
              Trigger_Memory_Button_Repeat_Delete = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Memory Playback Enter Button
            If MousePositionXCurrent >= 162 And MousePositionXCurrent <= 206 And MousePositionYCurrent >= 480 And MousePositionYCurrent <= 505 And MouseButtonLeftPrevious = 0
              Trigger_Memory_Button_Playback_Enter = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            ;Chord buttons
            If MousePositionXCurrent >= 271 And MousePositionXCurrent <= 631 And MousePositionYCurrent >= 240 And MousePositionYCurrent <= 264
              Trigger_Chord_Button_Major = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            If MousePositionXCurrent >= 286 And MousePositionXCurrent <= 646 And MousePositionYCurrent >= 283 And MousePositionYCurrent <= 307
              Trigger_Chord_Button_Minor = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            If MousePositionXCurrent >= 301 And MousePositionXCurrent <= 661 And MousePositionYCurrent >= 326 And MousePositionYCurrent <= 350
              Trigger_Chord_Button_7th = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
            EndIf
            
            If Value_Master_Power = 1
              If MousePositionXCurrent >= 675 And MousePositionXCurrent <= 777
                Trigger_Harp_Plate = 1*Bool(MouseButtonLeftCurrent = 1)+2*Bool(MouseButtonRightCurrent = 1)+4*Bool(MouseButtonMiddleCurrent = 1)
              EndIf
            EndIf
            
            PostEvent(#Event_HandleTriggers)
            
            
          Case #Event_HandleTriggers
            ;--HandleTriggers
            
            If Trigger_Master_Button_Power
              Trigger_Master_Button_Power = 0
              Value_Master_Power = Bool(Not Value_Master_Power)
              Value_Chord_Chord = #Chord_None
              Value_Chord_Note = #Note_None
              For i = #Note_First To #Note_Last
                For n = #Chord_First To #Chord_Last
                  Keys(ChordKeys(n, i)) = 0
                Next
              Next
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Master_Knob_Volume
              Select Trigger_Master_Knob_Volume
                Case 1
                  Value_Master_Volume+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
                Case 2
                  Trigger_Master_Knob_Volume = 0
                  TempString = InputRequester("Chordian>Master>Volume", "Insert new Volume. (0.0-1.0)", StrF(Value_Master_Volume))
                  If Len(TempString) > 0
                    Value_Master_Volume = ValF(TempString)
                  EndIf
              EndSelect
              
              If Value_Master_Volume > 1.0
                Value_Master_Volume = 1.0
              ElseIf Value_Master_Volume < 0.0
                Value_Master_Volume = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Level_Knob_Volume_Harp_1
              Select Trigger_Level_Knob_Volume_Harp_1
                Case 1
                  Value_Level_Volume_Harp_1+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
                Case 2
                  Trigger_Level_Knob_Volume_Harp_1 = 0
                  TempString = InputRequester("Chordian>Harp1>Volume", "Insert new Volume. (0.0-1.0)", StrF(Value_Level_Volume_Harp_1))
                  If Len(TempString) > 0
                    Value_Level_Volume_Harp_1 = ValF(TempString)
                  EndIf
              EndSelect
              
              If Value_Level_Volume_Harp_1 > 1.0
                Value_Level_Volume_Harp_1 = 1.0
              ElseIf Value_Level_Volume_Harp_1 < 0.0
                Value_Level_Volume_Harp_1 = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            If Trigger_Level_Knob_Volume_Harp_2
              Select Trigger_Level_Knob_Volume_Harp_2
                Case 1
                  Value_Level_Volume_Harp_2+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
                Case 2
                  Trigger_Level_Knob_Volume_Harp_2 = 0
                  TempString = InputRequester("Chordian>Harp2>Volume", "Insert new Volume. (0.0-1.0)", StrF(Value_Level_Volume_Harp_2))
                  If Len(TempString) > 0
                    Value_Level_Volume_Harp_2 = ValF(TempString)
                  EndIf
              EndSelect
              
              If Value_Level_Volume_Harp_2 > 1.0
                Value_Level_Volume_Harp_2 = 1.0
              ElseIf Value_Level_Volume_Harp_2 < 0.0
                Value_Level_Volume_Harp_2 = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Level_Knob_Sustain
              Select Trigger_Level_Knob_Sustain
                Case 1
                  Value_Level_Sustain+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
                Case 2
                  Trigger_Level_Knob_Sustain = 0
                  TempString = InputRequester("Chordian>Keyboard>Sustain", "Insert new Volume. (0.0-1.0)", StrF(Value_Level_Sustain))
                  If Len(TempString) > 0
                    Value_Level_Sustain = ValF(TempString)
                  EndIf
              EndSelect
              
              If Value_Level_Sustain > 1.0
                Value_Level_Sustain = 1.0
              ElseIf Value_Level_Sustain < 0.0
                Value_Level_Sustain = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Level_Knob_Volume_Keyboard
              Select Trigger_Level_Knob_Volume_Keyboard
                Case 1
                  Value_Level_Volume_Keyboard+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
                Case 2
                  Trigger_Level_Knob_Volume_Keyboard = 0
                  TempString = InputRequester("Chordian>Keyboard>Volume", "Insert new Volume. (0.0-1.0)", StrF(Value_Level_Volume_Keyboard))
                  If Len(TempString) > 0
                    Value_Level_Volume_Keyboard = ValF(TempString)
                  EndIf
              EndSelect
              
              If Value_Level_Volume_Keyboard > 1.0
                Value_Level_Volume_Keyboard = 1.0
              ElseIf Value_Level_Volume_Keyboard < 0.0
                Value_Level_Volume_Keyboard = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Level_Knob_Volume_Chords
              Select Trigger_Level_Knob_Volume_Chords
                Case 1
                  Value_Level_Volume_Chords+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
                Case 2
                  Trigger_Level_Knob_Volume_Chords = 0
                  TempString = InputRequester("Chordian>Chords>Volume", "Insert new Volume. (0.0-1.0)", StrF(Value_Level_Volume_Chords))
                  If Len(TempString) > 0
                    Value_Level_Volume_Chords = ValF(TempString)
                  EndIf
              EndSelect
              
              If Value_Level_Volume_Chords > 1.0
                Value_Level_Volume_Chords = 1.0
              ElseIf Value_Level_Volume_Chords < 0.0
                Value_Level_Volume_Chords = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Rhythm_Button_Alternate
              Trigger_Rhythm_Button_Alternate = 0
              Value_Rhythm_Alternate = Bool(Not Value_Rhythm_Alternate)
              PostEvent(#PB_Event_Repaint)
              NewChord = 1
            EndIf
            
            ;rhythm
            If Trigger_Rhythm_Button_Select ;FroggiFifi - Rhythm buttons do not pop out when pressed again, only by lightly pressing another rhythm button - Unemulatable, will stay as it is currently.
              Trigger_Rhythm_Button_Select = 0
              If (MousePositionXCurrent-68)%32 <= 20
                If (MousePositionXCurrent-68)/32 = Value_Rhythm_Pattern
                  Value_Rhythm_Pattern = #Rhythm_None
                  NewChord = 1
                Else
                  Value_Rhythm_Pattern = (MousePositionXCurrent-68)/32
                  NewChord = 1
                EndIf
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Rhythm_Button_AutoBassSync
              Trigger_Rhythm_Button_AutoBassSync = 0
              If Value_Rhythm_AutoBassSync
                If Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None
                  Status_Sound(#Dat_Bass_1) = #Curve_Trigger
                  Status_Sound(#Dat_Chord_1) = #Curve_Trigger
                  Status_Sound(#Dat_Chord_2) = #Curve_Trigger
                  Status_Sound(#Dat_Chord_3) = #Curve_Trigger
                EndIf
              EndIf
              Value_Rhythm_AutoBassSync = Bool(Not Value_Rhythm_AutoBassSync)
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Rhythm_Knob_Tempo
              Select Trigger_Rhythm_Knob_Tempo
                Case 1
                  Value_Rhythm_Tempo+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
                Case 2
                  Trigger_Rhythm_Knob_Tempo = 0
                  TempString = UCase(InputRequester("Chordian>Rhythm>Tempo", "Insert new Tempo. (0.0-1.0; 45BPM-165BPM)", StrF(Value_Rhythm_Tempo)))
                  If Len(TempString) > 0
                    If Len(TempString) >= 3
                      If Right(TempString, 3) = "BPM"
                        TempFloat = ValF(Left(TempString, Len(TempString)-3))
                        TempString = ""
                        Value_Rhythm_Tempo = (((TempFloat/60)*4)-3.0)/8.0
                        TempFloat = 0
                      Else
                        Value_Rhythm_Tempo = ValF(TempString)
                      EndIf
                    Else
                      Value_Rhythm_Tempo = ValF(TempString)
                    EndIf
                  EndIf
              EndSelect
              If Value_Rhythm_Tempo > 1.0
                Value_Rhythm_Tempo = 1.0
              ElseIf Value_Rhythm_Tempo < 0.0
                Value_Rhythm_Tempo = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            Else
            EndIf
            
            If Trigger_Rhythm_Knob_Volume
              Select Trigger_Rhythm_Knob_Volume
                Case 1
                  Value_Rhythm_Volume+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
                Case 2
                  Trigger_Rhythm_Knob_Volume = 0
                  TempString = InputRequester("Chordian>Rhythm>Volume", "Insert new Volume. (0.0-1.0)", StrF(Value_Rhythm_Volume))
                  If Len(TempString) > 0
                    Value_Rhythm_Volume = ValF(TempString)
                  EndIf
              EndSelect
              
              If Value_Rhythm_Volume > 1.0
                Value_Rhythm_Volume = 1.0
              ElseIf Value_Rhythm_Volume < 0.0
                Value_Rhythm_Volume = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Memory_Button_On_Off
              Trigger_Memory_Button_On_Off = 0
              Value_Memory_Enable = Bool(Not Value_Memory_Enable)
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Memory_Button_Playback_Record
              Trigger_Memory_Button_Playback_Record = 0
              Value_Memory_Playback_Record = Bool(Not Value_Memory_Playback_Record)
              PostEvent(#Event_HandleChordKeys)
              PostEvent(#Event_HandleHarpKeys)
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Memory_Button_Repeat_Delete
              Trigger_Memory_Button_Repeat_Delete = 0
              Value_Memory_Repeat_Delete = Bool(Not Value_Memory_Repeat_Delete)
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Memory_Button_Playback_Enter
              Trigger_Memory_Button_Playback_Enter = 0
              Value_Memory_Playback_Enter = Bool(Not Value_Memory_Playback_Enter)
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Chord_Button_Major = 1
              Trigger_Chord_Button_Major = 0
              If (MousePositionXCurrent-271)%31 <= 20
                If Keys(ChordKeys(#Chord_Maj, (MousePositionXCurrent-271)/31)) = 0
                  PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Chord_Maj, (MousePositionXCurrent-271)/31))
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Chord_Maj, (MousePositionXCurrent-271)/31))
                EndIf
              EndIf
            ElseIf Trigger_Chord_Button_Major = 2
              Trigger_Chord_Button_Major = 0
              If (MousePositionXCurrent-271)%31 <= 20
                StartDrawing(CanvasOutput(#Gad_Canvas))
                DrawAlphaImage(ImageID(#Img_Button_Red_On), 271+((MousePositionXCurrent-271)/31)*31, 240)
                StopDrawing()
                Repeat
                  Event = WaitWindowEvent()
                  Select Event
                    Case #PB_Event_Gadget
                      Select EventGadget()
                        Case #Gad_Canvas
                          Select EventType()
                            Case #PB_EventType_KeyUp
                              Select GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                Case #VK_ESCAPE
                                  PostEvent(#PB_Event_Repaint)
                                  Break
                                Default
                                  ChordKeys(#Chord_Maj, (MousePositionXCurrent-271)/31) = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                  PostEvent(#PB_Event_Repaint)
                                  Break
                              EndSelect
                              
                            Case #PB_EventType_LeftButtonDown
                              MouseButtonLeftPrevious = MouseButtonLeftCurrent
                              MouseButtonLeftCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_LeftButtonUp
                              MouseButtonLeftPrevious = MouseButtonLeftCurrent
                              MouseButtonLeftCurrent = 0
                              
                            Case #PB_EventType_RightButtonDown
                              MouseButtonRightPrevious = MouseButtonRightCurrent
                              MouseButtonRightCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_RightButtonUp
                              MouseButtonMiddlePrevious = MouseButtonMiddleCurrent
                              MouseButtonRightCurrent = 0
                              
                            Case #PB_EventType_MiddleButtonDown
                              MouseButtonMiddlePrevious = MouseButtonMiddleCurrent
                              MouseButtonMiddleCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_MiddleButtonUp
                              MouseButtonRightPrevious = MouseButtonMiddleCurrent
                              MouseButtonMiddleCurrent = 0
                              
                          EndSelect
                      EndSelect
                    Case #PB_Event_CloseWindow
                      KillThread(VolumeThread)
                      Break 2
                    Default
                  EndSelect
                ForEver
              EndIf
            EndIf
            
            If Trigger_Chord_Button_Minor = 1
              Trigger_Chord_Button_Minor = 0
              If (MousePositionXCurrent-286)%31 <= 20
                If Keys(ChordKeys(#Chord_Min, (MousePositionXCurrent-286)/31)) = 0
                  PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Chord_Min, (MousePositionXCurrent-286)/31))
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Chord_Min, (MousePositionXCurrent-286)/31))
                EndIf
              EndIf
            ElseIf Trigger_Chord_Button_Minor = 2
              Trigger_Chord_Button_Minor = 0
              If (MousePositionXCurrent-286)%31 <= 20
                StartDrawing(CanvasOutput(#Gad_Canvas))
                DrawAlphaImage(ImageID(#Img_Button_Red_On), 286+((MousePositionXCurrent-286)/31)*31, 283)
                StopDrawing()
                Repeat
                  Event = WaitWindowEvent()
                  Select Event
                    Case #PB_Event_Gadget
                      Select EventGadget()
                        Case #Gad_Canvas
                          Select EventType()
                            Case #PB_EventType_KeyUp
                              Select GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                Case #VK_ESCAPE
                                  PostEvent(#PB_Event_Repaint)
                                  Break
                                Default
                                  ChordKeys(#Chord_Min, (MousePositionXCurrent-286)/31) = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                  PostEvent(#PB_Event_Repaint)
                                  Break
                              EndSelect
                              
                            Case #PB_EventType_LeftButtonDown
                              MouseButtonLeftPrevious = MouseButtonLeftCurrent
                              MouseButtonLeftCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_LeftButtonUp
                              MouseButtonLeftPrevious = MouseButtonLeftCurrent
                              MouseButtonLeftCurrent = 0
                              
                            Case #PB_EventType_RightButtonDown
                              MouseButtonRightPrevious = MouseButtonRightCurrent
                              MouseButtonRightCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_RightButtonUp
                              MouseButtonRightPrevious = MouseButtonRightCurrent
                              MouseButtonRightCurrent = 0
                              
                            Case #PB_EventType_MiddleButtonDown
                              MouseButtonMiddlePrevious = MouseButtonMiddleCurrent
                              MouseButtonMiddleCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_MiddleButtonUp
                              MouseButtonRightPrevious = MouseButtonMiddleCurrent
                              MouseButtonMiddleCurrent = 0
                              
                          EndSelect
                      EndSelect
                    Case #PB_Event_CloseWindow
                      KillThread(VolumeThread)
                      Break 2
                    Default
                  EndSelect
                ForEver
              EndIf
            EndIf
            
            If Trigger_Chord_Button_7th = 1
              Trigger_Chord_Button_7th = 0
              If (MousePositionXCurrent-301)%31 <= 20
                If Keys(ChordKeys(#Chord_7th, (MousePositionXCurrent-301)/31)) = 0
                  PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Chord_7th, (MousePositionXCurrent-301)/31))
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Chord_7th, (MousePositionXCurrent-301)/31))
                EndIf
              EndIf
            ElseIf Trigger_Chord_Button_7th = 2
              Trigger_Chord_Button_7th = 0
              If (MousePositionXCurrent-301)%31 <= 20
                StartDrawing(CanvasOutput(#Gad_Canvas))
                DrawAlphaImage(ImageID(#Img_Button_Red_On), 301+((MousePositionXCurrent-301)/31)*31, 326)
                StopDrawing()
                Repeat
                  Event = WaitWindowEvent()
                  Select Event
                    Case #PB_Event_Gadget
                      Select EventGadget()
                        Case #Gad_Canvas
                          Select EventType()
                            Case #PB_EventType_KeyUp
                              Select GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                Case #VK_ESCAPE
                                  PostEvent(#PB_Event_Repaint)
                                  Break
                                Default
                                  ChordKeys(#Chord_7th, (MousePositionXCurrent-301)/31) = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                  PostEvent(#PB_Event_Repaint)
                                  Break
                              EndSelect
                              
                            Case #PB_EventType_LeftButtonDown
                              MouseButtonLeftPrevious = MouseButtonLeftCurrent
                              MouseButtonLeftCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_LeftButtonUp
                              MouseButtonLeftPrevious = MouseButtonLeftCurrent
                              MouseButtonLeftCurrent = 0
                              
                            Case #PB_EventType_RightButtonDown
                              MouseButtonRightPrevious = MouseButtonRightCurrent
                              MouseButtonRightCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_RightButtonUp
                              MouseButtonRightPrevious = MouseButtonRightCurrent
                              MouseButtonRightCurrent = 0
                              
                            Case #PB_EventType_MiddleButtonDown
                              MouseButtonMiddlePrevious = MouseButtonMiddleCurrent
                              MouseButtonMiddleCurrent = 1
                              PostEvent(#PB_Event_Repaint)
                              Break
                              
                            Case #PB_EventType_MiddleButtonUp
                              MouseButtonRightPrevious = MouseButtonMiddleCurrent
                              MouseButtonMiddleCurrent = 0
                              
                          EndSelect
                      EndSelect
                    Case #PB_Event_CloseWindow
                      KillThread(VolumeThread)
                      Break 2
                    Default
                  EndSelect
                ForEver
              EndIf
            EndIf
            
            
            If Trigger_Harp_Plate
              If MousePositionXCurrent >= 749 And MousePositionXCurrent <= 777 And MousePositionYCurrent >= 130 And MousePositionYCurrent <= 150
                Value_Chord_Chord = #Chord_None
                Value_Chord_Note = #Note_None
                For i = #Note_First To #Note_Last
                  For n = #Chord_First To #Chord_Last
                    Keys(ChordKeys(n, i)) = 0
                  Next
                Next
                Tick = 0
                Value_Master_Power = 0
                Delay(10)
                Value_Master_Power = 1
                
                PostEvent(#PB_Event_Repaint)
              Else
                
                
                
                
                If Trigger_Harp_Plate
                  Select MousePositionYCurrent
                    Case 92 To 100
                      If Status_Harp(#Harp_13) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_13) = 1
                        Status_Sound(#Dat_Harp_13) = #Curve_Trigger
                      EndIf
                    Case 101 To 124
                      If Status_Harp(#Harp_12) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_12) = 1
                        Status_Sound(#Dat_Harp_12) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_13) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 125 To 148
                      If Status_Harp(#Harp_11) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_11) = 1
                        Status_Sound(#Dat_Harp_11) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_12) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_13) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_13) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 149 To 172
                      If Status_Harp(#Harp_10) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_10) = 1
                        Status_Sound(#Dat_Harp_10) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_11) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_12) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_12) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 173 To 196
                      If Status_Harp(#Harp_9) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_9) = 1
                        Status_Sound(#Dat_Harp_9) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_10) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_11) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_11) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_13) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 197 To 220
                      If Status_Harp(#Harp_8) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_8) = 1
                        Status_Sound(#Dat_Harp_8) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_9) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_10) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_10) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_12) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 221 To 244
                      If Status_Harp(#Harp_7) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_7) = 1
                        Status_Sound(#Dat_Harp_7) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_8) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_9) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_9) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_11) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 245 To 268
                      If Status_Harp(#Harp_6) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_6) = 1
                        Status_Sound(#Dat_Harp_6) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_7) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_8) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_8) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_10) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 269 To 292
                      If Status_Harp(#Harp_5) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_5) = 1
                        Status_Sound(#Dat_Harp_5) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_6) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_7) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_7) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_9) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 293 To 316
                      If Status_Harp(#Harp_4) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_4) = 1
                        Status_Sound(#Dat_Harp_4) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_5) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_6) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_6) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_8) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 317 To 340
                      If Status_Harp(#Harp_3) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_3) = 1
                        Status_Sound(#Dat_Harp_3) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_4) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_5) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_5) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_7) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 341 To 364
                      If Status_Harp(#Harp_2) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_2) = 1
                        Status_Sound(#Dat_Harp_2) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_3) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_4) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_4) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_6) = #Curve_Trigger
                        EndIf
                      EndIf
                    Case 365 To 388
                      If Status_Harp(#Harp_1) = 0
                        For i = 0 To #Harp_13
                          Status_Harp(i) = 0
                        Next
                        Status_Harp(#Harp_1) = 1
                        Status_Sound(#Dat_Harp_1) = #Curve_Trigger
                        If Trigger_Harp_Plate & 2
                          Status_Sound(#Dat_Harp_2) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_3) = #Curve_Trigger
                        EndIf
                        If Trigger_Harp_Plate & 4
                          Status_Sound(#Dat_Harp_3) = #Curve_Trigger
                          Status_Sound(#Dat_Harp_5) = #Curve_Trigger
                        EndIf
                      EndIf
                  EndSelect
                  
                  
                EndIf
              EndIf
            EndIf
            
          Case #Event_HandleChordKeys
            ;--HandleChordKeys
            If Value_Master_Power
              If Not Value_Memory_Enable
                If Value_Chord_Chord = #Chord_None Or Value_Chord_Note = #Note_None
                  NewTick = 1
                  Tick = 0
                EndIf
                
                Select LastKey
                  Case ChordKeys(#Chord_Maj, #Note_Db), ChordKeys(#Chord_Min, #Note_Db), ChordKeys(#Chord_7th, #Note_Db)
                    Value_Chord_Note = #Note_Db
                  Case ChordKeys(#Chord_Maj, #Note_Ab), ChordKeys(#Chord_Min, #Note_Ab), ChordKeys(#Chord_7th, #Note_Ab)
                    Value_Chord_Note = #Note_Ab
                  Case ChordKeys(#Chord_Maj, #Note_Eb), ChordKeys(#Chord_Min, #Note_Eb), ChordKeys(#Chord_7th, #Note_Eb)
                    Value_Chord_Note = #Note_Eb
                  Case ChordKeys(#Chord_Maj, #Note_Bb), ChordKeys(#Chord_Min, #Note_Bb), ChordKeys(#Chord_7th, #Note_Bb)
                    Value_Chord_Note = #Note_Bb
                  Case ChordKeys(#Chord_Maj, #Note_F), ChordKeys(#Chord_Min, #Note_F), ChordKeys(#Chord_7th, #Note_F)
                    Value_Chord_Note = #Note_F
                  Case ChordKeys(#Chord_Maj, #Note_C), ChordKeys(#Chord_Min, #Note_C), ChordKeys(#Chord_7th, #Note_C)
                    Value_Chord_Note = #Note_C
                  Case ChordKeys(#Chord_Maj, #Note_G), ChordKeys(#Chord_Min, #Note_G), ChordKeys(#Chord_7th, #Note_G)
                    Value_Chord_Note = #Note_G
                  Case ChordKeys(#Chord_Maj, #Note_D), ChordKeys(#Chord_Min, #Note_D), ChordKeys(#Chord_7th, #Note_D)
                    Value_Chord_Note = #Note_D
                  Case ChordKeys(#Chord_Maj, #Note_A), ChordKeys(#Chord_Min, #Note_A), ChordKeys(#Chord_7th, #Note_A)
                    Value_Chord_Note = #Note_A
                  Case ChordKeys(#Chord_Maj, #Note_E), ChordKeys(#Chord_Min, #Note_E), ChordKeys(#Chord_7th, #Note_E)
                    Value_Chord_Note = #Note_E
                  Case ChordKeys(#Chord_Maj, #Note_B), ChordKeys(#Chord_Min, #Note_B), ChordKeys(#Chord_7th, #Note_B)
                    Value_Chord_Note = #Note_B
                  Case ChordKeys(#Chord_Maj, #Note_Fc), ChordKeys(#Chord_Min, #Note_Fc), ChordKeys(#Chord_7th, #Note_Fc)
                    Value_Chord_Note = #Note_Fc
                  Default
                    NoChordChange = 1
                EndSelect
                If Value_Chord_Note <> #Note_None And Not NoChordChange
                  If Keys(ChordKeys(#Chord_Maj, Value_Chord_Note)) And Keys(ChordKeys(#Chord_Min, Value_Chord_Note)) And Keys(ChordKeys(#Chord_7th, Value_Chord_Note))
                    Value_Chord_Chord = #Chord_Aug
                    NewChord = 1
                    If Value_Rhythm_Pattern = #Rhythm_None
                      NewTick = 1
                    EndIf
                  ElseIf Keys(ChordKeys(#Chord_Maj, Value_Chord_Note)) And Keys(ChordKeys(#Chord_Min, Value_Chord_Note))
                    If Not Value_Memory_Playback_Record And Value_Chord_Chord = #Chord_Aug
                      If LastKeyEventWasDown
                        LastKeyEventWasDown = 0
                        Value_Chord_Chord = #Chord_Dim
                        NewChord = 1
                      EndIf
                    Else
                      Value_Chord_Chord = #Chord_Dim
                      NewChord = 1
                    EndIf
                    If Value_Rhythm_Pattern = #Rhythm_None
                      NewTick = 1
                    EndIf
                  ElseIf Keys(ChordKeys(#Chord_Maj, Value_Chord_Note)) And Keys(ChordKeys(#Chord_7th, Value_Chord_Note))
                    If Not Value_Memory_Playback_Record And Value_Chord_Chord = #Chord_Aug
                      If LastKeyEventWasDown
                        LastKeyEventWasDown = 0
                        Value_Chord_Chord = #Chord_Ma7
                        NewChord = 1
                      EndIf
                    Else
                      Value_Chord_Chord = #Chord_Ma7
                      NewChord = 1
                    EndIf
                    If Value_Rhythm_Pattern = #Rhythm_None
                      NewTick = 1
                    EndIf
                  ElseIf Keys(ChordKeys(#Chord_Min, Value_Chord_Note)) And Keys(ChordKeys(#Chord_7th, Value_Chord_Note))
                    If Not Value_Memory_Playback_Record And Value_Chord_Chord = #Chord_Aug
                      If LastKeyEventWasDown
                        LastKeyEventWasDown = 0
                        Value_Chord_Chord = #Chord_Mi7
                        NewChord = 1
                      EndIf
                    Else
                      Value_Chord_Chord = #Chord_Mi7
                      NewChord = 1
                    EndIf
                    If Value_Rhythm_Pattern = #Rhythm_None
                      NewTick = 1
                    EndIf
                  ElseIf Keys(ChordKeys(#Chord_Maj, Value_Chord_Note))
                    If Not Value_Memory_Playback_Record And (Value_Chord_Chord = #Chord_Aug Or Value_Chord_Chord = #Chord_Dim Or Value_Chord_Chord = #Chord_Ma7 Or Value_Chord_Chord = #Chord_Mi7)
                    Else
                      Value_Chord_Chord = #Chord_Maj
                      NewChord = 1
                    EndIf
                    If Value_Rhythm_Pattern = #Rhythm_None
                      NewTick = 1
                    EndIf
                  ElseIf Keys(ChordKeys(#Chord_Min, Value_Chord_Note))
                    If Not Value_Memory_Playback_Record And (Value_Chord_Chord = #Chord_Aug Or Value_Chord_Chord = #Chord_Dim Or Value_Chord_Chord = #Chord_Ma7 Or Value_Chord_Chord = #Chord_Mi7)
                    Else
                      Value_Chord_Chord = #Chord_Min
                      NewChord = 1
                    EndIf
                    If Value_Rhythm_Pattern = #Rhythm_None
                      NewTick = 1
                    EndIf
                  ElseIf Keys(ChordKeys(#Chord_7th, Value_Chord_Note))
                    If Not Value_Memory_Playback_Record And (Value_Chord_Chord = #Chord_Aug Or Value_Chord_Chord = #Chord_Dim Or Value_Chord_Chord = #Chord_Ma7 Or Value_Chord_Chord = #Chord_Mi7)
                    Else
                      Value_Chord_Chord = #Chord_7th
                      NewChord = 1
                    EndIf
                    If Value_Rhythm_Pattern = #Rhythm_None
                      NewTick = 1
                    EndIf
                    
                  ElseIf Not Value_Memory_Playback_Record
                    Value_Chord_Note = #Note_None
                    Value_Chord_Chord = #Chord_None
                    Value_Rhythm_Pattern_Current = #Rhythm_None
                    Value_Master_Power = 0
                    Delay(10)
                    Value_Master_Power = 1
                  EndIf
                EndIf
                NoChordChange = 0
              Else
                If Not Value_Memory_Playback_Record
                  ;--Keyboard
                  If Keys(ChordKeys(#Chord_7th, #Note_Db))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(36))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_Min, #Note_Ab))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(37))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_Ab))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(38))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_Min, #Note_Eb))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(39))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_Eb))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(40))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                    
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_Bb))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(41))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_Min, #Note_F))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(42))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_F))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(43))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_Min, #Note_C))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(44))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_C))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(45))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_Min, #Note_G))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(46))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_G))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(47))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                    
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_D))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(48))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_Min, #Note_A))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(49))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_A))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(50))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_Min, #Note_E))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(51))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_E))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(52))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                    
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_B))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(53))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_Min, #Note_Fc))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(54))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  ElseIf Keys(ChordKeys(#Chord_7th, #Note_Fc))
                    SetSoundFrequency(#Snd_Keyboard, FrequenciesKeyboard(55))
                    Status_Sound(#Dat_Keyboard) = #Curve_Trigger
                  Else
                    Status_Sound(#Dat_Keyboard) = #Curve_None
                  EndIf
                EndIf
              EndIf
            EndIf
            
          Case #Event_HandleHarpKeys
            ;--HandleHarpKeys
            If Value_Master_Power
              If Keys(HarpKeys(#Harp_1))
                Keys(HarpKeys(#Harp_1)) = 0
                Status_Harp(#Harp_1) = 1
                Status_Sound(#Dat_Harp_1) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_2))
                Keys(HarpKeys(#Harp_2)) = 0
                Status_Harp(#Harp_2) = 1
                Status_Sound(#Dat_Harp_2) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_3))
                Keys(HarpKeys(#Harp_3)) = 0
                Status_Harp(#Harp_3) = 1
                Status_Sound(#Dat_Harp_3) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_4))
                Keys(HarpKeys(#Harp_4)) = 0
                Status_Harp(#Harp_4) = 1
                Status_Sound(#Dat_Harp_4) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_5))
                Keys(HarpKeys(#Harp_5)) = 0
                Status_Harp(#Harp_5) = 1
                Status_Sound(#Dat_Harp_5) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_6))
                Keys(HarpKeys(#Harp_6)) = 0
                Status_Harp(#Harp_6) = 1
                Status_Sound(#Dat_Harp_6) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_7))
                Keys(HarpKeys(#Harp_7)) = 0
                Status_Harp(#Harp_7) = 1
                Status_Sound(#Dat_Harp_7) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_8))
                Keys(HarpKeys(#Harp_8)) = 0
                Status_Harp(#Harp_8) = 1
                Status_Sound(#Dat_Harp_8) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_9))
                Keys(HarpKeys(#Harp_9)) = 0
                Status_Harp(#Harp_9) = 1
                Status_Sound(#Dat_Harp_9) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_10))
                Keys(HarpKeys(#Harp_10)) = 0
                Status_Harp(#Harp_10) = 1
                Status_Sound(#Dat_Harp_10) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_11))
                Keys(HarpKeys(#Harp_11)) = 0
                Status_Harp(#Harp_11) = 1
                Status_Sound(#Dat_Harp_11) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_12))
                Keys(HarpKeys(#Harp_12)) = 0
                Status_Harp(#Harp_12) = 1
                Status_Sound(#Dat_Harp_12) = #Curve_Trigger
              EndIf
              If Keys(HarpKeys(#Harp_13))
                Keys(HarpKeys(#Harp_13)) = 0
                Status_Harp(#Harp_13) = 1
                Status_Sound(#Dat_Harp_13) = #Curve_Trigger
              EndIf
            EndIf
            
          Case #PB_Event_Repaint
            ;--Repaint
            If StartDrawing(CanvasOutput(#Gad_Canvas))
              DrawImage(ImageID(#Img_Background), 0, 0)
              
              DrawAlphaImage(ImageID(#Img_Base), 0, 0)
              
              ;Power Button and LED
              Select Value_Master_Power
                Case 1
                  DrawAlphaImage(ImageID(#Img_LED_On), 133, 97)
                  DrawAlphaImage(ImageID(#Img_Button_Red_On), 126, 113)
                Case 0
                  DrawAlphaImage(ImageID(#Img_LED_Off), 133, 97)
                  DrawAlphaImage(ImageID(#Img_Button_Red_Off), 126, 113)
              EndSelect
              
              
              ;Master Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Big), 169, 95)
              Line(190, 116, Sin(Radian(-Value_Master_Volume*270-45))*21+Sign(Sin(Radian(-Value_Master_Volume*270-45)))*Bool(Abs(Sin(Radian(-Value_Master_Volume*270-45))*21) <= 0.5), Cos(Radian(-Value_Master_Volume*270-45))*21+Sign(Cos(Radian(-Value_Master_Volume*270-45)))*Bool(Abs(Cos(Radian(-Value_Master_Volume*270-45))*21) <= 0.5))
              
              ;Harp Voice 2 Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Ring), 73, 170)
              Line(94, 191, Sin(Radian(-Value_Level_Volume_Harp_1*270-45))*21+Sign(Sin(Radian(-Value_Level_Volume_Harp_1*270-45)))*Bool(Abs(Sin(Radian(-Value_Level_Volume_Harp_1*270-45))*21) <= 0.5), Cos(Radian(-Value_Level_Volume_Harp_1*270-45))*21+Sign(Cos(Radian(-Value_Level_Volume_Harp_1*270-45)))*Bool(Abs(Cos(Radian(-Value_Level_Volume_Harp_1*270-45))*21) <= 0.5))
              ;Harp Voice 1 Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Small), 81, 178)
              Line(94, 191, Sin(Radian(-Value_Level_Volume_Harp_2*270-45))*13+Sign(Sin(Radian(-Value_Level_Volume_Harp_2*270-45)))*Bool(Abs(Sin(Radian(-Value_Level_Volume_Harp_2*270-45))*13) <= 0.5), Cos(Radian(-Value_Level_Volume_Harp_2*270-45))*13+Sign(Cos(Radian(-Value_Level_Volume_Harp_2*270-45)))*Bool(Abs(Cos(Radian(-Value_Level_Volume_Harp_2*270-45))*13) <= 0.5))
              
              ;Harp Sustain Knob
              DrawAlphaImage(ImageID(#Img_Knob_Big), 121, 170)
              Line(142, 191, Sin(Radian(-Value_Level_Sustain*270-45))*21+Sign(Sin(Radian(-Value_Level_Sustain*270-45)))*Bool(Abs(Sin(Radian(-Value_Level_Sustain*270-45))*21) <= 0.5), Cos(Radian(-Value_Level_Sustain*270-45))*21+Sign(Cos(Radian(-Value_Level_Sustain*270-45)))*Bool(Abs(Cos(Radian(-Value_Level_Sustain*270-45))*21) <= 0.5))
              
              ;Keyboard Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Ring), 169, 170)
              Line(190, 191, Sin(Radian(-Value_Level_Volume_Keyboard*270-45))*21+Sign(Sin(Radian(-Value_Level_Volume_Keyboard*270-45)))*Bool(Abs(Sin(Radian(-Value_Level_Volume_Keyboard*270-45))*21) <= 0.5), Cos(Radian(-Value_Level_Volume_Keyboard*270-45))*21+Sign(Cos(Radian(-Value_Level_Volume_Keyboard*270-45)))*Bool(Abs(Cos(Radian(-Value_Level_Volume_Keyboard*270-45))*21) <= 0.5))
              ;Chords Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Small), 177, 178)
              Line(190, 191, Sin(Radian(-Value_Level_Volume_Chords*270-45))*13+Sign(Sin(Radian(-Value_Level_Volume_Chords*270-45)))*Bool(Abs(Sin(Radian(-Value_Level_Volume_Chords*270-45))*13) <= 0.5), Cos(Radian(-Value_Level_Volume_Chords*270-45))*13+Sign(Cos(Radian(-Value_Level_Volume_Chords*270-45)))*Bool(Abs(Cos(Radian(-Value_Level_Volume_Chords*270-45))*13) <= 0.5))
              
              ;Rhythm Alternate Selection Button
              Select Value_Rhythm_Alternate
                Case 1
                  DrawAlphaImage(ImageID(#Img_Button_Blue_On), 36, 274)
                Case 0
                  DrawAlphaImage(ImageID(#Img_Button_Blue_Off), 36, 274)
              EndSelect
              
              
              ;Rhythm Button
              For i = #Rhythm_First To #Rhythm_Last
                If i = Value_Rhythm_Pattern
                  DrawAlphaImage(ImageID(#Img_Button_Dark_On), 68+i*32, 274)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 68+i*32, 274)
                EndIf
              Next
              
              ;Auto-Bass-Sync Button
              If Value_Rhythm_AutoBassSync
                DrawAlphaImage(ImageID(#Img_Button_Black_On), 84, 329)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Black_Off), 84, 329)
              EndIf
              
              DrawAlphaImage(ImageID(#Img_Knob_Big), 121, 318)
              Line(142, 339, Sin(Radian(-Value_Rhythm_Tempo*270-45))*21+Sign(Sin(Radian(-Value_Rhythm_Tempo*270-45)))*Bool(Abs(Sin(Radian(-Value_Rhythm_Tempo*270-45))*21) <= 0.5), Cos(Radian(-Value_Rhythm_Tempo*270-45))*21+Sign(Cos(Radian(-Value_Rhythm_Tempo*270-45)))*Bool(Abs(Cos(Radian(-Value_Rhythm_Tempo*270-45))*21) <= 0.5))
              
              
              DrawAlphaImage(ImageID(#Img_Knob_Big), 169, 318)
              Line(190, 339, Sin(Radian(-Value_Rhythm_Volume*270-45))*21+Sign(Sin(Radian(-Value_Rhythm_Volume*270-45)))*Bool(Abs(Sin(Radian(-Value_Rhythm_Volume*270-45))*21) <= 0.5), Cos(Radian(-Value_Rhythm_Volume*270-45))*21+Sign(Cos(Radian(-Value_Rhythm_Volume*270-45)))*Bool(Abs(Cos(Radian(-Value_Rhythm_Volume*270-45))*21) <= 0.5))
              
              
              ;Memory Button
              Select Value_Memory_Enable
                Case 1
                  DrawAlphaImage(ImageID(#Img_LED_On), 94, 396)
                  DrawAlphaImage(ImageID(#Img_Button_Red_On), 126, 424)
                Case 0
                  DrawAlphaImage(ImageID(#Img_LED_Off), 94, 396)
                  DrawAlphaImage(ImageID(#Img_Button_Red_Off), 126, 424)
              EndSelect
              
              ;Playback-Record Button
              Select Value_Memory_Playback_Record
                Case 1
                  DrawAlphaImage(ImageID(#Img_Button_Dark_On), 159, 424)
                Case 0
                  DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 159, 424)
              EndSelect
              
              ;Repeat-Delete Button
              Select Value_Memory_Repeat_Delete
                Case 1
                  DrawAlphaImage(ImageID(#Img_Button_Dark_On), 192, 424)
                Case 0
                  DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 192, 424)
              EndSelect
              
              ;Playback-Enter Button
              Select Value_Memory_Playback_Enter
                Case 1
                  DrawAlphaImage(ImageID(#Img_Button_Wide_On), 162, 480)
                Case 0
                  DrawAlphaImage(ImageID(#Img_Button_Wide_Off), 162, 480)
              EndSelect
              
              ;Chord Buttons
              For i = #Note_First To #Note_Fc
                Select i
                  Case #Note_Eb
                    If Keys(ChordKeys(#Chord_Maj, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Light_Down_On), 271+i*31, 240)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Light_Down_Off), 271+i*31, 240)
                    EndIf
                  Case #Note_Bb
                    If Keys(ChordKeys(#Chord_Maj, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Light_Up_On), 271+i*31, 240)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Light_Up_Off), 271+i*31, 240)
                    EndIf
                  Case #Note_A, #Note_E, #Note_B
                    If Keys(ChordKeys(#Chord_Maj, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Light_O_On), 271+i*31, 240)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Light_O_Off), 271+i*31, 240)
                    EndIf
                  Default
                    If Keys(ChordKeys(#Chord_Maj, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Light_On), 271+i*31, 240)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Light_Off), 271+i*31, 240)
                    EndIf
                EndSelect
                
                Select i
                  Case #Note_Db, #Note_Bb, #Note_D
                    If Keys(ChordKeys(#Chord_Min, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Light_On), 286+i*31, 283)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Light_Off), 286+i*31, 283)
                    EndIf
                  Case #Note_A, #Note_E
                    If Keys(ChordKeys(#Chord_Min, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Dark_C_On), 286+i*31, 283)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Dark_C_Off), 286+i*31, 283)
                    EndIf
                  Case #Note_B
                    If Keys(ChordKeys(#Chord_Min, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Light_C_On), 286+i*31, 283)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Light_C_Off), 286+i*31, 283)
                    EndIf
                  Default
                    If Keys(ChordKeys(#Chord_Min, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Dark_On), 286+i*31, 283)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 286+i*31, 283)
                    EndIf
                EndSelect
                
                Select i
                  Case #Note_F, #Note_C, #Note_G
                    If Keys(ChordKeys(#Chord_7th, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Dark_Tri_On), 301+i*31, 326)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Dark_Tri_Off), 301+i*31, 326)
                    EndIf
                  Case #Note_A, #Note_E, #Note_B
                    If Keys(ChordKeys(#Chord_7th, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Dark_X_On), 301+i*31, 326)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Dark_X_Off), 301+i*31, 326)
                    EndIf
                  Default
                    If Keys(ChordKeys(#Chord_7th, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Dark_On), 301+i*31, 326)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 301+i*31, 326)
                    EndIf
                EndSelect
              Next
              
              ;Harp Plate
              ;Add playing finger maybe?
              
              
              StopDrawing()
            EndIf
          Case #PB_Event_CloseWindow
            KillThread(VolumeThread)
            Break
          Default
        EndSelect
      ForEver
    Else
      MessageRequester("Chordian Error", "Canvas could not be initialized.")
    EndIf
  Else
    MessageRequester("Chordian Error", "Window could not be initialized.")
  EndIf
Else
  MessageRequester("Chordian Error", "Sound device could not be initialized.")
EndIf
End