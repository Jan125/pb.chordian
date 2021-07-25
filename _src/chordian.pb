EnableExplicit
;-Data Sections
;--Graphics Data
DataSection
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
  Img_Button_Red_Off:
  IncludeBinary "img\button_red_off.png"
  Img_Button_Red_On:
  IncludeBinary "img\button_red_on.png"
  Img_Button_Light_Off:
  IncludeBinary "img\button_light_off.png"
  Img_Button_Light_On:
  IncludeBinary "img\button_light_on.png"
  
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
  Snd_Chord:
  IncludeBinary "snd\chordian_base.wav"
  Snd_Harp:
  IncludeBinary "snd\chordian_harp.wav"
  Snd_Drum_BD:
  IncludeBinary "snd\chordian_drum_bd.wav"
  Snd_Drum_HiHat:
  IncludeBinary "snd\chordian_drum_hihat.wav"
  Snd_Drum_Snare:
  IncludeBinary "snd\chordian_drum_snare.wav"
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
  #Pattern_Drum_HiHat
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
  #Snd_Drum_HiHat
  #Snd_Drum_Snare
EndEnumeration

Enumeration 1
  #Img_First
  
  #Img_Base = #Img_First
  #Img_Button_Black_Off
  #Img_Button_Black_On
  #Img_Button_Blue_Off
  #Img_Button_Blue_On
  #Img_Button_Dark_Off
  #Img_Button_Dark_On
  #Img_Button_Red_Off
  #Img_Button_Red_On
  #Img_Button_Light_Off
  #Img_Button_Light_On
  
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
  #Dat_Drum_HiHat
  #Dat_Drum_Snare
  #Dat_Last = #Dat_Drum_Snare
EndEnumeration

Enumeration -1
  #Curve_None
  #Curve_First
  #Curve_Trigger = #Curve_First
  #Curve_Attack
  #Curve_Decay
  #Curve_Sustain
  #Curve_Release
  #Curve_Last
EndEnumeration

Enumeration 1
  #Win_Main
EndEnumeration

Enumeration 1
  #Gad_Canvas
EndEnumeration

Enumeration #PB_Event_FirstCustomValue
  #Event_GetTriggers
  #Event_HandleTriggers
  #Event_GeneralKeyDown
  #Event_GeneralKeyUp
  #Event_HandleKeys
EndEnumeration

;-Loop Variables
Define i.l
Define n.l

;--Frequency Data
Global Dim Frequencies.l(#Note_Last, #Chord_Last, #Dat_Last)
;---C
;    Maj
Frequencies(#Note_C, #Chord_Maj, #Dat_Bass_1) = 1179442027
Frequencies(#Note_C, #Chord_Maj, #Dat_Bass_2) = 1171053419
Frequencies(#Note_C, #Chord_Maj, #Dat_Chord_1) = 1187830637
Frequencies(#Note_C, #Chord_Maj, #Dat_Chord_2) = 1191251273
Frequencies(#Note_C, #Chord_Maj, #Dat_Chord_3) = 1184462894
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_1) = 1171053419
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_2) = 1174474058
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_3) = 1167685676
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_4) = 1179442027
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_5) = 1182862666
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_6) = 1176074286
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_7) = 1187830637
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_8) = 1191251273
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_9) = 1184462894
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_10) = 1196219243
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_11) = 1199639881
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_12) = 1192851501
Frequencies(#Note_C, #Chord_Maj, #Dat_Harp_13) = 1204607853
;    Min
Frequencies(#Note_C, #Chord_Min, #Dat_Bass_1) = 1179442027
Frequencies(#Note_C, #Chord_Min, #Dat_Bass_2) = 1171053419
Frequencies(#Note_C, #Chord_Min, #Dat_Chord_1) = 1187830637
Frequencies(#Note_C, #Chord_Min, #Dat_Chord_2) = 1190370840
Frequencies(#Note_C, #Chord_Min, #Dat_Chord_3) = 1184462894
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_1) = 1171053419
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_2) = 1173593622
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_3) = 1167685676
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_4) = 1179442027
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_5) = 1181982230
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_6) = 1176074286
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_7) = 1187830637
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_8) = 1190370840
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_9) = 1184462894
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_10) = 1196219243
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_11) = 1198759448
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_12) = 1192851501
Frequencies(#Note_C, #Chord_Min, #Dat_Harp_13) = 1204607853
;    7th
Frequencies(#Note_C, #Chord_7th, #Dat_Bass_1) = 1179442027
Frequencies(#Note_C, #Chord_7th, #Dat_Bass_2) = 1171053419
Frequencies(#Note_C, #Chord_7th, #Dat_Chord_1) = 1187830637
Frequencies(#Note_C, #Chord_7th, #Dat_Chord_2) = 1191251273
Frequencies(#Note_C, #Chord_7th, #Dat_Chord_3) = 1186365896
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_1) = 1171053419
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_2) = 1174474058
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_3) = 1169588678
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_4) = 1179442027
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_5) = 1182862666
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_6) = 1177977288
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_7) = 1187830637
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_8) = 1191251273
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_9) = 1186365896
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_10) = 1196219243
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_11) = 1199639881
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_12) = 1194754503
Frequencies(#Note_C, #Chord_7th, #Dat_Harp_13) = 1204607853
;    Dim
Frequencies(#Note_C, #Chord_Dim, #Dat_Bass_1) = 1179442027
Frequencies(#Note_C, #Chord_Dim, #Dat_Bass_2) = 1171053419
Frequencies(#Note_C, #Chord_Dim, #Dat_Chord_1) = 1187830637
Frequencies(#Note_C, #Chord_Dim, #Dat_Chord_2) = 1190370840
Frequencies(#Note_C, #Chord_Dim, #Dat_Chord_3) = 1185694588
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_1) = 1171053419
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_2) = 1173593622
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_3) = 1168917374
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_4) = 1179442027
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_5) = 1181982230
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_6) = 1177305980
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_7) = 1187830637
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_8) = 1190370840
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_9) = 1185694588
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_10) = 1196219243
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_11) = 1198759448
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_12) = 1194083197
Frequencies(#Note_C, #Chord_Dim, #Dat_Harp_13) = 1204607853
;    Ma7
Frequencies(#Note_C, #Chord_Ma7, #Dat_Bass_1) = 1179442027
Frequencies(#Note_C, #Chord_Ma7, #Dat_Bass_2) = 1171053419
Frequencies(#Note_C, #Chord_Ma7, #Dat_Chord_1) = 1187830637
Frequencies(#Note_C, #Chord_Ma7, #Dat_Chord_2) = 1191251273
Frequencies(#Note_C, #Chord_Ma7, #Dat_Chord_3) = 1187077120
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_1) = 1171053419
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_2) = 1174474058
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_3) = 1170299904
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_4) = 1179442027
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_5) = 1182862666
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_6) = 1178688512
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_7) = 1187830637
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_8) = 1191251273
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_9) = 1187077120
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_10) = 1196219243
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_11) = 1199639881
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_12) = 1195465728
Frequencies(#Note_C, #Chord_Ma7, #Dat_Harp_13) = 1204607853
;    Mi7
Frequencies(#Note_C, #Chord_Mi7, #Dat_Bass_1) = 1179442027
Frequencies(#Note_C, #Chord_Mi7, #Dat_Bass_2) = 1171053419
Frequencies(#Note_C, #Chord_Mi7, #Dat_Chord_1) = 1187830637
Frequencies(#Note_C, #Chord_Mi7, #Dat_Chord_2) = 1190370840
Frequencies(#Note_C, #Chord_Mi7, #Dat_Chord_3) = 1186365896
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_1) = 1171053419
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_2) = 1173593622
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_3) = 1169588678
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_4) = 1179442027
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_5) = 1181982230
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_6) = 1177977288
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_7) = 1187830637
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_8) = 1190370840
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_9) = 1186365896
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_10) = 1196219243
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_11) = 1198759448
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_12) = 1194754503
Frequencies(#Note_C, #Chord_Mi7, #Dat_Harp_13) = 1204607853
;    Aug
Frequencies(#Note_C, #Chord_Aug, #Dat_Bass_1) = 1179442027
Frequencies(#Note_C, #Chord_Aug, #Dat_Bass_2) = 1171053419
Frequencies(#Note_C, #Chord_Aug, #Dat_Chord_1) = 1187830637
Frequencies(#Note_C, #Chord_Aug, #Dat_Chord_2) = 1191251273
Frequencies(#Note_C, #Chord_Aug, #Dat_Chord_3) = 1185060960
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_1) = 1171053419
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_2) = 1174474058
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_3) = 1168283744
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_4) = 1179442027
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_5) = 1182862666
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_6) = 1176672352
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_7) = 1187830637
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_8) = 1191251273
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_9) = 1185060960
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_10) = 1196219243
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_11) = 1199639881
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_12) = 1193449568
Frequencies(#Note_C, #Chord_Aug, #Dat_Harp_13) = 1204607853

;---C#/Db
;    Maj
Frequencies(#Note_Db, #Chord_Maj, #Dat_Bass_1) = 1180240352
Frequencies(#Note_Db, #Chord_Maj, #Dat_Bass_2) = 1171851744
Frequencies(#Note_Db, #Chord_Maj, #Dat_Chord_1) = 1188628959
Frequencies(#Note_Db, #Chord_Maj, #Dat_Chord_2) = 1191754185
Frequencies(#Note_Db, #Chord_Maj, #Dat_Chord_3) = 1185060960
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_1) = 1171851744
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_2) = 1174976969
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_3) = 1168283744
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_4) = 1180240352
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_5) = 1183365577
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_6) = 1176672352
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_7) = 1188628959
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_8) = 1191754185
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_9) = 1185060960
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_10) = 1197017567
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_11) = 1200142793
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_12) = 1193449568
Frequencies(#Note_Db, #Chord_Maj, #Dat_Harp_13) = 1205406175
;    Min
Frequencies(#Note_Db, #Chord_Min, #Dat_Bass_1) = 1180240352
Frequencies(#Note_Db, #Chord_Min, #Dat_Bass_2) = 1171851744
Frequencies(#Note_Db, #Chord_Min, #Dat_Chord_1) = 1188628959
Frequencies(#Note_Db, #Chord_Min, #Dat_Chord_2) = 1191251273
Frequencies(#Note_Db, #Chord_Min, #Dat_Chord_3) = 1185060960
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_1) = 1171851744
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_2) = 1174474058
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_3) = 1168283744
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_4) = 1180240352
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_5) = 1182862666
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_6) = 1176672352
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_7) = 1188628959
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_8) = 1191251273
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_9) = 1185060960
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_10) = 1197017567
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_11) = 1199639881
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_12) = 1193449568
Frequencies(#Note_Db, #Chord_Min, #Dat_Harp_13) = 1205406175
;    7th
Frequencies(#Note_Db, #Chord_7th, #Dat_Bass_1) = 1180240352
Frequencies(#Note_Db, #Chord_7th, #Dat_Bass_2) = 1171851744
Frequencies(#Note_Db, #Chord_7th, #Dat_Chord_1) = 1188628959
Frequencies(#Note_Db, #Chord_7th, #Dat_Chord_2) = 1191754185
Frequencies(#Note_Db, #Chord_7th, #Dat_Chord_3) = 1187077120
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_1) = 1171851744
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_2) = 1174976969
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_3) = 1170299904
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_4) = 1180240352
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_5) = 1183365577
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_6) = 1178688512
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_7) = 1188628959
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_8) = 1191754185
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_9) = 1187077120
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_10) = 1197017567
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_11) = 1200142793
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_12) = 1195465728
Frequencies(#Note_Db, #Chord_7th, #Dat_Harp_13) = 1205406175
;    Dim
Frequencies(#Note_Db, #Chord_Dim, #Dat_Bass_1) = 1180240352
Frequencies(#Note_Db, #Chord_Dim, #Dat_Bass_2) = 1171851744
Frequencies(#Note_Db, #Chord_Dim, #Dat_Chord_1) = 1188628959
Frequencies(#Note_Db, #Chord_Dim, #Dat_Chord_2) = 1191251273
Frequencies(#Note_Db, #Chord_Dim, #Dat_Chord_3) = 1186365896
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_1) = 1171851744
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_2) = 1174474058
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_3) = 1169588678
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_4) = 1180240352
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_5) = 1182862666
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_6) = 1177977288
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_7) = 1188628959
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_8) = 1191251273
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_9) = 1186365896
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_10) = 1197017567
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_11) = 1199639881
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_12) = 1194754503
Frequencies(#Note_Db, #Chord_Dim, #Dat_Harp_13) = 1205406175
;    Ma7
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Bass_1) = 1180240352
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Bass_2) = 1171851744
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Chord_1) = 1188628959
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Chord_2) = 1191754185
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Chord_3) = 1187830637
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_1) = 1171851744
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_2) = 1174976969
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_3) = 1171053419
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_4) = 1180240352
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_5) = 1183365577
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_6) = 1179442027
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_7) = 1188628959
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_8) = 1191754185
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_9) = 1187830637
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_10) = 1197017567
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_11) = 1200142793
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_12) = 1196219243
Frequencies(#Note_Db, #Chord_Ma7, #Dat_Harp_13) = 1205406175
;    Mi7
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Bass_1) = 1180240352
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Bass_2) = 1171851744
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Chord_1) = 1188628959
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Chord_2) = 1191251273
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Chord_3) = 1187077120
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_1) = 1171851744
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_2) = 1174474058
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_3) = 1170299904
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_4) = 1180240352
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_5) = 1182862666
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_6) = 1178688512
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_7) = 1188628959
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_8) = 1191251273
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_9) = 1187077120
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_10) = 1197017567
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_11) = 1199639881
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_12) = 1195465728
Frequencies(#Note_Db, #Chord_Mi7, #Dat_Harp_13) = 1205406175
;    Aug
Frequencies(#Note_Db, #Chord_Aug, #Dat_Bass_1) = 1180240352
Frequencies(#Note_Db, #Chord_Aug, #Dat_Bass_2) = 1171851744
Frequencies(#Note_Db, #Chord_Aug, #Dat_Chord_1) = 1188628959
Frequencies(#Note_Db, #Chord_Aug, #Dat_Chord_2) = 1191754185
Frequencies(#Note_Db, #Chord_Aug, #Dat_Chord_3) = 1185694588
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_1) = 1171851744
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_2) = 1174976969
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_3) = 1168917374
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_4) = 1180240352
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_5) = 1183365577
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_6) = 1177305980
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_7) = 1188628959
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_8) = 1191754185
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_9) = 1185694588
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_10) = 1197017567
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_11) = 1200142793
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_12) = 1194083197
Frequencies(#Note_Db, #Chord_Aug, #Dat_Harp_13) = 1205406175

;---D
;    Maj
Frequencies(#Note_D, #Chord_Maj, #Dat_Bass_1) = 1181086144
Frequencies(#Note_D, #Chord_Maj, #Dat_Bass_2) = 1172697536
Frequencies(#Note_D, #Chord_Maj, #Dat_Chord_1) = 1189474752
Frequencies(#Note_D, #Chord_Maj, #Dat_Chord_2) = 1183898393
Frequencies(#Note_D, #Chord_Maj, #Dat_Chord_3) = 1185694588
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_1) = 1172697536
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_2) = 1167121179
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_3) = 1168917374
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_4) = 1181086144
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_5) = 1175509785
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_6) = 1177305980
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_7) = 1189474752
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_8) = 1183898393
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_9) = 1185694588
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_10) = 1197863360
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_11) = 1192287002
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_12) = 1194083197
Frequencies(#Note_D, #Chord_Maj, #Dat_Harp_13) = 1206251968
;    Min
Frequencies(#Note_D, #Chord_Min, #Dat_Bass_1) = 1181086144
Frequencies(#Note_D, #Chord_Min, #Dat_Bass_2) = 1172697536
Frequencies(#Note_D, #Chord_Min, #Dat_Chord_1) = 1189474752
Frequencies(#Note_D, #Chord_Min, #Dat_Chord_2) = 1191754185
Frequencies(#Note_D, #Chord_Min, #Dat_Chord_3) = 1185694588
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_1) = 1172697536
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_2) = 1174976969
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_3) = 1168917374
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_4) = 1181086144
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_5) = 1183365577
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_6) = 1177305980
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_7) = 1189474752
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_8) = 1191754185
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_9) = 1185694588
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_10) = 1197863360
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_11) = 1200142793
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_12) = 1194083197
Frequencies(#Note_D, #Chord_Min, #Dat_Harp_13) = 1206251968
;    7th
Frequencies(#Note_D, #Chord_7th, #Dat_Bass_1) = 1181086144
Frequencies(#Note_D, #Chord_7th, #Dat_Bass_2) = 1172697536
Frequencies(#Note_D, #Chord_7th, #Dat_Chord_1) = 1189474752
Frequencies(#Note_D, #Chord_7th, #Dat_Chord_2) = 1183898393
Frequencies(#Note_D, #Chord_7th, #Dat_Chord_3) = 1187830637
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_1) = 1172697536
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_2) = 1167121179
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_3) = 1171053419
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_4) = 1181086144
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_5) = 1175509785
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_6) = 1179442027
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_7) = 1189474752
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_8) = 1183898393
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_9) = 1187830637
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_10) = 1197863360
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_11) = 1192287002
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_12) = 1196219243
Frequencies(#Note_D, #Chord_7th, #Dat_Harp_13) = 1206251968
;    Dim
Frequencies(#Note_D, #Chord_Dim, #Dat_Bass_1) = 1181086144
Frequencies(#Note_D, #Chord_Dim, #Dat_Bass_2) = 1172697536
Frequencies(#Note_D, #Chord_Dim, #Dat_Chord_1) = 1189474752
Frequencies(#Note_D, #Chord_Dim, #Dat_Chord_2) = 1191754185
Frequencies(#Note_D, #Chord_Dim, #Dat_Chord_3) = 1187077120
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_1) = 1172697536
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_2) = 1174976969
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_3) = 1170299904
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_4) = 1181086144
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_5) = 1183365577
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_6) = 1178688512
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_7) = 1189474752
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_8) = 1191754185
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_9) = 1187077120
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_10) = 1197863360
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_11) = 1200142793
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_12) = 1195465728
Frequencies(#Note_D, #Chord_Dim, #Dat_Harp_13) = 1206251968
;    Ma7
Frequencies(#Note_D, #Chord_Ma7, #Dat_Bass_1) = 1181086144
Frequencies(#Note_D, #Chord_Ma7, #Dat_Bass_2) = 1172697536
Frequencies(#Note_D, #Chord_Ma7, #Dat_Chord_1) = 1189474752
Frequencies(#Note_D, #Chord_Ma7, #Dat_Chord_2) = 1183898393
Frequencies(#Note_D, #Chord_Ma7, #Dat_Chord_3) = 1188628959
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_1) = 1172697536
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_2) = 1167121179
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_3) = 1171851744
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_4) = 1181086144
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_5) = 1175509785
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_6) = 1180240352
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_7) = 1189474752
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_8) = 1183898393
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_9) = 1188628959
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_10) = 1197863360
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_11) = 1192287002
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_12) = 1197017567
Frequencies(#Note_D, #Chord_Ma7, #Dat_Harp_13) = 1206251968
;    Mi7
Frequencies(#Note_D, #Chord_Mi7, #Dat_Bass_1) = 1181086144
Frequencies(#Note_D, #Chord_Mi7, #Dat_Bass_2) = 1172697536
Frequencies(#Note_D, #Chord_Mi7, #Dat_Chord_1) = 1189474752
Frequencies(#Note_D, #Chord_Mi7, #Dat_Chord_2) = 1191754185
Frequencies(#Note_D, #Chord_Mi7, #Dat_Chord_3) = 1187830637
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_1) = 1172697536
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_2) = 1174976969
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_3) = 1171053419
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_4) = 1181086144
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_5) = 1183365577
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_6) = 1179442027
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_7) = 1189474752
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_8) = 1191754185
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_9) = 1187830637
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_10) = 1197863360
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_11) = 1200142793
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_12) = 1196219243
Frequencies(#Note_D, #Chord_Mi7, #Dat_Harp_13) = 1206251968
;    Aug
Frequencies(#Note_D, #Chord_Aug, #Dat_Bass_1) = 1181086144
Frequencies(#Note_D, #Chord_Aug, #Dat_Bass_2) = 1172697536
Frequencies(#Note_D, #Chord_Aug, #Dat_Chord_1) = 1189474752
Frequencies(#Note_D, #Chord_Aug, #Dat_Chord_2) = 1183898393
Frequencies(#Note_D, #Chord_Aug, #Dat_Chord_3) = 1186365896
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_1) = 1172697536
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_2) = 1167121179
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_3) = 1169588678
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_4) = 1181086144
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_5) = 1175509785
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_6) = 1177977288
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_7) = 1189474752
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_8) = 1183898393
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_9) = 1186365896
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_10) = 1197863360
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_11) = 1192287002
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_12) = 1194754503
Frequencies(#Note_D, #Chord_Aug, #Dat_Harp_13) = 1206251968

;---D#/Eb
;    Maj
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Bass_1) = 1181982230
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Bass_2) = 1173593622
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Chord_1) = 1190370840
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Chord_2) = 1184462894
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Chord_3) = 1186365896
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_1) = 1173593622
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_2) = 1167685676
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_3) = 1169588678
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_4) = 1181982230
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_5) = 1176074286
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_6) = 1177977288
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_7) = 1190370840
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_8) = 1184462894
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_9) = 1186365896
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_10) = 1198759448
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_11) = 1192851501
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_12) = 1194754503
Frequencies(#Note_Eb, #Chord_Maj, #Dat_Harp_13) = 1207148056
;    Min
Frequencies(#Note_Eb, #Chord_Min, #Dat_Bass_1) = 1181982230
Frequencies(#Note_Eb, #Chord_Min, #Dat_Bass_2) = 1173593622
Frequencies(#Note_Eb, #Chord_Min, #Dat_Chord_1) = 1190370840
Frequencies(#Note_Eb, #Chord_Min, #Dat_Chord_2) = 1183898393
Frequencies(#Note_Eb, #Chord_Min, #Dat_Chord_3) = 1186365896
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_1) = 1173593622
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_2) = 1167121179
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_3) = 1169588678
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_4) = 1181982230
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_5) = 1175509785
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_6) = 1177977288
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_7) = 1190370840
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_8) = 1183898393
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_9) = 1186365896
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_10) = 1198759448
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_11) = 1192287002
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_12) = 1194754503
Frequencies(#Note_Eb, #Chord_Min, #Dat_Harp_13) = 1207148056
;    7th
Frequencies(#Note_Eb, #Chord_7th, #Dat_Bass_1) = 1181982230
Frequencies(#Note_Eb, #Chord_7th, #Dat_Bass_2) = 1173593622
Frequencies(#Note_Eb, #Chord_7th, #Dat_Chord_1) = 1190370840
Frequencies(#Note_Eb, #Chord_7th, #Dat_Chord_2) = 1184462894
Frequencies(#Note_Eb, #Chord_7th, #Dat_Chord_3) = 1188628959
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_1) = 1173593622
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_2) = 1167685676
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_3) = 1171851744
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_4) = 1181982230
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_5) = 1176074286
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_6) = 1180240352
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_7) = 1190370840
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_8) = 1184462894
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_9) = 1188628959
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_10) = 1198759448
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_11) = 1192851501
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_12) = 1197017567
Frequencies(#Note_Eb, #Chord_7th, #Dat_Harp_13) = 1207148056
;    Dim
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Bass_1) = 1181982230
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Bass_2) = 1173593622
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Chord_1) = 1190370840
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Chord_2) = 1183898393
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Chord_3) = 1187830637
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_1) = 1173593622
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_2) = 1167121179
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_3) = 1171053419
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_4) = 1181982230
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_5) = 1175509785
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_6) = 1179442027
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_7) = 1190370840
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_8) = 1183898393
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_9) = 1187830637
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_10) = 1198759448
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_11) = 1192287002
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_12) = 1196219243
Frequencies(#Note_Eb, #Chord_Dim, #Dat_Harp_13) = 1207148056
;    Ma7
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Bass_1) = 1181982230
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Bass_2) = 1173593622
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Chord_1) = 1190370840
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Chord_2) = 1184462894
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Chord_3) = 1189474752
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_1) = 1173593622
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_2) = 1167685676
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_3) = 1172697536
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_4) = 1181982230
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_5) = 1176074286
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_6) = 1181086144
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_7) = 1190370840
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_8) = 1184462894
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_9) = 1189474752
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_10) = 1198759448
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_11) = 1192851501
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_12) = 1197863360
Frequencies(#Note_Eb, #Chord_Ma7, #Dat_Harp_13) = 1207148056
;    Mi7
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Bass_1) = 1181982230
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Bass_2) = 1173593622
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Chord_1) = 1190370840
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Chord_2) = 1183898393
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Chord_3) = 1188628959
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_1) = 1173593622
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_2) = 1167121179
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_3) = 1171851744
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_4) = 1181982230
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_5) = 1175509785
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_6) = 1180240352
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_7) = 1190370840
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_8) = 1183898393
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_9) = 1188628959
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_10) = 1198759448
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_11) = 1192287002
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_12) = 1197017567
Frequencies(#Note_Eb, #Chord_Mi7, #Dat_Harp_13) = 1207148056
;    Aug
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Bass_1) = 1181982230
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Bass_2) = 1173593622
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Chord_1) = 1190370840
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Chord_2) = 1184462894
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Chord_3) = 1187077120
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_1) = 1173593622
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_2) = 1167685676
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_3) = 1170299904
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_4) = 1181982230
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_5) = 1176074286
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_6) = 1178688512
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_7) = 1190370840
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_8) = 1184462894
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_9) = 1187077120
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_10) = 1198759448
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_11) = 1192851501
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_12) = 1195465728
Frequencies(#Note_Eb, #Chord_Aug, #Dat_Harp_13) = 1207148056

;---E
;    Maj
Frequencies(#Note_E, #Chord_Maj, #Dat_Bass_1) = 1182862666
Frequencies(#Note_E, #Chord_Maj, #Dat_Bass_2) = 1174474058
Frequencies(#Note_E, #Chord_Maj, #Dat_Chord_1) = 1191251273
Frequencies(#Note_E, #Chord_Maj, #Dat_Chord_2) = 1185060960
Frequencies(#Note_E, #Chord_Maj, #Dat_Chord_3) = 1187077120
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_1) = 1174474058
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_2) = 1168283744
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_3) = 1170299904
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_4) = 1182862666
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_5) = 1176672352
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_6) = 1178688512
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_7) = 1191251273
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_8) = 1185060960
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_9) = 1187077120
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_10) = 1199639881
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_11) = 1193449568
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_12) = 1195465728
Frequencies(#Note_E, #Chord_Maj, #Dat_Harp_13) = 1208028489
;    Min
Frequencies(#Note_E, #Chord_Min, #Dat_Bass_1) = 1182862666
Frequencies(#Note_E, #Chord_Min, #Dat_Bass_2) = 1174474058
Frequencies(#Note_E, #Chord_Min, #Dat_Chord_1) = 1191251273
Frequencies(#Note_E, #Chord_Min, #Dat_Chord_2) = 1184462894
Frequencies(#Note_E, #Chord_Min, #Dat_Chord_3) = 1187077120
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_1) = 1174474058
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_2) = 1167685676
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_3) = 1170299904
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_4) = 1182862666
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_5) = 1176074286
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_6) = 1178688512
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_7) = 1191251273
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_8) = 1184462894
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_9) = 1187077120
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_10) = 1199639881
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_11) = 1192851501
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_12) = 1195465728
Frequencies(#Note_E, #Chord_Min, #Dat_Harp_13) = 1208028489
;    7th
Frequencies(#Note_E, #Chord_7th, #Dat_Bass_1) = 1182862666
Frequencies(#Note_E, #Chord_7th, #Dat_Bass_2) = 1174474058
Frequencies(#Note_E, #Chord_7th, #Dat_Chord_1) = 1191251273
Frequencies(#Note_E, #Chord_7th, #Dat_Chord_2) = 1185060960
Frequencies(#Note_E, #Chord_7th, #Dat_Chord_3) = 1189474752
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_1) = 1174474058
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_2) = 1168283744
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_3) = 1172697536
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_4) = 1182862666
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_5) = 1176672352
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_6) = 1181086144
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_7) = 1191251273
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_8) = 1185060960
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_9) = 1189474752
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_10) = 1199639881
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_11) = 1193449568
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_12) = 1197863360
Frequencies(#Note_E, #Chord_7th, #Dat_Harp_13) = 1208028489
;    Dim
Frequencies(#Note_E, #Chord_Dim, #Dat_Bass_1) = 1182862666
Frequencies(#Note_E, #Chord_Dim, #Dat_Bass_2) = 1174474058
Frequencies(#Note_E, #Chord_Dim, #Dat_Chord_1) = 1191251273
Frequencies(#Note_E, #Chord_Dim, #Dat_Chord_2) = 1184462894
Frequencies(#Note_E, #Chord_Dim, #Dat_Chord_3) = 1188628959
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_1) = 1174474058
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_2) = 1167685676
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_3) = 1171851744
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_4) = 1182862666
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_5) = 1176074286
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_6) = 1180240352
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_7) = 1191251273
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_8) = 1184462894
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_9) = 1188628959
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_10) = 1199639881
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_11) = 1192851501
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_12) = 1197017567
Frequencies(#Note_E, #Chord_Dim, #Dat_Harp_13) = 1208028489
;    Ma7
Frequencies(#Note_E, #Chord_Ma7, #Dat_Bass_1) = 1182862666
Frequencies(#Note_E, #Chord_Ma7, #Dat_Bass_2) = 1174474058
Frequencies(#Note_E, #Chord_Ma7, #Dat_Chord_1) = 1191251273
Frequencies(#Note_E, #Chord_Ma7, #Dat_Chord_2) = 1185060960
Frequencies(#Note_E, #Chord_Ma7, #Dat_Chord_3) = 1190370840
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_1) = 1174474058
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_2) = 1168283744
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_3) = 1173593622
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_4) = 1182862666
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_5) = 1176672352
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_6) = 1181982230
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_7) = 1191251273
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_8) = 1185060960
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_9) = 1190370840
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_10) = 1199639881
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_11) = 1193449568
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_12) = 1198759448
Frequencies(#Note_E, #Chord_Ma7, #Dat_Harp_13) = 1208028489
;    Mi7
Frequencies(#Note_E, #Chord_Mi7, #Dat_Bass_1) = 1182862666
Frequencies(#Note_E, #Chord_Mi7, #Dat_Bass_2) = 1174474058
Frequencies(#Note_E, #Chord_Mi7, #Dat_Chord_1) = 1191251273
Frequencies(#Note_E, #Chord_Mi7, #Dat_Chord_2) = 1184462894
Frequencies(#Note_E, #Chord_Mi7, #Dat_Chord_3) = 1189474752
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_1) = 1174474058
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_2) = 1167685676
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_3) = 1172697536
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_4) = 1182862666
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_5) = 1176074286
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_6) = 1181086144
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_7) = 1191251273
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_8) = 1184462894
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_9) = 1189474752
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_10) = 1199639881
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_11) = 1192851501
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_12) = 1197863360
Frequencies(#Note_E, #Chord_Mi7, #Dat_Harp_13) = 1208028489
;    Aug
Frequencies(#Note_E, #Chord_Aug, #Dat_Bass_1) = 1182862666
Frequencies(#Note_E, #Chord_Aug, #Dat_Bass_2) = 1174474058
Frequencies(#Note_E, #Chord_Aug, #Dat_Chord_1) = 1191251273
Frequencies(#Note_E, #Chord_Aug, #Dat_Chord_2) = 1185060960
Frequencies(#Note_E, #Chord_Aug, #Dat_Chord_3) = 1187830637
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_1) = 1174474058
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_2) = 1168283744
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_3) = 1171053419
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_4) = 1182862666
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_5) = 1176672352
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_6) = 1179442027
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_7) = 1191251273
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_8) = 1185060960
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_9) = 1187830637
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_10) = 1199639881
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_11) = 1193449568
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_12) = 1196219243
Frequencies(#Note_E, #Chord_Aug, #Dat_Harp_13) = 1208028489

;---F
;    Maj
Frequencies(#Note_F, #Chord_Maj, #Dat_Bass_1) = 1183365577
Frequencies(#Note_F, #Chord_Maj, #Dat_Bass_2) = 1174976969
Frequencies(#Note_F, #Chord_Maj, #Dat_Chord_1) = 1191754185
Frequencies(#Note_F, #Chord_Maj, #Dat_Chord_2) = 1185694588
Frequencies(#Note_F, #Chord_Maj, #Dat_Chord_3) = 1187830637
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_1) = 1174976969
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_2) = 1168917374
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_3) = 1171053419
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_4) = 1183365577
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_5) = 1177305980
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_6) = 1179442027
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_7) = 1191754185
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_8) = 1185694588
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_9) = 1187830637
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_10) = 1200142793
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_11) = 1194083197
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_12) = 1196219243
Frequencies(#Note_F, #Chord_Maj, #Dat_Harp_13) = 1208531401
;    Min
Frequencies(#Note_F, #Chord_Min, #Dat_Bass_1) = 1183365577
Frequencies(#Note_F, #Chord_Min, #Dat_Bass_2) = 1174976969
Frequencies(#Note_F, #Chord_Min, #Dat_Chord_1) = 1191754185
Frequencies(#Note_F, #Chord_Min, #Dat_Chord_2) = 1185060960
Frequencies(#Note_F, #Chord_Min, #Dat_Chord_3) = 1187830637
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_1) = 1174976969
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_2) = 1168283744
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_3) = 1171053419
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_4) = 1183365577
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_5) = 1176672352
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_6) = 1179442027
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_7) = 1191754185
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_8) = 1185060960
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_9) = 1187830637
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_10) = 1200142793
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_11) = 1193449568
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_12) = 1196219243
Frequencies(#Note_F, #Chord_Min, #Dat_Harp_13) = 1208531401
;    7th
Frequencies(#Note_F, #Chord_7th, #Dat_Bass_1) = 1183365577
Frequencies(#Note_F, #Chord_7th, #Dat_Bass_2) = 1174976969
Frequencies(#Note_F, #Chord_7th, #Dat_Chord_1) = 1191754185
Frequencies(#Note_F, #Chord_7th, #Dat_Chord_2) = 1185694588
Frequencies(#Note_F, #Chord_7th, #Dat_Chord_3) = 1190370840
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_1) = 1174976969
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_2) = 1168917374
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_3) = 1173593622
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_4) = 1183365577
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_5) = 1177305980
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_6) = 1181982230
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_7) = 1191754185
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_8) = 1185694588
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_9) = 1190370840
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_10) = 1200142793
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_11) = 1194083197
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_12) = 1198759448
Frequencies(#Note_F, #Chord_7th, #Dat_Harp_13) = 1208531401
;    Dim
Frequencies(#Note_F, #Chord_Dim, #Dat_Bass_1) = 1183365577
Frequencies(#Note_F, #Chord_Dim, #Dat_Bass_2) = 1174976969
Frequencies(#Note_F, #Chord_Dim, #Dat_Chord_1) = 1191754185
Frequencies(#Note_F, #Chord_Dim, #Dat_Chord_2) = 1185060960
Frequencies(#Note_F, #Chord_Dim, #Dat_Chord_3) = 1189474752
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_1) = 1174976969
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_2) = 1168283744
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_3) = 1172697536
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_4) = 1183365577
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_5) = 1176672352
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_6) = 1181086144
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_7) = 1191754185
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_8) = 1185060960
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_9) = 1189474752
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_10) = 1200142793
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_11) = 1193449568
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_12) = 1197863360
Frequencies(#Note_F, #Chord_Dim, #Dat_Harp_13) = 1208531401
;    Ma7
Frequencies(#Note_F, #Chord_Ma7, #Dat_Bass_1) = 1183365577
Frequencies(#Note_F, #Chord_Ma7, #Dat_Bass_2) = 1174976969
Frequencies(#Note_F, #Chord_Ma7, #Dat_Chord_1) = 1191754185
Frequencies(#Note_F, #Chord_Ma7, #Dat_Chord_2) = 1185694588
Frequencies(#Note_F, #Chord_Ma7, #Dat_Chord_3) = 1191251273
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_1) = 1174976969
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_2) = 1168917374
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_3) = 1174474058
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_4) = 1183365577
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_5) = 1177305980
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_6) = 1182862666
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_7) = 1191754185
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_8) = 1185694588
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_9) = 1191251273
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_10) = 1200142793
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_11) = 1194083197
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_12) = 1199639881
Frequencies(#Note_F, #Chord_Ma7, #Dat_Harp_13) = 1208531401
;    Mi7
Frequencies(#Note_F, #Chord_Mi7, #Dat_Bass_1) = 1183365577
Frequencies(#Note_F, #Chord_Mi7, #Dat_Bass_2) = 1174976969
Frequencies(#Note_F, #Chord_Mi7, #Dat_Chord_1) = 1191754185
Frequencies(#Note_F, #Chord_Mi7, #Dat_Chord_2) = 1185060960
Frequencies(#Note_F, #Chord_Mi7, #Dat_Chord_3) = 1190370840
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_1) = 1174976969
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_2) = 1168283744
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_3) = 1173593622
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_4) = 1183365577
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_5) = 1176672352
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_6) = 1181982230
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_7) = 1191754185
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_8) = 1185060960
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_9) = 1190370840
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_10) = 1200142793
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_11) = 1193449568
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_12) = 1198759448
Frequencies(#Note_F, #Chord_Mi7, #Dat_Harp_13) = 1208531401
;    Aug
Frequencies(#Note_F, #Chord_Aug, #Dat_Bass_1) = 1183365577
Frequencies(#Note_F, #Chord_Aug, #Dat_Bass_2) = 1174976969
Frequencies(#Note_F, #Chord_Aug, #Dat_Chord_1) = 1191754185
Frequencies(#Note_F, #Chord_Aug, #Dat_Chord_2) = 1185694588
Frequencies(#Note_F, #Chord_Aug, #Dat_Chord_3) = 1188628959
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_1) = 1174976969
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_2) = 1168917374
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_3) = 1171851744
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_4) = 1183365577
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_5) = 1177305980
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_6) = 1180240352
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_7) = 1191754185
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_8) = 1185694588
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_9) = 1188628959
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_10) = 1200142793
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_11) = 1194083197
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_12) = 1197017567
Frequencies(#Note_F, #Chord_Aug, #Dat_Harp_13) = 1208531401

;---F#/Gb
;    Maj
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Bass_1) = 1175509785
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Bass_2) = 1167121179
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Chord_1) = 1183898393
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Chord_2) = 1186365896
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Chord_3) = 1188628959
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_1) = 1167121179
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_2) = 1169588678
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_3) = 1171851744
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_4) = 1175509785
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_5) = 1177977288
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_6) = 1180240352
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_7) = 1183898393
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_8) = 1186365896
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_9) = 1188628959
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_10) = 1192287002
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_11) = 1194754503
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_12) = 1197017567
Frequencies(#Note_Fc, #Chord_Maj, #Dat_Harp_13) = 1200675610
;    Min
Frequencies(#Note_Fc, #Chord_Min, #Dat_Bass_1) = 1175509785
Frequencies(#Note_Fc, #Chord_Min, #Dat_Bass_2) = 1167121179
Frequencies(#Note_Fc, #Chord_Min, #Dat_Chord_1) = 1183898393
Frequencies(#Note_Fc, #Chord_Min, #Dat_Chord_2) = 1185694588
Frequencies(#Note_Fc, #Chord_Min, #Dat_Chord_3) = 1188628959
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_1) = 1167121179
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_2) = 1168917374
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_3) = 1171851744
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_4) = 1175509785
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_5) = 1177305980
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_6) = 1180240352
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_7) = 1183898393
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_8) = 1185694588
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_9) = 1188628959
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_10) = 1192287002
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_11) = 1194083197
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_12) = 1197017567
Frequencies(#Note_Fc, #Chord_Min, #Dat_Harp_13) = 1200675610
;    7th
Frequencies(#Note_Fc, #Chord_7th, #Dat_Bass_1) = 1175509785
Frequencies(#Note_Fc, #Chord_7th, #Dat_Bass_2) = 1167121179
Frequencies(#Note_Fc, #Chord_7th, #Dat_Chord_1) = 1183898393
Frequencies(#Note_Fc, #Chord_7th, #Dat_Chord_2) = 1186365896
Frequencies(#Note_Fc, #Chord_7th, #Dat_Chord_3) = 1191251273
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_1) = 1167121179
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_2) = 1169588678
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_3) = 1174474058
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_4) = 1175509785
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_5) = 1177977288
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_6) = 1182862666
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_7) = 1183898393
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_8) = 1186365896
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_9) = 1191251273
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_10) = 1192287002
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_11) = 1194754503
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_12) = 1199639881
Frequencies(#Note_Fc, #Chord_7th, #Dat_Harp_13) = 1200675610
;    Dim
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Bass_1) = 1175509785
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Bass_2) = 1167121179
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Chord_1) = 1183898393
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Chord_2) = 1185694588
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Chord_3) = 1190370840
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_1) = 1167121179
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_2) = 1168917374
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_3) = 1173593622
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_4) = 1175509785
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_5) = 1177305980
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_6) = 1181982230
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_7) = 1183898393
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_8) = 1185694588
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_9) = 1190370840
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_10) = 1192287002
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_11) = 1194083197
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_12) = 1198759448
Frequencies(#Note_Fc, #Chord_Dim, #Dat_Harp_13) = 1200675610
;    Ma7
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Bass_1) = 1175509785
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Bass_2) = 1167121179
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Chord_1) = 1183898393
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Chord_2) = 1186365896
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Chord_3) = 1191754185
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_1) = 1167121179
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_2) = 1169588678
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_3) = 1174976969
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_4) = 1175509785
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_5) = 1177977288
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_6) = 1183365577
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_7) = 1183898393
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_8) = 1186365896
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_9) = 1191754185
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_10) = 1192287002
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_11) = 1194754503
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_12) = 1200142793
Frequencies(#Note_Fc, #Chord_Ma7, #Dat_Harp_13) = 1200675610
;    Mi7
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Bass_1) = 1175509785
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Bass_2) = 1167121179
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Chord_1) = 1183898393
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Chord_2) = 1185694588
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Chord_3) = 1191251273
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_1) = 1167121179
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_2) = 1168917374
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_3) = 1174474058
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_4) = 1175509785
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_5) = 1177305980
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_6) = 1182862666
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_7) = 1183898393
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_8) = 1185694588
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_9) = 1191251273
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_10) = 1192287002
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_11) = 1194083197
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_12) = 1199639881
Frequencies(#Note_Fc, #Chord_Mi7, #Dat_Harp_13) = 1200675610
;    Aug
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Bass_1) = 1175509785
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Bass_2) = 1167121179
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Chord_1) = 1183898393
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Chord_2) = 1186365896
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Chord_3) = 1189474752
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_1) = 1167121179
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_2) = 1169588678
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_3) = 1172697536
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_4) = 1175509785
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_5) = 1177977288
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_6) = 1181086144
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_7) = 1183898393
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_8) = 1186365896
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_9) = 1189474752
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_10) = 1192287002
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_11) = 1194754503
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_12) = 1197863360
Frequencies(#Note_Fc, #Chord_Aug, #Dat_Harp_13) = 1200675610

;---G
;    Maj
Frequencies(#Note_G, #Chord_Maj, #Dat_Bass_1) = 1176074286
Frequencies(#Note_G, #Chord_Maj, #Dat_Bass_2) = 1167685676
Frequencies(#Note_G, #Chord_Maj, #Dat_Chord_1) = 1184462894
Frequencies(#Note_G, #Chord_Maj, #Dat_Chord_2) = 1187077120
Frequencies(#Note_G, #Chord_Maj, #Dat_Chord_3) = 1189474752
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_1) = 1167685676
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_2) = 1170299904
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_3) = 1172697536
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_4) = 1176074286
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_5) = 1178688512
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_6) = 1181086144
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_7) = 1184462894
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_8) = 1187077120
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_9) = 1189474752
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_10) = 1192851501
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_11) = 1195465728
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_12) = 1197863360
Frequencies(#Note_G, #Chord_Maj, #Dat_Harp_13) = 1201240109
;    Min
Frequencies(#Note_G, #Chord_Min, #Dat_Bass_1) = 1176074286
Frequencies(#Note_G, #Chord_Min, #Dat_Bass_2) = 1167685676
Frequencies(#Note_G, #Chord_Min, #Dat_Chord_1) = 1184462894
Frequencies(#Note_G, #Chord_Min, #Dat_Chord_2) = 1186365896
Frequencies(#Note_G, #Chord_Min, #Dat_Chord_3) = 1189474752
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_1) = 1167685676
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_2) = 1169588678
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_3) = 1172697536
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_4) = 1176074286
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_5) = 1177977288
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_6) = 1181086144
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_7) = 1184462894
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_8) = 1186365896
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_9) = 1189474752
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_10) = 1192851501
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_11) = 1194754503
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_12) = 1197863360
Frequencies(#Note_G, #Chord_Min, #Dat_Harp_13) = 1201240109
;    7th
Frequencies(#Note_G, #Chord_7th, #Dat_Bass_1) = 1176074286
Frequencies(#Note_G, #Chord_7th, #Dat_Bass_2) = 1167685676
Frequencies(#Note_G, #Chord_7th, #Dat_Chord_1) = 1184462894
Frequencies(#Note_G, #Chord_7th, #Dat_Chord_2) = 1187077120
Frequencies(#Note_G, #Chord_7th, #Dat_Chord_3) = 1191754185
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_1) = 1167685676
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_2) = 1170299904
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_3) = 1174976969
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_4) = 1176074286
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_5) = 1178688512
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_6) = 1183365577
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_7) = 1184462894
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_8) = 1187077120
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_9) = 1191754185
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_10) = 1192851501
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_11) = 1195465728
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_12) = 1200142793
Frequencies(#Note_G, #Chord_7th, #Dat_Harp_13) = 1201240109
;    Dim
Frequencies(#Note_G, #Chord_Dim, #Dat_Bass_1) = 1176074286
Frequencies(#Note_G, #Chord_Dim, #Dat_Bass_2) = 1167685676
Frequencies(#Note_G, #Chord_Dim, #Dat_Chord_1) = 1184462894
Frequencies(#Note_G, #Chord_Dim, #Dat_Chord_2) = 1186365896
Frequencies(#Note_G, #Chord_Dim, #Dat_Chord_3) = 1191251273
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_1) = 1167685676
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_2) = 1169588678
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_3) = 1174474058
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_4) = 1176074286
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_5) = 1177977288
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_6) = 1182862666
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_7) = 1184462894
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_8) = 1186365896
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_9) = 1191251273
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_10) = 1192851501
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_11) = 1194754503
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_12) = 1199639881
Frequencies(#Note_G, #Chord_Dim, #Dat_Harp_13) = 1201240109
;    Ma7
Frequencies(#Note_G, #Chord_Ma7, #Dat_Bass_1) = 1176074286
Frequencies(#Note_G, #Chord_Ma7, #Dat_Bass_2) = 1167685676
Frequencies(#Note_G, #Chord_Ma7, #Dat_Chord_1) = 1184462894
Frequencies(#Note_G, #Chord_Ma7, #Dat_Chord_2) = 1187077120
Frequencies(#Note_G, #Chord_Ma7, #Dat_Chord_3) = 1183898393
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_1) = 1167685676
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_2) = 1170299904
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_3) = 1167121179
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_4) = 1176074286
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_5) = 1178688512
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_6) = 1175509785
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_7) = 1184462894
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_8) = 1187077120
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_9) = 1183898393
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_10) = 1192851501
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_11) = 1195465728
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_12) = 1192287002
Frequencies(#Note_G, #Chord_Ma7, #Dat_Harp_13) = 1201240109
;    Mi7
Frequencies(#Note_G, #Chord_Mi7, #Dat_Bass_1) = 1176074286
Frequencies(#Note_G, #Chord_Mi7, #Dat_Bass_2) = 1167685676
Frequencies(#Note_G, #Chord_Mi7, #Dat_Chord_1) = 1184462894
Frequencies(#Note_G, #Chord_Mi7, #Dat_Chord_2) = 1186365896
Frequencies(#Note_G, #Chord_Mi7, #Dat_Chord_3) = 1191754185
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_1) = 1167685676
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_2) = 1169588678
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_3) = 1174976969
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_4) = 1176074286
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_5) = 1177977288
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_6) = 1183365577
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_7) = 1184462894
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_8) = 1186365896
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_9) = 1191754185
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_10) = 1192851501
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_11) = 1194754503
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_12) = 1200142793
Frequencies(#Note_G, #Chord_Mi7, #Dat_Harp_13) = 1201240109
;    Aug
Frequencies(#Note_G, #Chord_Aug, #Dat_Bass_1) = 1176074286
Frequencies(#Note_G, #Chord_Aug, #Dat_Bass_2) = 1167685676
Frequencies(#Note_G, #Chord_Aug, #Dat_Chord_1) = 1184462894
Frequencies(#Note_G, #Chord_Aug, #Dat_Chord_2) = 1187077120
Frequencies(#Note_G, #Chord_Aug, #Dat_Chord_3) = 1190370840
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_1) = 1167685676
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_2) = 1170299904
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_3) = 1173593622
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_4) = 1176074286
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_5) = 1178688512
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_6) = 1181982230
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_7) = 1184462894
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_8) = 1187077120
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_9) = 1190370840
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_10) = 1192851501
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_11) = 1195465728
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_12) = 1198759448
Frequencies(#Note_G, #Chord_Aug, #Dat_Harp_13) = 1201240109

;---G#/Ab
;    Maj
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Bass_1) = 1176672352
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Bass_2) = 1168283744
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Chord_1) = 1185060960
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Chord_2) = 1187830637
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Chord_3) = 1190370840
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_1) = 1168283744
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_2) = 1171053419
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_3) = 1173593622
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_4) = 1176672352
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_5) = 1179442027
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_6) = 1181982230
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_7) = 1185060960
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_8) = 1187830637
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_9) = 1190370840
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_10) = 1193449568
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_11) = 1196219243
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_12) = 1198759448
Frequencies(#Note_Ab, #Chord_Maj, #Dat_Harp_13) = 1201838176
;    Min
Frequencies(#Note_Ab, #Chord_Min, #Dat_Bass_1) = 1176672352
Frequencies(#Note_Ab, #Chord_Min, #Dat_Bass_2) = 1168283744
Frequencies(#Note_Ab, #Chord_Min, #Dat_Chord_1) = 1185060960
Frequencies(#Note_Ab, #Chord_Min, #Dat_Chord_2) = 1187077120
Frequencies(#Note_Ab, #Chord_Min, #Dat_Chord_3) = 1190370840
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_1) = 1168283744
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_2) = 1170299904
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_3) = 1173593622
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_4) = 1176672352
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_5) = 1178688512
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_6) = 1181982230
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_7) = 1185060960
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_8) = 1187077120
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_9) = 1190370840
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_10) = 1193449568
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_11) = 1195465728
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_12) = 1198759448
Frequencies(#Note_Ab, #Chord_Min, #Dat_Harp_13) = 1201838176
;    7th
Frequencies(#Note_Ab, #Chord_7th, #Dat_Bass_1) = 1176672352
Frequencies(#Note_Ab, #Chord_7th, #Dat_Bass_2) = 1168283744
Frequencies(#Note_Ab, #Chord_7th, #Dat_Chord_1) = 1185060960
Frequencies(#Note_Ab, #Chord_7th, #Dat_Chord_2) = 1187830637
Frequencies(#Note_Ab, #Chord_7th, #Dat_Chord_3) = 1183898393
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_1) = 1168283744
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_2) = 1171053419
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_3) = 1167121179
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_4) = 1176672352
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_5) = 1179442027
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_6) = 1175509785
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_7) = 1185060960
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_8) = 1187830637
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_9) = 1183898393
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_10) = 1193449568
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_11) = 1196219243
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_12) = 1192287002
Frequencies(#Note_Ab, #Chord_7th, #Dat_Harp_13) = 1201838176
;    Dim
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Bass_1) = 1176672352
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Bass_2) = 1168283744
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Chord_1) = 1185060960
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Chord_2) = 1187077120
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Chord_3) = 1191754185
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_1) = 1168283744
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_2) = 1170299904
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_3) = 1174976969
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_4) = 1176672352
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_5) = 1178688512
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_6) = 1183365577
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_7) = 1185060960
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_8) = 1187077120
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_9) = 1191754185
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_10) = 1193449568
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_11) = 1195465728
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_12) = 1200142793
Frequencies(#Note_Ab, #Chord_Dim, #Dat_Harp_13) = 1201838176
;    Ma7
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Bass_1) = 1176672352
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Bass_2) = 1168283744
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Chord_1) = 1185060960
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Chord_2) = 1187830637
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Chord_3) = 1184462894
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_1) = 1168283744
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_2) = 1171053419
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_3) = 1167685676
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_4) = 1176672352
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_5) = 1179442027
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_6) = 1176074286
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_7) = 1185060960
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_8) = 1187830637
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_9) = 1184462894
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_10) = 1193449568
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_11) = 1196219243
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_12) = 1192851501
Frequencies(#Note_Ab, #Chord_Ma7, #Dat_Harp_13) = 1201838176
;    Mi7
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Bass_1) = 1176672352
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Bass_2) = 1168283744
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Chord_1) = 1185060960
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Chord_2) = 1187077120
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Chord_3) = 1183898393
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_1) = 1168283744
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_2) = 1170299904
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_3) = 1167121179
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_4) = 1176672352
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_5) = 1178688512
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_6) = 1175509785
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_7) = 1185060960
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_8) = 1187077120
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_9) = 1183898393
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_10) = 1193449568
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_11) = 1195465728
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_12) = 1192287002
Frequencies(#Note_Ab, #Chord_Mi7, #Dat_Harp_13) = 1201838176
;    Aug
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Bass_1) = 1176672352
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Bass_2) = 1168283744
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Chord_1) = 1185060960
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Chord_2) = 1187830637
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Chord_3) = 1191251273
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_1) = 1168283744
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_2) = 1171053419
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_3) = 1174474058
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_4) = 1176672352
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_5) = 1179442027
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_6) = 1182862666
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_7) = 1185060960
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_8) = 1187830637
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_9) = 1191251273
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_10) = 1193449568
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_11) = 1196219243
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_12) = 1199639881
Frequencies(#Note_Ab, #Chord_Aug, #Dat_Harp_13) = 1201838176

;---A
;    Maj
Frequencies(#Note_A, #Chord_Maj, #Dat_Bass_1) = 1177305980
Frequencies(#Note_A, #Chord_Maj, #Dat_Bass_2) = 1168917374
Frequencies(#Note_A, #Chord_Maj, #Dat_Chord_1) = 1185694588
Frequencies(#Note_A, #Chord_Maj, #Dat_Chord_2) = 1188628959
Frequencies(#Note_A, #Chord_Maj, #Dat_Chord_3) = 1191251273
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_1) = 1168917374
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_2) = 1171851744
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_3) = 1174474058
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_4) = 1177305980
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_5) = 1180240352
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_6) = 1182862666
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_7) = 1185694588
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_8) = 1188628959
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_9) = 1191251273
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_10) = 1194083197
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_11) = 1197017567
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_12) = 1199639881
Frequencies(#Note_A, #Chord_Maj, #Dat_Harp_13) = 1202471804
;    Min
Frequencies(#Note_A, #Chord_Min, #Dat_Bass_1) = 1177305980
Frequencies(#Note_A, #Chord_Min, #Dat_Bass_2) = 1168917374
Frequencies(#Note_A, #Chord_Min, #Dat_Chord_1) = 1185694588
Frequencies(#Note_A, #Chord_Min, #Dat_Chord_2) = 1187830637
Frequencies(#Note_A, #Chord_Min, #Dat_Chord_3) = 1191251273
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_1) = 1168917374
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_2) = 1171053419
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_3) = 1174474058
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_4) = 1177305980
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_5) = 1179442027
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_6) = 1182862666
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_7) = 1185694588
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_8) = 1187830637
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_9) = 1191251273
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_10) = 1194083197
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_11) = 1196219243
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_12) = 1199639881
Frequencies(#Note_A, #Chord_Min, #Dat_Harp_13) = 1202471804
;    7th
Frequencies(#Note_A, #Chord_7th, #Dat_Bass_1) = 1177305980
Frequencies(#Note_A, #Chord_7th, #Dat_Bass_2) = 1168917374
Frequencies(#Note_A, #Chord_7th, #Dat_Chord_1) = 1185694588
Frequencies(#Note_A, #Chord_7th, #Dat_Chord_2) = 1188628959
Frequencies(#Note_A, #Chord_7th, #Dat_Chord_3) = 1184462894
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_1) = 1168917374
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_2) = 1171851744
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_3) = 1167685676
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_4) = 1177305980
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_5) = 1180240352
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_6) = 1176074286
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_7) = 1185694588
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_8) = 1188628959
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_9) = 1184462894
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_10) = 1194083197
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_11) = 1197017567
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_12) = 1192851501
Frequencies(#Note_A, #Chord_7th, #Dat_Harp_13) = 1202471804
;    Dim
Frequencies(#Note_A, #Chord_Dim, #Dat_Bass_1) = 1177305980
Frequencies(#Note_A, #Chord_Dim, #Dat_Bass_2) = 1168917374
Frequencies(#Note_A, #Chord_Dim, #Dat_Chord_1) = 1185694588
Frequencies(#Note_A, #Chord_Dim, #Dat_Chord_2) = 1187830637
Frequencies(#Note_A, #Chord_Dim, #Dat_Chord_3) = 1183898393
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_1) = 1168917374
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_2) = 1171053419
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_3) = 1167121179
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_4) = 1177305980
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_5) = 1179442027
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_6) = 1175509785
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_7) = 1185694588
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_8) = 1187830637
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_9) = 1183898393
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_10) = 1194083197
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_11) = 1196219243
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_12) = 1192287002
Frequencies(#Note_A, #Chord_Dim, #Dat_Harp_13) = 1202471804
;    Ma7
Frequencies(#Note_A, #Chord_Ma7, #Dat_Bass_1) = 1177305980
Frequencies(#Note_A, #Chord_Ma7, #Dat_Bass_2) = 1168917374
Frequencies(#Note_A, #Chord_Ma7, #Dat_Chord_1) = 1185694588
Frequencies(#Note_A, #Chord_Ma7, #Dat_Chord_2) = 1188628959
Frequencies(#Note_A, #Chord_Ma7, #Dat_Chord_3) = 1185060960
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_1) = 1168917374
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_2) = 1171851744
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_3) = 1168283744
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_4) = 1177305980
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_5) = 1180240352
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_6) = 1176672352
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_7) = 1185694588
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_8) = 1188628959
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_9) = 1185060960
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_10) = 1194083197
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_11) = 1197017567
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_12) = 1193449568
Frequencies(#Note_A, #Chord_Ma7, #Dat_Harp_13) = 1202471804
;    Mi7
Frequencies(#Note_A, #Chord_Mi7, #Dat_Bass_1) = 1177305980
Frequencies(#Note_A, #Chord_Mi7, #Dat_Bass_2) = 1168917374
Frequencies(#Note_A, #Chord_Mi7, #Dat_Chord_1) = 1185694588
Frequencies(#Note_A, #Chord_Mi7, #Dat_Chord_2) = 1187830637
Frequencies(#Note_A, #Chord_Mi7, #Dat_Chord_3) = 1184462894
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_1) = 1168917374
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_2) = 1171053419
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_3) = 1167685676
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_4) = 1177305980
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_5) = 1179442027
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_6) = 1176074286
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_7) = 1185694588
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_8) = 1187830637
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_9) = 1184462894
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_10) = 1194083197
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_11) = 1196219243
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_12) = 1192851501
Frequencies(#Note_A, #Chord_Mi7, #Dat_Harp_13) = 1202471804
;    Aug
Frequencies(#Note_A, #Chord_Aug, #Dat_Bass_1) = 1177305980
Frequencies(#Note_A, #Chord_Aug, #Dat_Bass_2) = 1168917374
Frequencies(#Note_A, #Chord_Aug, #Dat_Chord_1) = 1185694588
Frequencies(#Note_A, #Chord_Aug, #Dat_Chord_2) = 1188628959
Frequencies(#Note_A, #Chord_Aug, #Dat_Chord_3) = 1191754185
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_1) = 1168917374
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_2) = 1171851744
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_3) = 1174976969
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_4) = 1177305980
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_5) = 1180240352
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_6) = 1183365577
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_7) = 1185694588
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_8) = 1188628959
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_9) = 1191754185
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_10) = 1194083197
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_11) = 1197017567
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_12) = 1200142793
Frequencies(#Note_A, #Chord_Aug, #Dat_Harp_13) = 1202471804

;---A#/Bb
;    Maj
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Bass_1) = 1177977288
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Bass_2) = 1169588678
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Chord_1) = 1186365896
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Chord_2) = 1189474752
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Chord_3) = 1191754185
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_1) = 1169588678
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_2) = 1172697536
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_3) = 1174976969
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_4) = 1177977288
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_5) = 1181086144
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_6) = 1183365577
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_7) = 1186365896
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_8) = 1189474752
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_9) = 1191754185
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_10) = 1194754503
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_11) = 1197863360
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_12) = 1200142793
Frequencies(#Note_Bb, #Chord_Maj, #Dat_Harp_13) = 1203143111
;    Min
Frequencies(#Note_Bb, #Chord_Min, #Dat_Bass_1) = 1177977288
Frequencies(#Note_Bb, #Chord_Min, #Dat_Bass_2) = 1169588678
Frequencies(#Note_Bb, #Chord_Min, #Dat_Chord_1) = 1186365896
Frequencies(#Note_Bb, #Chord_Min, #Dat_Chord_2) = 1188628959
Frequencies(#Note_Bb, #Chord_Min, #Dat_Chord_3) = 1191754185
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_1) = 1169588678
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_2) = 1171851744
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_3) = 1174976969
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_4) = 1177977288
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_5) = 1180240352
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_6) = 1183365577
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_7) = 1186365896
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_8) = 1188628959
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_9) = 1191754185
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_10) = 1194754503
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_11) = 1197017567
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_12) = 1200142793
Frequencies(#Note_Bb, #Chord_Min, #Dat_Harp_13) = 1203143111
;    7th
Frequencies(#Note_Bb, #Chord_7th, #Dat_Bass_1) = 1177977288
Frequencies(#Note_Bb, #Chord_7th, #Dat_Bass_2) = 1169588678
Frequencies(#Note_Bb, #Chord_7th, #Dat_Chord_1) = 1186365896
Frequencies(#Note_Bb, #Chord_7th, #Dat_Chord_2) = 1189474752
Frequencies(#Note_Bb, #Chord_7th, #Dat_Chord_3) = 1185060960
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_1) = 1169588678
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_2) = 1172697536
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_3) = 1168283744
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_4) = 1177977288
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_5) = 1181086144
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_6) = 1176672352
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_7) = 1186365896
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_8) = 1189474752
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_9) = 1185060960
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_10) = 1194754503
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_11) = 1197863360
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_12) = 1193449568
Frequencies(#Note_Bb, #Chord_7th, #Dat_Harp_13) = 1203143111
;    Dim
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Bass_1) = 1177977288
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Bass_2) = 1169588678
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Chord_1) = 1186365896
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Chord_2) = 1188628959
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Chord_3) = 1184462894
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_1) = 1169588678
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_2) = 1171851744
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_3) = 1167685676
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_4) = 1177977288
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_5) = 1180240352
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_6) = 1176074286
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_7) = 1186365896
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_8) = 1188628959
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_9) = 1184462894
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_10) = 1194754503
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_11) = 1197017567
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_12) = 1192851501
Frequencies(#Note_Bb, #Chord_Dim, #Dat_Harp_13) = 1203143111
;    Ma7
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Bass_1) = 1177977288
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Bass_2) = 1169588678
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Chord_1) = 1186365896
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Chord_2) = 1189474752
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Chord_3) = 1185694588
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_1) = 1169588678
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_2) = 1172697536
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_3) = 1168917374
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_4) = 1177977288
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_5) = 1181086144
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_6) = 1177305980
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_7) = 1186365896
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_8) = 1189474752
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_9) = 1185694588
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_10) = 1194754503
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_11) = 1197863360
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_12) = 1194083197
Frequencies(#Note_Bb, #Chord_Ma7, #Dat_Harp_13) = 1203143111
;    Mi7
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Bass_1) = 1177977288
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Bass_2) = 1169588678
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Chord_1) = 1186365896
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Chord_2) = 1188628959
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Chord_3) = 1185060960
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_1) = 1169588678
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_2) = 1171851744
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_3) = 1168283744
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_4) = 1177977288
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_5) = 1180240352
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_6) = 1176672352
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_7) = 1186365896
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_8) = 1188628959
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_9) = 1185060960
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_10) = 1194754503
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_11) = 1197017567
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_12) = 1193449568
Frequencies(#Note_Bb, #Chord_Mi7, #Dat_Harp_13) = 1203143111
;    Aug
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Bass_1) = 1177977288
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Bass_2) = 1169588678
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Chord_1) = 1186365896
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Chord_2) = 1189474752
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Chord_3) = 1183898393
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_1) = 1169588678
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_2) = 1172697536
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_3) = 1167121179
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_4) = 1177977288
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_5) = 1181086144
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_6) = 1175509785
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_7) = 1186365896
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_8) = 1189474752
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_9) = 1183898393
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_10) = 1194754503
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_11) = 1197863360
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_12) = 1192287002
Frequencies(#Note_Bb, #Chord_Aug, #Dat_Harp_13) = 1203143111

;---B
;    Maj
Frequencies(#Note_B, #Chord_Maj, #Dat_Bass_1) = 1178688512
Frequencies(#Note_B, #Chord_Maj, #Dat_Bass_2) = 1170299904
Frequencies(#Note_B, #Chord_Maj, #Dat_Chord_1) = 1187077120
Frequencies(#Note_B, #Chord_Maj, #Dat_Chord_2) = 1190370840
Frequencies(#Note_B, #Chord_Maj, #Dat_Chord_3) = 1183898393
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_1) = 1170299904
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_2) = 1173593622
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_3) = 1167121179
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_4) = 1178688512
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_5) = 1181982230
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_6) = 1175509785
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_7) = 1187077120
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_8) = 1190370840
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_9) = 1183898393
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_10) = 1195465728
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_11) = 1198759448
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_12) = 1192287002
Frequencies(#Note_B, #Chord_Maj, #Dat_Harp_13) = 1203854336
;    Min
Frequencies(#Note_B, #Chord_Min, #Dat_Bass_1) = 1178688512
Frequencies(#Note_B, #Chord_Min, #Dat_Bass_2) = 1170299904
Frequencies(#Note_B, #Chord_Min, #Dat_Chord_1) = 1187077120
Frequencies(#Note_B, #Chord_Min, #Dat_Chord_2) = 1189474752
Frequencies(#Note_B, #Chord_Min, #Dat_Chord_3) = 1183898393
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_1) = 1170299904
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_2) = 1172697536
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_3) = 1167121179
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_4) = 1178688512
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_5) = 1181086144
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_6) = 1175509785
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_7) = 1187077120
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_8) = 1189474752
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_9) = 1183898393
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_10) = 1195465728
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_11) = 1197863360
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_12) = 1192287002
Frequencies(#Note_B, #Chord_Min, #Dat_Harp_13) = 1203854336
;    7th
Frequencies(#Note_B, #Chord_7th, #Dat_Bass_1) = 1178688512
Frequencies(#Note_B, #Chord_7th, #Dat_Bass_2) = 1170299904
Frequencies(#Note_B, #Chord_7th, #Dat_Chord_1) = 1187077120
Frequencies(#Note_B, #Chord_7th, #Dat_Chord_2) = 1190370840
Frequencies(#Note_B, #Chord_7th, #Dat_Chord_3) = 1185694588
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_1) = 1170299904
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_2) = 1173593622
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_3) = 1168917374
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_4) = 1178688512
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_5) = 1181982230
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_6) = 1177305980
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_7) = 1187077120
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_8) = 1190370840
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_9) = 1185694588
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_10) = 1195465728
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_11) = 1198759448
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_12) = 1194083197
Frequencies(#Note_B, #Chord_7th, #Dat_Harp_13) = 1203854336
;    Dim
Frequencies(#Note_B, #Chord_Dim, #Dat_Bass_1) = 1178688512
Frequencies(#Note_B, #Chord_Dim, #Dat_Bass_2) = 1170299904
Frequencies(#Note_B, #Chord_Dim, #Dat_Chord_1) = 1187077120
Frequencies(#Note_B, #Chord_Dim, #Dat_Chord_2) = 1189474752
Frequencies(#Note_B, #Chord_Dim, #Dat_Chord_3) = 1185060960
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_1) = 1170299904
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_2) = 1172697536
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_3) = 1168283744
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_4) = 1178688512
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_5) = 1181086144
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_6) = 1176672352
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_7) = 1187077120
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_8) = 1189474752
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_9) = 1185060960
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_10) = 1195465728
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_11) = 1197863360
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_12) = 1193449568
Frequencies(#Note_B, #Chord_Dim, #Dat_Harp_13) = 1203854336
;    Ma7
Frequencies(#Note_B, #Chord_Ma7, #Dat_Bass_1) = 1178688512
Frequencies(#Note_B, #Chord_Ma7, #Dat_Bass_2) = 1170299904
Frequencies(#Note_B, #Chord_Ma7, #Dat_Chord_1) = 1187077120
Frequencies(#Note_B, #Chord_Ma7, #Dat_Chord_2) = 1190370840
Frequencies(#Note_B, #Chord_Ma7, #Dat_Chord_3) = 1186365896
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_1) = 1170299904
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_2) = 1173593622
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_3) = 1169588678
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_4) = 1178688512
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_5) = 1181982230
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_6) = 1177977288
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_7) = 1187077120
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_8) = 1190370840
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_9) = 1186365896
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_10) = 1195465728
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_11) = 1198759448
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_12) = 1194754503
Frequencies(#Note_B, #Chord_Ma7, #Dat_Harp_13) = 1203854336
;    Mi7
Frequencies(#Note_B, #Chord_Mi7, #Dat_Bass_1) = 1178688512
Frequencies(#Note_B, #Chord_Mi7, #Dat_Bass_2) = 1170299904
Frequencies(#Note_B, #Chord_Mi7, #Dat_Chord_1) = 1187077120
Frequencies(#Note_B, #Chord_Mi7, #Dat_Chord_2) = 1189474752
Frequencies(#Note_B, #Chord_Mi7, #Dat_Chord_3) = 1185694588
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_1) = 1170299904
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_2) = 1172697536
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_3) = 1168917374
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_4) = 1178688512
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_5) = 1181086144
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_6) = 1177305980
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_7) = 1187077120
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_8) = 1189474752
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_9) = 1185694588
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_10) = 1195465728
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_11) = 1197863360
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_12) = 1194083197
Frequencies(#Note_B, #Chord_Mi7, #Dat_Harp_13) = 1203854336
;    Aug
Frequencies(#Note_B, #Chord_Aug, #Dat_Bass_1) = 1178688512
Frequencies(#Note_B, #Chord_Aug, #Dat_Bass_2) = 1170299904
Frequencies(#Note_B, #Chord_Aug, #Dat_Chord_1) = 1187077120
Frequencies(#Note_B, #Chord_Aug, #Dat_Chord_2) = 1190370840
Frequencies(#Note_B, #Chord_Aug, #Dat_Chord_3) = 1184462894
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_1) = 1170299904
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_2) = 1173593622
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_3) = 1167685676
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_4) = 1178688512
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_5) = 1181982230
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_6) = 1176074286
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_7) = 1187077120
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_8) = 1190370840
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_9) = 1184462894
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_10) = 1195465728
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_11) = 1198759448
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_12) = 1192851501
Frequencies(#Note_B, #Chord_Aug, #Dat_Harp_13) = 1203854336

;--Pattern Data
; This is used for pattern data.

Global Dim Patterns.a(1, #Rhythm_Last, #Note_Last, 15, #Pattern_Last)

For i = #Note_First To #Note_Last
  For n = 0 To 15
    Patterns(0, #Rhythm_Disco, i, n, #Pattern_Frequency) = 0
  Next
  Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Bass) = 1
  Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Bass) = 1
  Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Bass) = 1
  Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Bass) = 1
  Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Bass) = 1
  
  Patterns(0, #Rhythm_Disco, i, 2, #Pattern_Chords) = 1
  Patterns(0, #Rhythm_Disco, i, 5, #Pattern_Chords) = 1
  Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Chords) = 1
  Patterns(0, #Rhythm_Disco, i, 11, #Pattern_Chords) = 1
  Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Chords) = 1
  
  Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Drum_BD) = 1
  Patterns(0, #Rhythm_Disco, i, 7, #Pattern_Drum_BD) = 1
  Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Drum_BD) = 1
  Patterns(0, #Rhythm_Disco, i, 13, #Pattern_Drum_BD) = 1
  Patterns(0, #Rhythm_Disco, i, 15, #Pattern_Drum_BD) = 1
  
  Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 1, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 2, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 3, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 5, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 6, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 7, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 9, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 10, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 11, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 13, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Drum_HiHat) = 1
  Patterns(0, #Rhythm_Disco, i, 15, #Pattern_Drum_HiHat) = 1
  
  Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Drum_Snare) = 1
  Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Drum_Snare) = 1
Next

For n = 0 To 15
    Patterns(0, #Rhythm_Disco, #Note_Db, n, #Pattern_Frequency) = 1
  Next
For n = 0 To 15
    Patterns(0, #Rhythm_Disco, #Note_Eb, n, #Pattern_Frequency) = 1
  Next
For n = 0 To 15
    Patterns(0, #Rhythm_Disco, #Note_C, n, #Pattern_Frequency) = 1
  Next
For n = 0 To 15
    Patterns(0, #Rhythm_Disco, #Note_F, n, #Pattern_Frequency) = 1
  Next
For n = 0 To 15
    Patterns(0, #Rhythm_Disco, #Note_D, n, #Pattern_Frequency) = 1
  Next
For n = 0 To 15
    Patterns(0, #Rhythm_Disco, #Note_E, n, #Pattern_Frequency) = 1
  Next

;-Variables
; These are used for program flow.
Define Event.l

; This is used for the keyboard.
; Each key event usually a value of 0 to 255. 65535 is just to be on the secure end, with Unicode and whatnot.
Global Dim Keys.a(65535)
Global LastKey.u = 0

; This keeps track of the current tick.
Global Tick.f = 0

; This is used to signify a rhythm tick event.
Global NewTick.l = 0

; This is used to signify a chord change.
Global NewChord.l = 0

; This is used for creating a variable keymap for the chord buttons.
Global Dim ChordKeys.u(#Chord_Last, #Note_Last)
ChordKeys(#Chord_Maj, #Note_Db) = #PB_Shortcut_1
ChordKeys(#Chord_Min, #Note_Db) = #PB_Shortcut_Q
ChordKeys(#Chord_7th, #Note_Db) = #PB_Shortcut_A

ChordKeys(#Chord_Maj, #Note_Ab) = #PB_Shortcut_2
ChordKeys(#Chord_Min, #Note_Ab) = #PB_Shortcut_W
ChordKeys(#Chord_7th, #Note_Ab) = #PB_Shortcut_S

ChordKeys(#Chord_Maj, #Note_Eb) = #PB_Shortcut_3
ChordKeys(#Chord_Min, #Note_Eb) = #PB_Shortcut_E
ChordKeys(#Chord_7th, #Note_Eb) = #PB_Shortcut_D

ChordKeys(#Chord_Maj, #Note_Bb) = #PB_Shortcut_4
ChordKeys(#Chord_Min, #Note_Bb) = #PB_Shortcut_R
ChordKeys(#Chord_7th, #Note_Bb) = #PB_Shortcut_F

ChordKeys(#Chord_Maj, #Note_F) = #PB_Shortcut_5
ChordKeys(#Chord_Min, #Note_F) = #PB_Shortcut_T
ChordKeys(#Chord_7th, #Note_F) = #PB_Shortcut_G

ChordKeys(#Chord_Maj, #Note_C) = #PB_Shortcut_6
ChordKeys(#Chord_Min, #Note_C) = #PB_Shortcut_Z
ChordKeys(#Chord_7th, #Note_C) = #PB_Shortcut_H

ChordKeys(#Chord_Maj, #Note_G) = #PB_Shortcut_7
ChordKeys(#Chord_Min, #Note_G) = #PB_Shortcut_U
ChordKeys(#Chord_7th, #Note_G) = #PB_Shortcut_J

ChordKeys(#Chord_Maj, #Note_D) = #PB_Shortcut_8
ChordKeys(#Chord_Min, #Note_D) = #PB_Shortcut_I
ChordKeys(#Chord_7th, #Note_D) = #PB_Shortcut_K

ChordKeys(#Chord_Maj, #Note_A) = #PB_Shortcut_9
ChordKeys(#Chord_Min, #Note_A) = #PB_Shortcut_O
ChordKeys(#Chord_7th, #Note_A) = #PB_Shortcut_L

ChordKeys(#Chord_Maj, #Note_E) = #PB_Shortcut_0
ChordKeys(#Chord_Min, #Note_E) = #PB_Shortcut_P
ChordKeys(#Chord_7th, #Note_E) = 192

ChordKeys(#Chord_Maj, #Note_B) = 219
ChordKeys(#Chord_Min, #Note_B) = 186
ChordKeys(#Chord_7th, #Note_B) = 222

ChordKeys(#Chord_Maj, #Note_Fc) = 221
ChordKeys(#Chord_Min, #Note_Fc) = 187
ChordKeys(#Chord_7th, #Note_Fc) = 191




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
Global Value_Rhythm_Pattern.l = #Rhythm_None
Global Value_Rhythm_AutoBassSync.l = 1
Global Value_Rhythm_Tempo.f = 0.5
Global Value_Rhythm_Volume.f = 1.0
Global Value_Rhythm_Bass.l = 0

;   Lower Section
Global Value_Memory_Enable.l
Global Value_Memory_Playback_Record.l
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

Global Dim Status_Harp.l(#Harp_13)

; This is used for rhythm definition.



;-Procedures
Procedure.l UpdateFrequencies()
  If Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None
    Select Value_Rhythm_Pattern
      Case #Rhythm_None
        SetSoundFrequency(#Snd_Bass, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Bass_1)))
      Default
        Select Patterns(Value_Rhythm_Alternate, Value_Rhythm_Pattern, Value_Chord_Note, Int(Tick), #Pattern_Frequency)
          Case 0
            SetSoundFrequency(#Snd_Bass, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Bass_1)))
          Case 1
            SetSoundFrequency(#Snd_Bass, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Bass_2)))
        EndSelect
    EndSelect
    SetSoundFrequency(#Snd_Chord_1, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Chord_1)))
    SetSoundFrequency(#Snd_Chord_2, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Chord_2)))
    SetSoundFrequency(#Snd_Chord_3, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Chord_3)))
    
    SetSoundFrequency(#Snd_Harp_1_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_1)))
    SetSoundFrequency(#Snd_Harp_1_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_1)))
    SetSoundPosition(#Snd_Harp_1_Standard, GetSoundPosition(#Snd_Harp_1_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_2_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_2)))
    SetSoundFrequency(#Snd_Harp_2_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_2)))
    SetSoundPosition(#Snd_Harp_2_Standard, GetSoundPosition(#Snd_Harp_2_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_3_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_3)))
    SetSoundFrequency(#Snd_Harp_3_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_3)))
    SetSoundPosition(#Snd_Harp_3_Standard, GetSoundPosition(#Snd_Harp_3_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_4_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_4)))
    SetSoundFrequency(#Snd_Harp_4_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_4)))
    SetSoundPosition(#Snd_Harp_4_Standard, GetSoundPosition(#Snd_Harp_4_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_5_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_5)))
    SetSoundFrequency(#Snd_Harp_5_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_5)))
    SetSoundPosition(#Snd_Harp_5_Standard, GetSoundPosition(#Snd_Harp_5_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_6_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_6)))
    SetSoundFrequency(#Snd_Harp_6_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_6)))
    SetSoundPosition(#Snd_Harp_6_Standard, GetSoundPosition(#Snd_Harp_6_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_7_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_7)))
    SetSoundFrequency(#Snd_Harp_7_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_7)))
    SetSoundPosition(#Snd_Harp_7_Standard, GetSoundPosition(#Snd_Harp_7_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_8_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_8)))
    SetSoundFrequency(#Snd_Harp_8_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_8)))
    SetSoundPosition(#Snd_Harp_8_Standard, GetSoundPosition(#Snd_Harp_8_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_9_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_9)))
    SetSoundFrequency(#Snd_Harp_9_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_9)))
    SetSoundPosition(#Snd_Harp_9_Standard, GetSoundPosition(#Snd_Harp_9_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_10_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_10)))
    SetSoundFrequency(#Snd_Harp_10_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_10)))
    SetSoundPosition(#Snd_Harp_10_Standard, GetSoundPosition(#Snd_Harp_10_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_11_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_11)))
    SetSoundFrequency(#Snd_Harp_11_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_11)))
    SetSoundPosition(#Snd_Harp_11_Standard, GetSoundPosition(#Snd_Harp_11_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_12_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_12)))
    SetSoundFrequency(#Snd_Harp_12_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_12)))
    SetSoundPosition(#Snd_Harp_12_Standard, GetSoundPosition(#Snd_Harp_12_Vibrato)+7)
    SetSoundFrequency(#Snd_Harp_13_Vibrato, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_13)))
    SetSoundFrequency(#Snd_Harp_13_Standard, PeekF(@Frequencies(Value_Chord_Note, Value_Chord_Chord, #Dat_Harp_13)))
    SetSoundPosition(#Snd_Harp_13_Standard, GetSoundPosition(#Snd_Harp_13_Vibrato)+7)
  EndIf
EndProcedure
Procedure UpdateVolume()
  Static Dim VolumeStatus.f(#Dat_Drum_Snare)
  Static TimeCurrent.q
  Static TimePrevious.q
  Static TimeDelta.q
  Static FirstRun.l = 1
  Static Phase.f
  Protected a.l
  Protected i.l
  
  TimePrevious = TimeCurrent
  TimeCurrent = ElapsedMilliseconds()
  If FirstRun
    TimePrevious = TimeCurrent
    FirstRun = 0
  EndIf
  TimeDelta = TimeCurrent-TimePrevious
  Phase+828.0*(TimeDelta/1000.0)
  
  Select Value_Rhythm_Pattern
    Case #Rhythm_None
    Default
      If Int(Tick+(TimeDelta/1000.0)*(3.0+Value_Rhythm_Tempo*8.0)) > Int(Tick)
        NewTick = 1
      EndIf
      Tick+(TimeDelta/1000.0)*(3.0+Value_Rhythm_Tempo*8.0)
      If Tick >= 16.0
        Tick-16.0
      EndIf
    EndSelect
    
  If NewTick
    NewTick = 0
    Select Value_Rhythm_Pattern
      Case #Rhythm_None
        Value_Rhythm_Bass = 0
    NewChord = 1
        Status_Sound(#Dat_Bass_1) = #Curve_Trigger
        Status_Sound(#Dat_Chord_1) = #Curve_Trigger
        Status_Sound(#Dat_Chord_2) = #Curve_Trigger
        Status_Sound(#Dat_Chord_3) = #Curve_Trigger
      Default
        If Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None
        If Value_Rhythm_AutoBassSync
          If Patterns(Value_Rhythm_Alternate, Value_Rhythm_Pattern, Value_Chord_Note, Int(Tick), #Pattern_Frequency) = 1 And Value_Rhythm_Bass <> 0
            Value_Rhythm_Bass = 0
            NewChord = 1
          ElseIf Patterns(Value_Rhythm_Alternate, Value_Rhythm_Pattern, Value_Chord_Note, Int(Tick), #Pattern_Frequency) = 2 And Value_Rhythm_Bass <> 1
            Value_Rhythm_Bass = 1
            NewChord = 1
          EndIf
          
          
          If Patterns(Value_Rhythm_Alternate, Value_Rhythm_Pattern, Value_Chord_Note, Int(Tick), #Pattern_Bass) = 1
            Status_Sound(#Dat_Bass_1) = #Curve_Trigger
          Else
            Status_Sound(#Dat_Bass_1) = #Curve_Release
          EndIf
          
          If Patterns(Value_Rhythm_Alternate, Value_Rhythm_Pattern, Value_Chord_Note, Int(Tick), #Pattern_Chords) = 1
            Status_Sound(#Dat_Chord_1) = #Curve_Trigger
            Status_Sound(#Dat_Chord_2) = #Curve_Trigger
            Status_Sound(#Dat_Chord_3) = #Curve_Trigger
          Else
            Status_Sound(#Dat_Chord_1) = #Curve_Release
            Status_Sound(#Dat_Chord_2) = #Curve_Release
            Status_Sound(#Dat_Chord_3) = #Curve_Release
          EndIf
        EndIf
        If Patterns(Value_Rhythm_Alternate, Value_Rhythm_Pattern, Value_Chord_Note, Int(Tick), #Pattern_Drum_BD) = 1
          Status_Sound(#Dat_Drum_BD) = #Curve_Trigger
        EndIf
        If Patterns(Value_Rhythm_Alternate, Value_Rhythm_Pattern, Value_Chord_Note, Int(Tick), #Pattern_Drum_HiHat) = 1
          Status_Sound(#Dat_Drum_HiHat) = #Curve_Trigger
        EndIf
        If Patterns(Value_Rhythm_Alternate, Value_Rhythm_Pattern, Value_Chord_Note, Int(Tick), #Pattern_Drum_Snare) = 1
          Status_Sound(#Dat_Drum_Snare) = #Curve_Trigger
        EndIf
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
      For i = #Dat_Bass_1 To #Dat_Bass_2
        Select Status_Sound(i)
          Case #Curve_None
            VolumeStatus(i) = 0.0
          Case #Curve_Trigger
            VolumeStatus(i) = 1.0
            Select Value_Rhythm_Pattern
              Case #Rhythm_None
                Status_Sound(i) = #Curve_Attack
              Default
                If Value_Rhythm_AutoBassSync
                  Status_Sound(i) = #Curve_Release
                Else
                  Status_Sound(i) = #Curve_Attack
                EndIf
            EndSelect
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
            Select Value_Rhythm_Pattern
              Case #Rhythm_None
                Status_Sound(i) = #Curve_Attack
              Default
                If Value_Rhythm_AutoBassSync
                  Status_Sound(i) = #Curve_Release
                Else
                  Status_Sound(i) = #Curve_Attack
                EndIf
            EndSelect
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
            VolumeStatus(i)-1.0*(TimeDelta/222.0)
            If VolumeStatus(i) < 0.0
              VolumeStatus(i) = 0.0
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
            EndIf
        EndSelect
      Next
      
      If Status_Sound(#Dat_Drum_BD) = #Curve_Trigger
        Status_Sound(#Dat_Drum_BD) = #Curve_Release
        VolumeStatus(#Dat_Drum_BD) = 1.0
        PlaySound(#Snd_Drum_BD, 0, Bool(Status_Sound(#Dat_Drum_BD) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_BD))
      EndIf  
      If Status_Sound(#Dat_Drum_HiHat) = #Curve_Trigger
        Status_Sound(#Dat_Drum_HiHat) = #Curve_Release
        VolumeStatus(#Dat_Drum_HiHat) = 1.0
        PlaySound(#Snd_Drum_HiHat, 0, Bool(Status_Sound(#Dat_Drum_HiHat) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_HiHat)) 
      EndIf  
      If Status_Sound(#Dat_Drum_Snare) = #Curve_Trigger
        Status_Sound(#Dat_Drum_Snare) = #Curve_Release
        VolumeStatus(#Dat_Drum_Snare) = 1.0
        PlaySound(#Snd_Drum_Snare, 0, Bool(Status_Sound(#Dat_Drum_Snare) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_Snare)) 
      EndIf
      
  EndSelect
  
  SoundVolume(#Snd_Bass, Bool(Status_Sound(#Dat_Bass_1) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Bass_1))
  SoundVolume(#Snd_Chord_1  , Bool(Status_Sound(#Dat_Chord_1) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_1) * 0.80)
  SoundVolume(#Snd_Chord_2  , Bool(Status_Sound(#Dat_Chord_2) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_2) * 0.80)
  SoundVolume(#Snd_Chord_3  , Bool(Status_Sound(#Dat_Chord_3) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_3) * 0.80)
  
  SoundVolume(#Snd_Harp_1_Vibrato   , Bool(Status_Sound(#Dat_Harp_1) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 1.00 * VolumeStatus(#Dat_Harp_1) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_1_Standard  , Bool(Status_Sound(#Dat_Harp_1) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 1.00 * VolumeStatus(#Dat_Harp_1))
  SoundVolume(#Snd_Harp_2_Vibrato   , Bool(Status_Sound(#Dat_Harp_2) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.98 * VolumeStatus(#Dat_Harp_2) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_2_Standard  , Bool(Status_Sound(#Dat_Harp_2) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.98 * VolumeStatus(#Dat_Harp_2))
  SoundVolume(#Snd_Harp_3_Vibrato   , Bool(Status_Sound(#Dat_Harp_3) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.96 * VolumeStatus(#Dat_Harp_3) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_3_Standard  , Bool(Status_Sound(#Dat_Harp_3) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.96 * VolumeStatus(#Dat_Harp_3))
  SoundVolume(#Snd_Harp_4_Vibrato   , Bool(Status_Sound(#Dat_Harp_4) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.94 * VolumeStatus(#Dat_Harp_4) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_4_Standard  , Bool(Status_Sound(#Dat_Harp_4) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.94 * VolumeStatus(#Dat_Harp_4))
  SoundVolume(#Snd_Harp_5_Vibrato   , Bool(Status_Sound(#Dat_Harp_5) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.92 * VolumeStatus(#Dat_Harp_5) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_5_Standard  , Bool(Status_Sound(#Dat_Harp_5) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.92 * VolumeStatus(#Dat_Harp_5))
  SoundVolume(#Snd_Harp_6_Vibrato   , Bool(Status_Sound(#Dat_Harp_6) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.90 * VolumeStatus(#Dat_Harp_6) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_6_Standard  , Bool(Status_Sound(#Dat_Harp_6) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.90 * VolumeStatus(#Dat_Harp_6))
  SoundVolume(#Snd_Harp_7_Vibrato   , Bool(Status_Sound(#Dat_Harp_7) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.88 * VolumeStatus(#Dat_Harp_7) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_7_Standard  , Bool(Status_Sound(#Dat_Harp_7) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.88 * VolumeStatus(#Dat_Harp_7))
  SoundVolume(#Snd_Harp_8_Vibrato   , Bool(Status_Sound(#Dat_Harp_8) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.86 * VolumeStatus(#Dat_Harp_8) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_8_Standard  , Bool(Status_Sound(#Dat_Harp_8) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.86 * VolumeStatus(#Dat_Harp_8))
  SoundVolume(#Snd_Harp_9_Vibrato   , Bool(Status_Sound(#Dat_Harp_9) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.84 * VolumeStatus(#Dat_Harp_9) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_9_Standard  , Bool(Status_Sound(#Dat_Harp_9) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.84 * VolumeStatus(#Dat_Harp_9))
  SoundVolume(#Snd_Harp_10_Vibrato  , Bool(Status_Sound(#Dat_Harp_10) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.82 * VolumeStatus(#Dat_Harp_10) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_10_Standard , Bool(Status_Sound(#Dat_Harp_10) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.82 * VolumeStatus(#Dat_Harp_10))
  SoundVolume(#Snd_Harp_11_Vibrato  , Bool(Status_Sound(#Dat_Harp_11) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.80 * VolumeStatus(#Dat_Harp_11) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_11_Standard , Bool(Status_Sound(#Dat_Harp_11) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.80 * VolumeStatus(#Dat_Harp_11))
  SoundVolume(#Snd_Harp_12_Vibrato  , Bool(Status_Sound(#Dat_Harp_12) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.78 * VolumeStatus(#Dat_Harp_12) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_12_Standard , Bool(Status_Sound(#Dat_Harp_12) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.78 * VolumeStatus(#Dat_Harp_12))
  SoundVolume(#Snd_Harp_13_Vibrato  , Bool(Status_Sound(#Dat_Harp_13) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.76 * VolumeStatus(#Dat_Harp_13) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_13_Standard , Bool(Status_Sound(#Dat_Harp_13) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.76 * VolumeStatus(#Dat_Harp_13))
  
  
  If SoundStatus(#Snd_Drum_BD, #PB_Sound_Playing)
    SoundVolume(#Snd_Drum_BD, Bool(Status_Sound(#Dat_Drum_BD) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_BD))
  EndIf
  If SoundStatus(#Snd_Drum_HiHat, #PB_Sound_Playing)
    SoundVolume(#Snd_Drum_HiHat, Bool(Status_Sound(#Dat_Drum_HiHat) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_HiHat))
  EndIf
  If SoundStatus(#Snd_Drum_Snare, #PB_Sound_Playing)
    SoundVolume(#Snd_Drum_Snare, Bool(Status_Sound(#Dat_Drum_Snare) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Rhythm_Volume * VolumeStatus(#Dat_Drum_Snare))
  EndIf
  
  ProcedureReturn TimeDelta
EndProcedure

;-Initialization
If InitSound()
  UsePNGImageDecoder()
  ;-Get Graphics
  CatchImage(#Img_Base, ?Img_Base)
  CatchImage(#Img_Button_Black_Off, ?Img_Button_Black_Off)
  CatchImage(#Img_Button_Black_On, ?Img_Button_Black_On)
  CatchImage(#Img_Button_Blue_Off, ?Img_Button_Blue_Off)
  CatchImage(#Img_Button_Blue_On, ?Img_Button_Blue_On)
  CatchImage(#Img_Button_Dark_Off, ?Img_Button_Dark_Off)
  CatchImage(#Img_Button_Dark_On, ?Img_Button_Dark_On)
  CatchImage(#Img_Button_Red_Off, ?Img_Button_Red_Off)
  CatchImage(#Img_Button_Red_On, ?Img_Button_Red_On)
  CatchImage(#Img_Button_Light_Off, ?Img_Button_Light_Off)
  CatchImage(#Img_Button_Light_On, ?Img_Button_Light_On)
  
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
  
  CatchSound(#Snd_Harp_1_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_1_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_2_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_2_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_3_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_3_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_4_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_4_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_5_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_5_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_6_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_6_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_7_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_7_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_8_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_8_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_9_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_9_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_10_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_10_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_11_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_11_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_12_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_12_Standard, ?Snd_Harp)
  CatchSound(#Snd_Harp_13_Vibrato, ?Snd_Harp)
  CatchSound(#Snd_Harp_13_Standard, ?Snd_Harp)
  
  CatchSound(#Snd_Drum_BD, ?Snd_Drum_BD)
  CatchSound(#Snd_Drum_HiHat, ?Snd_Drum_HiHat)
  CatchSound(#Snd_Drum_Snare, ?Snd_Drum_Snare)
  
  
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
  
  If OpenWindow(#Win_Main, #PB_Ignore, #PB_Ignore, 800, 600, "Chordian", #PB_Window_SystemMenu)
    If CanvasGadget(#Gad_Canvas, 0, 0, WindowWidth(#Win_Main), WindowHeight(#Win_Main), #PB_Canvas_Keyboard)
      SetActiveGadget(#Gad_Canvas)
      Repeat
        Event = WindowEvent()
        Select Event
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
              PostEvent(#Event_HandleKeys)
              PostEvent(#PB_Event_Repaint)
            EndIf
            Keys(EventData()) = 1
            LastKey = EventData()
            
          Case #Event_GeneralKeyUp
            ;--GeneralKeyUp
            Keys(EventData()) = 0
            PostEvent(#PB_Event_Repaint)
            
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
              If MousePositionXCurrent >= 689 And MousePositionXCurrent <= 777
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
              Value_Master_Volume+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
              If Value_Master_Volume > 1.0
                Value_Master_Volume = 1.0
              ElseIf Value_Master_Volume < 0.0
                Value_Master_Volume = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Level_Knob_Volume_Harp_1
              Value_Level_Volume_Harp_1+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
              If Value_Level_Volume_Harp_1 > 1.0
                Value_Level_Volume_Harp_1 = 1.0
              ElseIf Value_Level_Volume_Harp_1 < 0.0
                Value_Level_Volume_Harp_1 = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            If Trigger_Level_Knob_Volume_Harp_2
              Value_Level_Volume_Harp_2+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
              If Value_Level_Volume_Harp_2 > 1.0
                Value_Level_Volume_Harp_2 = 1.0
              ElseIf Value_Level_Volume_Harp_2 < 0.0
                Value_Level_Volume_Harp_2 = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Level_Knob_Sustain
              Value_Level_Sustain+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
              If Value_Level_Sustain > 1.0
                Value_Level_Sustain = 1.0
              ElseIf Value_Level_Sustain < 0.0
                Value_Level_Sustain = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Level_Knob_Volume_Keyboard
              Value_Level_Volume_Keyboard+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
              If Value_Level_Volume_Keyboard > 1.0
                Value_Level_Volume_Keyboard = 1.0
              ElseIf Value_Level_Volume_Keyboard < 0.0
                Value_Level_Volume_Keyboard = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Level_Knob_Volume_Chords
              Value_Level_Volume_Chords+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
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
              Tick = 0
              NewTick = 1
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            ;rhythm
            If Trigger_Rhythm_Button_Select = 1
              Trigger_Rhythm_Button_Select = 0
              If (MousePositionXCurrent-68)%32 <= 20
                If (MousePositionXCurrent-68)/32 = Value_Rhythm_Pattern
                  Value_Rhythm_Pattern = #Rhythm_None
                  Value_Rhythm_Bass = 0
                  NewChord = 1
                  NewTick = 1
                Else
                  Value_Rhythm_Pattern = (MousePositionXCurrent-68)/32
                Tick = 0
                NewChord = 1
                NewTick = 1
                EndIf
                  UpdateVolume()
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
              Value_Rhythm_Tempo+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
              If Value_Rhythm_Tempo > 1.0
                Value_Rhythm_Tempo = 1.0
              ElseIf Value_Rhythm_Tempo < 0.0
                Value_Rhythm_Tempo = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            If Trigger_Rhythm_Knob_Volume
              Value_Rhythm_Volume+(MousePositionYPrevious-MousePositionYCurrent)/400.0-(MousePositionXPrevious-MousePositionXCurrent)/2000.0
              If Value_Rhythm_Volume > 1.0
                Value_Rhythm_Volume = 1.0
              ElseIf Value_Rhythm_Volume < 0.0
                Value_Rhythm_Volume = 0.0
              EndIf
              PostEvent(#PB_Event_Repaint)
            EndIf
            
            If Trigger_Chord_Button_Major = 1
              Trigger_Chord_Button_Major = 0
              If (MousePositionXCurrent-271)%31 <= 20
                If Keys(ChordKeys(#Chord_Maj, (MousePositionXCurrent-271)/31)) = 0
                  For i = #Note_First To #Note_Last
                    If i = (MousePositionXCurrent-271)/31
                      Continue
                    EndIf
                    For n = #Chord_First To #Chord_Last
                      Keys(ChordKeys(n, i)) = 0
                    Next
                    PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Chord_Maj, (MousePositionXCurrent-271)/31))
                  Next
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Chord_Maj, (MousePositionXCurrent-271)/31))
                  PostEvent(#Event_HandleKeys)
                EndIf
              EndIf
            EndIf
            
            If Trigger_Chord_Button_Minor = 1
              Trigger_Chord_Button_Minor = 0
              If (MousePositionXCurrent-286)%31 <= 20
                If Keys(ChordKeys(#Chord_Min, (MousePositionXCurrent-286)/31)) = 0
                  For i = #Note_First To #Note_Last
                    If i = (MousePositionXCurrent-286)/31
                      Continue
                    EndIf
                    For n = #Chord_First To #Chord_Last
                      Keys(ChordKeys(n, i)) = 0
                    Next
                    PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Chord_Min, (MousePositionXCurrent-286)/31))
                  Next
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Chord_Min, (MousePositionXCurrent-286)/31))
                  PostEvent(#Event_HandleKeys)
                EndIf
              EndIf
            EndIf
            
            If Trigger_Chord_Button_7th = 1
              Trigger_Chord_Button_7th = 0
              If (MousePositionXCurrent-301)%31 <= 20
                If Keys(ChordKeys(#Chord_7th, (MousePositionXCurrent-301)/31)) = 0
                  For i = #Note_First To #Note_Last
                    If i = (MousePositionXCurrent-301)/31
                      Continue
                    EndIf
                    For n = #Chord_First To #Chord_Last
                      Keys(ChordKeys(n, i)) = 0
                    Next
                    PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Chord_7th, (MousePositionXCurrent-301)/31))
                  Next
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Chord_7th, (MousePositionXCurrent-301)/31))
                  PostEvent(#Event_HandleKeys)
                EndIf
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
                Value_Master_Power = 0
                UpdateVolume()
                Value_Master_Power = 1
                
                PostEvent(#PB_Event_Repaint)
              Else
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
                    EndIf
                  Case 125 To 148
                    If Status_Harp(#Harp_11) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_11) = 1
                      Status_Sound(#Dat_Harp_11) = #Curve_Trigger
                    EndIf
                  Case 149 To 172
                    If Status_Harp(#Harp_10) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_10) = 1
                      Status_Sound(#Dat_Harp_10) = #Curve_Trigger
                    EndIf
                  Case 173 To 196
                    If Status_Harp(#Harp_9) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_9) = 1
                      Status_Sound(#Dat_Harp_9) = #Curve_Trigger
                    EndIf
                  Case 197 To 220
                    If Status_Harp(#Harp_8) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_8) = 1
                      Status_Sound(#Dat_Harp_8) = #Curve_Trigger
                    EndIf
                  Case 221 To 244
                    If Status_Harp(#Harp_7) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_7) = 1
                      Status_Sound(#Dat_Harp_7) = #Curve_Trigger
                    EndIf
                  Case 245 To 268
                    If Status_Harp(#Harp_6) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_6) = 1
                      Status_Sound(#Dat_Harp_6) = #Curve_Trigger
                    EndIf
                  Case 269 To 292
                    If Status_Harp(#Harp_5) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_5) = 1
                      Status_Sound(#Dat_Harp_5) = #Curve_Trigger
                    EndIf
                  Case 293 To 316
                    If Status_Harp(#Harp_4) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_4) = 1
                      Status_Sound(#Dat_Harp_4) = #Curve_Trigger
                    EndIf
                  Case 317 To 340
                    If Status_Harp(#Harp_3) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_3) = 1
                      Status_Sound(#Dat_Harp_3) = #Curve_Trigger
                    EndIf
                  Case 341 To 364
                    If Status_Harp(#Harp_2) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_2) = 1
                      Status_Sound(#Dat_Harp_2) = #Curve_Trigger
                    EndIf
                  Case 365 To 388
                    If Status_Harp(#Harp_1) = 0
                      For i = 0 To #Harp_13
                        Status_Harp(i) = 0
                      Next
                      Status_Harp(#Harp_1) = 1
                      Status_Sound(#Dat_Harp_1) = #Curve_Trigger
                    EndIf
                EndSelect
              EndIf
            EndIf
            
          Case #Event_HandleKeys
            ;--HandleKeys
            If Value_Master_Power
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
              EndSelect
              If Value_Chord_Note <> #Note_None
                If Keys(ChordKeys(#Chord_Maj, Value_Chord_Note)) And Keys(ChordKeys(#Chord_Min, Value_Chord_Note)) And Keys(ChordKeys(#Chord_7th, Value_Chord_Note))
                  Value_Chord_Chord = #Chord_Aug
                  NewChord = 1
                  If Value_Rhythm_Pattern = #Rhythm_None
                    NewTick = 1
                  EndIf
                ElseIf Keys(ChordKeys(#Chord_Maj, Value_Chord_Note)) And Keys(ChordKeys(#Chord_Min, Value_Chord_Note))
                  Value_Chord_Chord = #Chord_Dim
                  NewChord = 1
                  If Value_Rhythm_Pattern = #Rhythm_None
                    NewTick = 1
                  EndIf
                ElseIf Keys(ChordKeys(#Chord_Maj, Value_Chord_Note)) And Keys(ChordKeys(#Chord_7th, Value_Chord_Note))
                  Value_Chord_Chord = #Chord_Ma7
                  NewChord = 1
                  If Value_Rhythm_Pattern = #Rhythm_None
                    NewTick = 1
                  EndIf
                ElseIf Keys(ChordKeys(#Chord_Min, Value_Chord_Note)) And Keys(ChordKeys(#Chord_7th, Value_Chord_Note))
                  Value_Chord_Chord = #Chord_Mi7
                  NewChord = 1
                  If Value_Rhythm_Pattern = #Rhythm_None
                    NewTick = 1
                  EndIf
                ElseIf Keys(ChordKeys(#Chord_Maj, Value_Chord_Note))
                  Value_Chord_Chord = #Chord_Maj
                  NewChord = 1
                  If Value_Rhythm_Pattern = #Rhythm_None
                    NewTick = 1
                  EndIf
                ElseIf Keys(ChordKeys(#Chord_Min, Value_Chord_Note))
                  Value_Chord_Chord = #Chord_Min
                  NewChord = 1
                  If Value_Rhythm_Pattern = #Rhythm_None
                    NewTick = 1
                  EndIf
                ElseIf Keys(ChordKeys(#Chord_7th, Value_Chord_Note))
                  Value_Chord_Chord = #Chord_7th
                  NewChord = 1
                  If Value_Rhythm_Pattern = #Rhythm_None
                    NewTick = 1
                  EndIf
                EndIf
              EndIf
            EndIf
            
            
          Case #PB_Event_Repaint
            ;--Repaint
            If StartDrawing(CanvasOutput(#Gad_Canvas))
              DrawImage(ImageID(#Img_Base), 0, 0)
              
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
                If Keys(ChordKeys(#Chord_Maj, i)) = 1
                  DrawAlphaImage(ImageID(#Img_Button_Light_On), 271+i*31, 240)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Light_Off), 271+i*31, 240)
                EndIf
                
                Select i
                  Case #Note_Db, #Note_Bb, #Note_D, #Note_B
                    If Keys(ChordKeys(#Chord_Min, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Light_On), 286+i*31, 283)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Light_Off), 286+i*31, 283)
                    EndIf
                  Default
                    If Keys(ChordKeys(#Chord_Min, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Dark_On), 286+i*31, 283)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 286+i*31, 283)
                    EndIf
                EndSelect
                
                If Keys(ChordKeys(#Chord_7th, i)) = 1
                  DrawAlphaImage(ImageID(#Img_Button_Dark_On), 301+i*31, 326)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 301+i*31, 326)
                EndIf
              Next
              
              ;Harp Plate
              ;Add playing finger maybe?
              
              StopDrawing()
            EndIf
          Case #PB_Event_CloseWindow
            Break
          Default
            If Not UpdateVolume()
              Delay(1)
              EndIf
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