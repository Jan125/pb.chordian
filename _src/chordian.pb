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

;--Frequency Data
;   These are single precision (32 bit) floating point values stored as long integers (32 bit).
;   Their order is 
;    Bass Normal, Bass High,
;    Chord 1, Chord 2, Chord 3,
;    Harp 1 Oct+0, Harp 2 Oct+0, Harp 3 Oct+0,
;    Harp 1 Oct+1, Harp 2 Oct+1, Harp 3 Oct+1,
;    Harp 1 Oct+2, Harp 2 Oct+2, Harp 3 Oct+2,
;    Harp 1 Oct+3, Harp 2 Oct+3, Harp 3 Oct+3,
;    Harp 1 Oct+4

DataSection
  Dat_Frequencies:
  ;---C
  ;    Maj
  Data.l 1171053419, 1179442027, 1187830637, 1191251273, 1184462894, 1171053419, 1174474058, 1167685676, 1179442027, 1182862666, 1176074286, 1187830637, 1191251273, 1184462894, 1196219243, 1199639881, 1192851501, 1204607853
  ;    Min
  Data.l 1171053419, 1179442027, 1187830637, 1190370840, 1184462894, 1171053419, 1173593622, 1167685676, 1179442027, 1181982230, 1176074286, 1187830637, 1190370840, 1184462894, 1196219243, 1198759448, 1192851501, 1204607853
  ;    7th
  Data.l 1171053419, 1179442027, 1187830637, 1191251273, 1186365896, 1171053419, 1174474058, 1169588678, 1179442027, 1182862666, 1177977288, 1187830637, 1191251273, 1186365896, 1196219243, 1199639881, 1194754503, 1204607853
  ;    Dim
  Data.l 1171053419, 1179442027, 1187830637, 1190370840, 1185694588, 1171053419, 1173593622, 1168917374, 1179442027, 1181982230, 1177305980, 1187830637, 1190370840, 1185694588, 1196219243, 1198759448, 1194083197, 1204607853
  ;    Ma7
  Data.l 1171053419, 1179442027, 1187830637, 1191251273, 1187077120, 1171053419, 1174474058, 1170299904, 1179442027, 1182862666, 1178688512, 1187830637, 1191251273, 1187077120, 1196219243, 1199639881, 1195465728, 1204607853
  ;    Mi7
  Data.l 1171053419, 1179442027, 1187830637, 1190370840, 1186365896, 1171053419, 1173593622, 1169588678, 1179442027, 1181982230, 1177977288, 1187830637, 1190370840, 1186365896, 1196219243, 1198759448, 1194754503, 1204607853
  ;    Aug
  Data.l 1171053419, 1179442027, 1187830637, 1191251273, 1185060960, 1171053419, 1174474058, 1168283744, 1179442027, 1182862666, 1176672352, 1187830637, 1191251273, 1185060960, 1196219243, 1199639881, 1193449568, 1204607853
  
  ;---C#/Db
  ;    Maj
  Data.l 1171851744, 1180240352, 1188628959, 1191754185, 1185060960, 1171851744, 1174976969, 1168283744, 1180240352, 1183365577, 1176672352, 1188628959, 1191754185, 1185060960, 1197017567, 1200142793, 1193449568, 1205406175
  ;    Min
  Data.l 1171851744, 1180240352, 1188628959, 1191251273, 1185060960, 1171851744, 1174474058, 1168283744, 1180240352, 1182862666, 1176672352, 1188628959, 1191251273, 1185060960, 1197017567, 1199639881, 1193449568, 1205406175
  ;    7th
  Data.l 1171851744, 1180240352, 1188628959, 1191754185, 1187077120, 1171851744, 1174976969, 1170299904, 1180240352, 1183365577, 1178688512, 1188628959, 1191754185, 1187077120, 1197017567, 1200142793, 1195465728, 1205406175
  ;    Dim
  Data.l 1171851744, 1180240352, 1188628959, 1191251273, 1186365896, 1171851744, 1174474058, 1169588678, 1180240352, 1182862666, 1177977288, 1188628959, 1191251273, 1186365896, 1197017567, 1199639881, 1194754503, 1205406175
  ;    Ma7
  Data.l 1171851744, 1180240352, 1188628959, 1191754185, 1187830637, 1171851744, 1174976969, 1171053419, 1180240352, 1183365577, 1179442027, 1188628959, 1191754185, 1187830637, 1197017567, 1200142793, 1196219243, 1205406175
  ;    Mi7
  Data.l 1171851744, 1180240352, 1188628959, 1191251273, 1187077120, 1171851744, 1174474058, 1170299904, 1180240352, 1182862666, 1178688512, 1188628959, 1191251273, 1187077120, 1197017567, 1199639881, 1195465728, 1205406175
  ;    Aug
  Data.l 1171851744, 1180240352, 1188628959, 1191754185, 1185694588, 1171851744, 1174976969, 1168917374, 1180240352, 1183365577, 1177305980, 1188628959, 1191754185, 1185694588, 1197017567, 1200142793, 1194083197, 1205406175
  
  ;---D
  ;    Maj
  Data.l 1172697536, 1181086144, 1189474752, 1183898393, 1185694588, 1172697536, 1167121179, 1168917374, 1181086144, 1175509785, 1177305980, 1189474752, 1183898393, 1185694588, 1197863360, 1192287002, 1194083197, 1206251968
  ;    Min
  Data.l 1172697536, 1181086144, 1189474752, 1191754185, 1185694588, 1172697536, 1174976969, 1168917374, 1181086144, 1183365577, 1177305980, 1189474752, 1191754185, 1185694588, 1197863360, 1200142793, 1194083197, 1206251968
  ;    7th
  Data.l 1172697536, 1181086144, 1189474752, 1183898393, 1187830637, 1172697536, 1167121179, 1171053419, 1181086144, 1175509785, 1179442027, 1189474752, 1183898393, 1187830637, 1197863360, 1192287002, 1196219243, 1206251968
  ;    Dim
  Data.l 1172697536, 1181086144, 1189474752, 1191754185, 1187077120, 1172697536, 1174976969, 1170299904, 1181086144, 1183365577, 1178688512, 1189474752, 1191754185, 1187077120, 1197863360, 1200142793, 1195465728, 1206251968
  ;    Ma7
  Data.l 1172697536, 1181086144, 1189474752, 1183898393, 1188628959, 1172697536, 1167121179, 1171851744, 1181086144, 1175509785, 1180240352, 1189474752, 1183898393, 1188628959, 1197863360, 1192287002, 1197017567, 1206251968
  ;    Mi7
  Data.l 1172697536, 1181086144, 1189474752, 1191754185, 1187830637, 1172697536, 1174976969, 1171053419, 1181086144, 1183365577, 1179442027, 1189474752, 1191754185, 1187830637, 1197863360, 1200142793, 1196219243, 1206251968
  ;    Aug
  Data.l 1172697536, 1181086144, 1189474752, 1183898393, 1186365896, 1172697536, 1167121179, 1169588678, 1181086144, 1175509785, 1177977288, 1189474752, 1183898393, 1186365896, 1197863360, 1192287002, 1194754503, 1206251968
  
  ;---D#/Eb
  ;    Maj
  Data.l 1173593622, 1181982230, 1190370840, 1184462894, 1186365896, 1173593622, 1167685676, 1169588678, 1181982230, 1176074286, 1177977288, 1190370840, 1184462894, 1186365896, 1198759448, 1192851501, 1194754503, 1207148056
  ;    Min
  Data.l 1173593622, 1181982230, 1190370840, 1183898393, 1186365896, 1173593622, 1167121179, 1169588678, 1181982230, 1175509785, 1177977288, 1190370840, 1183898393, 1186365896, 1198759448, 1192287002, 1194754503, 1207148056
  ;    7th
  Data.l 1173593622, 1181982230, 1190370840, 1184462894, 1188628959, 1173593622, 1167685676, 1171851744, 1181982230, 1176074286, 1180240352, 1190370840, 1184462894, 1188628959, 1198759448, 1192851501, 1197017567, 1207148056
  ;    Dim
  Data.l 1173593622, 1181982230, 1190370840, 1183898393, 1187830637, 1173593622, 1167121179, 1171053419, 1181982230, 1175509785, 1179442027, 1190370840, 1183898393, 1187830637, 1198759448, 1192287002, 1196219243, 1207148056
  ;    Ma7
  Data.l 1173593622, 1181982230, 1190370840, 1184462894, 1189474752, 1173593622, 1167685676, 1172697536, 1181982230, 1176074286, 1181086144, 1190370840, 1184462894, 1189474752, 1198759448, 1192851501, 1197863360, 1207148056
  ;    Mi7
  Data.l 1173593622, 1181982230, 1190370840, 1183898393, 1188628959, 1173593622, 1167121179, 1171851744, 1181982230, 1175509785, 1180240352, 1190370840, 1183898393, 1188628959, 1198759448, 1192287002, 1197017567, 1207148056
  ;    Aug
  Data.l 1173593622, 1181982230, 1190370840, 1184462894, 1187077120, 1173593622, 1167685676, 1170299904, 1181982230, 1176074286, 1178688512, 1190370840, 1184462894, 1187077120, 1198759448, 1192851501, 1195465728, 1207148056
  
  ;---E
  ;    Maj
  Data.l 1174474058, 1182862666, 1191251273, 1185060960, 1187077120, 1174474058, 1168283744, 1170299904, 1182862666, 1176672352, 1178688512, 1191251273, 1185060960, 1187077120, 1199639881, 1193449568, 1195465728, 1208028489
  ;    Min
  Data.l 1174474058, 1182862666, 1191251273, 1184462894, 1187077120, 1174474058, 1167685676, 1170299904, 1182862666, 1176074286, 1178688512, 1191251273, 1184462894, 1187077120, 1199639881, 1192851501, 1195465728, 1208028489
  ;    7th
  Data.l 1174474058, 1182862666, 1191251273, 1185060960, 1189474752, 1174474058, 1168283744, 1172697536, 1182862666, 1176672352, 1181086144, 1191251273, 1185060960, 1189474752, 1199639881, 1193449568, 1197863360, 1208028489
  ;    Dim
  Data.l 1174474058, 1182862666, 1191251273, 1184462894, 1188628959, 1174474058, 1167685676, 1171851744, 1182862666, 1176074286, 1180240352, 1191251273, 1184462894, 1188628959, 1199639881, 1192851501, 1197017567, 1208028489
  ;    Ma7
  Data.l 1174474058, 1182862666, 1191251273, 1185060960, 1190370840, 1174474058, 1168283744, 1173593622, 1182862666, 1176672352, 1181982230, 1191251273, 1185060960, 1190370840, 1199639881, 1193449568, 1198759448, 1208028489
  ;    Mi7
  Data.l 1174474058, 1182862666, 1191251273, 1184462894, 1189474752, 1174474058, 1167685676, 1172697536, 1182862666, 1176074286, 1181086144, 1191251273, 1184462894, 1189474752, 1199639881, 1192851501, 1197863360, 1208028489
  ;    Aug
  Data.l 1174474058, 1182862666, 1191251273, 1185060960, 1187830637, 1174474058, 1168283744, 1171053419, 1182862666, 1176672352, 1179442027, 1191251273, 1185060960, 1187830637, 1199639881, 1193449568, 1196219243, 1208028489
  
  ;---F
  ;    Maj
  Data.l 1174976969, 1183365577, 1191754185, 1185694588, 1187830637, 1174976969, 1168917374, 1171053419, 1183365577, 1177305980, 1179442027, 1191754185, 1185694588, 1187830637, 1200142793, 1194083197, 1196219243, 1208531401
  ;    Min
  Data.l 1174976969, 1183365577, 1191754185, 1185060960, 1187830637, 1174976969, 1168283744, 1171053419, 1183365577, 1176672352, 1179442027, 1191754185, 1185060960, 1187830637, 1200142793, 1193449568, 1196219243, 1208531401
  ;    7th
  Data.l 1174976969, 1183365577, 1191754185, 1185694588, 1190370840, 1174976969, 1168917374, 1173593622, 1183365577, 1177305980, 1181982230, 1191754185, 1185694588, 1190370840, 1200142793, 1194083197, 1198759448, 1208531401
  ;    Dim
  Data.l 1174976969, 1183365577, 1191754185, 1185060960, 1189474752, 1174976969, 1168283744, 1172697536, 1183365577, 1176672352, 1181086144, 1191754185, 1185060960, 1189474752, 1200142793, 1193449568, 1197863360, 1208531401
  ;    Ma7
  Data.l 1174976969, 1183365577, 1191754185, 1185694588, 1191251273, 1174976969, 1168917374, 1174474058, 1183365577, 1177305980, 1182862666, 1191754185, 1185694588, 1191251273, 1200142793, 1194083197, 1199639881, 1208531401
  ;    Mi7
  Data.l 1174976969, 1183365577, 1191754185, 1185060960, 1190370840, 1174976969, 1168283744, 1173593622, 1183365577, 1176672352, 1181982230, 1191754185, 1185060960, 1190370840, 1200142793, 1193449568, 1198759448, 1208531401
  ;    Aug
  Data.l 1174976969, 1183365577, 1191754185, 1185694588, 1188628959, 1174976969, 1168917374, 1171851744, 1183365577, 1177305980, 1180240352, 1191754185, 1185694588, 1188628959, 1200142793, 1194083197, 1197017567, 1208531401
  
  ;---F#/Gb
  ;    Maj
  Data.l 1167121179, 1175509785, 1183898393, 1186365896, 1188628959, 1167121179, 1169588678, 1171851744, 1175509785, 1177977288, 1180240352, 1183898393, 1186365896, 1188628959, 1192287002, 1194754503, 1197017567, 1200675610
  ;    Min
  Data.l 1167121179, 1175509785, 1183898393, 1185694588, 1188628959, 1167121179, 1168917374, 1171851744, 1175509785, 1177305980, 1180240352, 1183898393, 1185694588, 1188628959, 1192287002, 1194083197, 1197017567, 1200675610
  ;    7th
  Data.l 1167121179, 1175509785, 1183898393, 1186365896, 1191251273, 1167121179, 1169588678, 1174474058, 1175509785, 1177977288, 1182862666, 1183898393, 1186365896, 1191251273, 1192287002, 1194754503, 1199639881, 1200675610
  ;    Dim
  Data.l 1167121179, 1175509785, 1183898393, 1185694588, 1190370840, 1167121179, 1168917374, 1173593622, 1175509785, 1177305980, 1181982230, 1183898393, 1185694588, 1190370840, 1192287002, 1194083197, 1198759448, 1200675610
  ;    Ma7
  Data.l 1167121179, 1175509785, 1183898393, 1186365896, 1191754185, 1167121179, 1169588678, 1174976969, 1175509785, 1177977288, 1183365577, 1183898393, 1186365896, 1191754185, 1192287002, 1194754503, 1200142793, 1200675610
  ;    Mi7
  Data.l 1167121179, 1175509785, 1183898393, 1185694588, 1191251273, 1167121179, 1168917374, 1174474058, 1175509785, 1177305980, 1182862666, 1183898393, 1185694588, 1191251273, 1192287002, 1194083197, 1199639881, 1200675610
  ;    Aug
  Data.l 1167121179, 1175509785, 1183898393, 1186365896, 1189474752, 1167121179, 1169588678, 1172697536, 1175509785, 1177977288, 1181086144, 1183898393, 1186365896, 1189474752, 1192287002, 1194754503, 1197863360, 1200675610
  
  ;---G
  ;    Maj
  Data.l 1167685676, 1176074286, 1184462894, 1187077120, 1189474752, 1167685676, 1170299904, 1172697536, 1176074286, 1178688512, 1181086144, 1184462894, 1187077120, 1189474752, 1192851501, 1195465728, 1197863360, 1201240109
  ;    Min
  Data.l 1167685676, 1176074286, 1184462894, 1186365896, 1189474752, 1167685676, 1169588678, 1172697536, 1176074286, 1177977288, 1181086144, 1184462894, 1186365896, 1189474752, 1192851501, 1194754503, 1197863360, 1201240109
  ;    7th
  Data.l 1167685676, 1176074286, 1184462894, 1187077120, 1191754185, 1167685676, 1170299904, 1174976969, 1176074286, 1178688512, 1183365577, 1184462894, 1187077120, 1191754185, 1192851501, 1195465728, 1200142793, 1201240109
  ;    Dim
  Data.l 1167685676, 1176074286, 1184462894, 1186365896, 1191251273, 1167685676, 1169588678, 1174474058, 1176074286, 1177977288, 1182862666, 1184462894, 1186365896, 1191251273, 1192851501, 1194754503, 1199639881, 1201240109
  ;    Ma7
  Data.l 1167685676, 1176074286, 1184462894, 1187077120, 1183898393, 1167685676, 1170299904, 1167121179, 1176074286, 1178688512, 1175509785, 1184462894, 1187077120, 1183898393, 1192851501, 1195465728, 1192287002, 1201240109
  ;    Mi7
  Data.l 1167685676, 1176074286, 1184462894, 1186365896, 1191754185, 1167685676, 1169588678, 1174976969, 1176074286, 1177977288, 1183365577, 1184462894, 1186365896, 1191754185, 1192851501, 1194754503, 1200142793, 1201240109
  ;    Aug
  Data.l 1167685676, 1176074286, 1184462894, 1187077120, 1190370840, 1167685676, 1170299904, 1173593622, 1176074286, 1178688512, 1181982230, 1184462894, 1187077120, 1190370840, 1192851501, 1195465728, 1198759448, 1201240109
  
  ;---G#/Ab
  ;    Maj
  Data.l 1168283744, 1176672352, 1185060960, 1187830637, 1190370840, 1168283744, 1171053419, 1173593622, 1176672352, 1179442027, 1181982230, 1185060960, 1187830637, 1190370840, 1193449568, 1196219243, 1198759448, 1201838176
  ;    Min
  Data.l 1168283744, 1176672352, 1185060960, 1187077120, 1190370840, 1168283744, 1170299904, 1173593622, 1176672352, 1178688512, 1181982230, 1185060960, 1187077120, 1190370840, 1193449568, 1195465728, 1198759448, 1201838176
  ;    7th
  Data.l 1168283744, 1176672352, 1185060960, 1187830637, 1183898393, 1168283744, 1171053419, 1167121179, 1176672352, 1179442027, 1175509785, 1185060960, 1187830637, 1183898393, 1193449568, 1196219243, 1192287002, 1201838176
  ;    Dim
  Data.l 1168283744, 1176672352, 1185060960, 1187077120, 1191754185, 1168283744, 1170299904, 1174976969, 1176672352, 1178688512, 1183365577, 1185060960, 1187077120, 1191754185, 1193449568, 1195465728, 1200142793, 1201838176
  ;    Ma7
  Data.l 1168283744, 1176672352, 1185060960, 1187830637, 1184462894, 1168283744, 1171053419, 1167685676, 1176672352, 1179442027, 1176074286, 1185060960, 1187830637, 1184462894, 1193449568, 1196219243, 1192851501, 1201838176
  ;    Mi7
  Data.l 1168283744, 1176672352, 1185060960, 1187077120, 1183898393, 1168283744, 1170299904, 1167121179, 1176672352, 1178688512, 1175509785, 1185060960, 1187077120, 1183898393, 1193449568, 1195465728, 1192287002, 1201838176
  ;    Aug
  Data.l 1168283744, 1176672352, 1185060960, 1187830637, 1191251273, 1168283744, 1171053419, 1174474058, 1176672352, 1179442027, 1182862666, 1185060960, 1187830637, 1191251273, 1193449568, 1196219243, 1199639881, 1201838176
  
  ;---A
  ;    Maj
  Data.l 1168917374, 1177305980, 1185694588, 1188628959, 1191251273, 1168917374, 1171851744, 1174474058, 1177305980, 1180240352, 1182862666, 1185694588, 1188628959, 1191251273, 1194083197, 1197017567, 1199639881, 1202471804
  ;    Min
  Data.l 1168917374, 1177305980, 1185694588, 1187830637, 1191251273, 1168917374, 1171053419, 1174474058, 1177305980, 1179442027, 1182862666, 1185694588, 1187830637, 1191251273, 1194083197, 1196219243, 1199639881, 1202471804
  ;    7th
  Data.l 1168917374, 1177305980, 1185694588, 1188628959, 1184462894, 1168917374, 1171851744, 1167685676, 1177305980, 1180240352, 1176074286, 1185694588, 1188628959, 1184462894, 1194083197, 1197017567, 1192851501, 1202471804
  ;    Dim
  Data.l 1168917374, 1177305980, 1185694588, 1187830637, 1183898393, 1168917374, 1171053419, 1167121179, 1177305980, 1179442027, 1175509785, 1185694588, 1187830637, 1183898393, 1194083197, 1196219243, 1192287002, 1202471804
  ;    Ma7
  Data.l 1168917374, 1177305980, 1185694588, 1188628959, 1185060960, 1168917374, 1171851744, 1168283744, 1177305980, 1180240352, 1176672352, 1185694588, 1188628959, 1185060960, 1194083197, 1197017567, 1193449568, 1202471804
  ;    Mi7
  Data.l 1168917374, 1177305980, 1185694588, 1187830637, 1184462894, 1168917374, 1171053419, 1167685676, 1177305980, 1179442027, 1176074286, 1185694588, 1187830637, 1184462894, 1194083197, 1196219243, 1192851501, 1202471804
  ;    Aug
  Data.l 1168917374, 1177305980, 1185694588, 1188628959, 1191754185, 1168917374, 1171851744, 1174976969, 1177305980, 1180240352, 1183365577, 1185694588, 1188628959, 1191754185, 1194083197, 1197017567, 1200142793, 1202471804
  
  ;---A#/Bb
  ;    Maj
  Data.l 1169588678, 1177977288, 1186365896, 1189474752, 1191754185, 1169588678, 1172697536, 1174976969, 1177977288, 1181086144, 1183365577, 1186365896, 1189474752, 1191754185, 1194754503, 1197863360, 1200142793, 1203143111
  ;    Min
  Data.l 1169588678, 1177977288, 1186365896, 1188628959, 1191754185, 1169588678, 1171851744, 1174976969, 1177977288, 1180240352, 1183365577, 1186365896, 1188628959, 1191754185, 1194754503, 1197017567, 1200142793, 1203143111
  ;    7th
  Data.l 1169588678, 1177977288, 1186365896, 1189474752, 1185060960, 1169588678, 1172697536, 1168283744, 1177977288, 1181086144, 1176672352, 1186365896, 1189474752, 1185060960, 1194754503, 1197863360, 1193449568, 1203143111
  ;    Dim
  Data.l 1169588678, 1177977288, 1186365896, 1188628959, 1184462894, 1169588678, 1171851744, 1167685676, 1177977288, 1180240352, 1176074286, 1186365896, 1188628959, 1184462894, 1194754503, 1197017567, 1192851501, 1203143111
  ;    Ma7
  Data.l 1169588678, 1177977288, 1186365896, 1189474752, 1185694588, 1169588678, 1172697536, 1168917374, 1177977288, 1181086144, 1177305980, 1186365896, 1189474752, 1185694588, 1194754503, 1197863360, 1194083197, 1203143111
  ;    Mi7
  Data.l 1169588678, 1177977288, 1186365896, 1188628959, 1185060960, 1169588678, 1171851744, 1168283744, 1177977288, 1180240352, 1176672352, 1186365896, 1188628959, 1185060960, 1194754503, 1197017567, 1193449568, 1203143111
  ;    Aug
  Data.l 1169588678, 1177977288, 1186365896, 1189474752, 1183898393, 1169588678, 1172697536, 1167121179, 1177977288, 1181086144, 1175509785, 1186365896, 1189474752, 1183898393, 1194754503, 1197863360, 1192287002, 1203143111
  
  ;---B
  ;    Maj
  Data.l 1170299904, 1178688512, 1187077120, 1190370840, 1183898393, 1170299904, 1173593622, 1167121179, 1178688512, 1181982230, 1175509785, 1187077120, 1190370840, 1183898393, 1195465728, 1198759448, 1192287002, 1203854336
  ;    Min
  Data.l 1170299904, 1178688512, 1187077120, 1189474752, 1183898393, 1170299904, 1172697536, 1167121179, 1178688512, 1181086144, 1175509785, 1187077120, 1189474752, 1183898393, 1195465728, 1197863360, 1192287002, 1203854336
  ;    7th
  Data.l 1170299904, 1178688512, 1187077120, 1190370840, 1185694588, 1170299904, 1173593622, 1168917374, 1178688512, 1181982230, 1177305980, 1187077120, 1190370840, 1185694588, 1195465728, 1198759448, 1194083197, 1203854336
  ;    Dim
  Data.l 1170299904, 1178688512, 1187077120, 1189474752, 1185060960, 1170299904, 1172697536, 1168283744, 1178688512, 1181086144, 1176672352, 1187077120, 1189474752, 1185060960, 1195465728, 1197863360, 1193449568, 1203854336
  ;    Ma7
  Data.l 1170299904, 1178688512, 1187077120, 1190370840, 1186365896, 1170299904, 1173593622, 1169588678, 1178688512, 1181982230, 1177977288, 1187077120, 1190370840, 1186365896, 1195465728, 1198759448, 1194754503, 1203854336
  ;    Mi7
  Data.l 1170299904, 1178688512, 1187077120, 1189474752, 1185694588, 1170299904, 1172697536, 1168917374, 1178688512, 1181086144, 1177305980, 1187077120, 1189474752, 1185694588, 1195465728, 1197863360, 1194083197, 1203854336
  ;    Aug
  Data.l 1170299904, 1178688512, 1187077120, 1190370840, 1184462894, 1170299904, 1173593622, 1167685676, 1178688512, 1181982230, 1176074286, 1187077120, 1190370840, 1184462894, 1195465728, 1198759448, 1192851501, 1203854336
EndDataSection


;-Enumerations
Enumeration -1
  #Chord_None
  #Chord_First
  #Chord_Maj = #Chord_First
  #Chord_Min
  #Chord_7th
  #Chord_Dim
  #Chord_Ma7
  #Chord_Mi7
  #Chord_Aug
  #Chord_Last = #Chord_Aug
EndEnumeration

Enumeration -1
  #Order_Chord_None
  #Order_Chord_First
  #Order_Chord_Maj = #Order_Chord_First
  #Order_Chord_Min
  #Order_Chord_7th
  #Order_Chord_Last = #Order_Chord_7th
EndEnumeration

Enumeration -1
  #Note_None
  #Note_First
  #Note_C = #Note_First
  #Note_Cc
  #Note_Db = #Note_Cc
  #Note_D
  #Note_Dc
  #Note_Eb = #Note_Dc
  #Note_E
  #Note_F
  #Note_Fc
  #Note_Gb = #Note_Fc
  #Note_G
  #Note_Gc
  #Note_Ab = #Note_Gc
  #Note_A
  #Note_Ac
  #Note_Bb = #Note_Ac
  #Note_B
  #Note_Last = #Note_B
EndEnumeration

Enumeration -1
  #Order_Note_None
  #Order_Note_First
  #Order_Note_Cc = #Order_Note_First
  #Order_Note_Db = #Order_Note_Cc
  #Order_Note_Gc
  #Order_Note_Ab = #Order_Note_Gc
  #Order_Note_Dc
  #Order_Note_Eb = #Order_Note_Dc
  #Order_Note_Ac
  #Order_Note_Bb = #Order_Note_Ac
  #Order_Note_F
  #Order_Note_C
  #Order_Note_G
  #Order_Note_D
  #Order_Note_A
  #Order_Note_E
  #Order_Note_B
  #Order_Note_Fc
  #Order_Note_Gb = #Order_Note_Fc
  #Order_Note_Last = #Order_Note_Gb
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
  #Order_Harp_None
  #Order_Harp_First
  #Order_Harp_1 = #Order_Harp_First
  #Order_Harp_2
  #Order_Harp_3
  #Order_Harp_4
  #Order_Harp_5
  #Order_Harp_6
  #Order_Harp_7
  #Order_Harp_8
  #Order_Harp_9
  #Order_Harp_10
  #Order_Harp_11
  #Order_Harp_12
  #Order_Harp_13
  #Order_Harp_Last = #Order_Harp_13
EndEnumeration

Enumeration -1
  #Order_Rhythm_None
  #Order_Rhythm_First
  #Order_Rhythm_Rock1 = #Order_Rhythm_First
  #Order_Rhythm_March = #Order_Rhythm_Rock1
  #Order_Rhythm_Rock2
  #Order_Rhythm_Tango = #Order_Rhythm_Rock2
  #Order_Rhythm_Disco
  #Order_Rhythm_Blues = #Order_Rhythm_Disco
  #Order_Rhythm_Latin
  #Order_Rhythm_Swing = #Order_Rhythm_Latin
  #Order_Rhythm_Country
  #Order_Rhythm_Waltz = #Order_Rhythm_Country
  #Order_Rhythm_Last = #Order_Rhythm_Waltz
EndEnumeration

Enumeration 1
  #Snd_Bass_Norm
  #Snd_Bass_High
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
  #Dat_Bass_Norm = #Dat_First
  #Dat_Bass_High
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

;-Variables
; These are used for program flow.
Define Event.l
Define i.l
Define n.l

; This is used for the keyboard.
; Each key event usually a value of 0 to 255. 65535 is just to be on the secure end, with Unicode and whatnot.
Global Dim Keys.a(65535)
Global LastKey.u = 0

; This is used for creating a variable keymap for the chord buttons.
Global Dim ChordKeys.u(#Order_Chord_Last, #Order_Note_Last)
ChordKeys(#Order_Chord_Maj, #Order_Note_Db) = #PB_Shortcut_1
ChordKeys(#Order_Chord_Min, #Order_Note_Db) = #PB_Shortcut_Q
ChordKeys(#Order_Chord_7th, #Order_Note_Db) = #PB_Shortcut_A

ChordKeys(#Order_Chord_Maj, #Order_Note_Ab) = #PB_Shortcut_2
ChordKeys(#Order_Chord_Min, #Order_Note_Ab) = #PB_Shortcut_W
ChordKeys(#Order_Chord_7th, #Order_Note_Ab) = #PB_Shortcut_S

ChordKeys(#Order_Chord_Maj, #Order_Note_Eb) = #PB_Shortcut_3
ChordKeys(#Order_Chord_Min, #Order_Note_Eb) = #PB_Shortcut_E
ChordKeys(#Order_Chord_7th, #Order_Note_Eb) = #PB_Shortcut_D

ChordKeys(#Order_Chord_Maj, #Order_Note_Bb) = #PB_Shortcut_4
ChordKeys(#Order_Chord_Min, #Order_Note_Bb) = #PB_Shortcut_R
ChordKeys(#Order_Chord_7th, #Order_Note_Bb) = #PB_Shortcut_F

ChordKeys(#Order_Chord_Maj, #Order_Note_F) = #PB_Shortcut_5
ChordKeys(#Order_Chord_Min, #Order_Note_F) = #PB_Shortcut_T
ChordKeys(#Order_Chord_7th, #Order_Note_F) = #PB_Shortcut_G

ChordKeys(#Order_Chord_Maj, #Order_Note_C) = #PB_Shortcut_6
ChordKeys(#Order_Chord_Min, #Order_Note_C) = #PB_Shortcut_Z
ChordKeys(#Order_Chord_7th, #Order_Note_C) = #PB_Shortcut_H

ChordKeys(#Order_Chord_Maj, #Order_Note_G) = #PB_Shortcut_7
ChordKeys(#Order_Chord_Min, #Order_Note_G) = #PB_Shortcut_U
ChordKeys(#Order_Chord_7th, #Order_Note_G) = #PB_Shortcut_J

ChordKeys(#Order_Chord_Maj, #Order_Note_D) = #PB_Shortcut_8
ChordKeys(#Order_Chord_Min, #Order_Note_D) = #PB_Shortcut_I
ChordKeys(#Order_Chord_7th, #Order_Note_D) = #PB_Shortcut_K

ChordKeys(#Order_Chord_Maj, #Order_Note_A) = #PB_Shortcut_9
ChordKeys(#Order_Chord_Min, #Order_Note_A) = #PB_Shortcut_O
ChordKeys(#Order_Chord_7th, #Order_Note_A) = #PB_Shortcut_L

ChordKeys(#Order_Chord_Maj, #Order_Note_E) = #PB_Shortcut_0
ChordKeys(#Order_Chord_Min, #Order_Note_E) = #PB_Shortcut_P
ChordKeys(#Order_Chord_7th, #Order_Note_E) = 192

ChordKeys(#Order_Chord_Maj, #Order_Note_B) = 219
ChordKeys(#Order_Chord_Min, #Order_Note_B) = 186
ChordKeys(#Order_Chord_7th, #Order_Note_B) = 222

ChordKeys(#Order_Chord_Maj, #Order_Note_Fc) = 221
ChordKeys(#Order_Chord_Min, #Order_Note_Fc) = 187
ChordKeys(#Order_Chord_7th, #Order_Note_Fc) = 191

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
Global Value_Rhythm_Pattern.l = #Order_Rhythm_None
Global Value_Rhythm_AutoBassSync.l
Global Value_Rhythm_Knob_Tempo.f = 1.0
Global Value_Rhythm_Knob_Volume.f = 1.0

;   Lower Section
Global Value_Memory_Enable.l
Global Value_Memory_Playback_Record.l
Global Value_Memory_Repeat_Delete.l
Global Value_Memory_Playback_Enter.l

;   Chord Button Section
Global Value_Chord_Chord.l = #Order_Chord_None
Global Value_Chord_Note.l = #Order_Note_None

;   Harp Section
Global Dim Value_Harp_Plate.l(#Order_Harp_Last)

; These are used for Harp/Trigger control.
Global Dim Status_Sound.l(#Dat_Last)
For i = #Dat_First To #Dat_Last
  Status_Sound(i) = #Curve_None
Next

Global Dim Status_Harp.l(#Harp_13)




;-Procedures
Procedure.l UpdateFrequencies(Chord, Note)
  Static Dim Frequency.f(#Dat_Harp_13)
  Static PreviousChord = -1
  Static PreviousNote = -1
  If Chord <> PreviousChord Or Note <> PreviousNote
    If Chord <> -1 And Note <> -1
      CopyMemory(?Dat_Frequencies+SizeOf(Float)*((#Dat_Harp_13+1)*Chord+(#Dat_Harp_13+1)*(#Chord_Aug+1)*Note), @Frequency(), SizeOf(Float)*(#Dat_Harp_13+1))
      SetSoundFrequency(#Snd_Bass_Norm, Frequency(#Dat_Bass_Norm))
      SetSoundFrequency(#Snd_Bass_High, Frequency(#Dat_Bass_High))
      SetSoundFrequency(#Snd_Chord_1, Frequency(#Dat_Chord_1))
      SetSoundFrequency(#Snd_Chord_2, Frequency(#Dat_Chord_2))
      SetSoundFrequency(#Snd_Chord_3, Frequency(#Dat_Chord_3))
      
      SetSoundFrequency(#Snd_Harp_1_Vibrato, Frequency(#Dat_Harp_1))
      SetSoundFrequency(#Snd_Harp_1_Standard, Frequency(#Dat_Harp_1))
      SetSoundPosition(#Snd_Harp_1_Standard, GetSoundPosition(#Snd_Harp_1_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_2_Vibrato, Frequency(#Dat_Harp_2))
      SetSoundFrequency(#Snd_Harp_2_Standard, Frequency(#Dat_Harp_2))
      SetSoundPosition(#Snd_Harp_2_Standard, GetSoundPosition(#Snd_Harp_2_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_3_Vibrato, Frequency(#Dat_Harp_3))
      SetSoundFrequency(#Snd_Harp_3_Standard, Frequency(#Dat_Harp_3))
      SetSoundPosition(#Snd_Harp_3_Standard, GetSoundPosition(#Snd_Harp_3_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_4_Vibrato, Frequency(#Dat_Harp_4))
      SetSoundFrequency(#Snd_Harp_4_Standard, Frequency(#Dat_Harp_4))
      SetSoundPosition(#Snd_Harp_4_Standard, GetSoundPosition(#Snd_Harp_4_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_5_Vibrato, Frequency(#Dat_Harp_5))
      SetSoundFrequency(#Snd_Harp_5_Standard, Frequency(#Dat_Harp_5))
      SetSoundPosition(#Snd_Harp_5_Standard, GetSoundPosition(#Snd_Harp_5_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_6_Vibrato, Frequency(#Dat_Harp_6))
      SetSoundFrequency(#Snd_Harp_6_Standard, Frequency(#Dat_Harp_6))
      SetSoundPosition(#Snd_Harp_6_Standard, GetSoundPosition(#Snd_Harp_6_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_7_Vibrato, Frequency(#Dat_Harp_7))
      SetSoundFrequency(#Snd_Harp_7_Standard, Frequency(#Dat_Harp_7))
      SetSoundPosition(#Snd_Harp_7_Standard, GetSoundPosition(#Snd_Harp_7_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_8_Vibrato, Frequency(#Dat_Harp_8))
      SetSoundFrequency(#Snd_Harp_8_Standard, Frequency(#Dat_Harp_8))
      SetSoundPosition(#Snd_Harp_8_Standard, GetSoundPosition(#Snd_Harp_8_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_9_Vibrato, Frequency(#Dat_Harp_9))
      SetSoundFrequency(#Snd_Harp_9_Standard, Frequency(#Dat_Harp_9))
      SetSoundPosition(#Snd_Harp_9_Standard, GetSoundPosition(#Snd_Harp_9_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_10_Vibrato, Frequency(#Dat_Harp_10))
      SetSoundFrequency(#Snd_Harp_10_Standard, Frequency(#Dat_Harp_10))
      SetSoundPosition(#Snd_Harp_10_Standard, GetSoundPosition(#Snd_Harp_10_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_11_Vibrato, Frequency(#Dat_Harp_11))
      SetSoundFrequency(#Snd_Harp_11_Standard, Frequency(#Dat_Harp_11))
      SetSoundPosition(#Snd_Harp_11_Standard, GetSoundPosition(#Snd_Harp_11_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_12_Vibrato, Frequency(#Dat_Harp_12))
      SetSoundFrequency(#Snd_Harp_12_Standard, Frequency(#Dat_Harp_12))
      SetSoundPosition(#Snd_Harp_12_Standard, GetSoundPosition(#Snd_Harp_12_Vibrato)+7)
      SetSoundFrequency(#Snd_Harp_13_Vibrato, Frequency(#Dat_Harp_13))
      SetSoundFrequency(#Snd_Harp_13_Standard, Frequency(#Dat_Harp_13))
      SetSoundPosition(#Snd_Harp_13_Standard, GetSoundPosition(#Snd_Harp_13_Vibrato)+7)
      
    EndIf
    PreviousChord = Chord
    PreviousNote = Note
    ProcedureReturn 1
  Else
    ProcedureReturn 0
  EndIf
EndProcedure
Procedure UpdateVolume()
  Static Dim VolumeStatus.f(#Dat_Drum_Snare)
  Static TimeCurrent.q
  Static TimePrevious.q
  Static TimeDelta.q
  Static FirstRun.l = 1
  Static Phase.f
  Protected i.l
  
  TimePrevious = TimeCurrent
  TimeCurrent = ElapsedMilliseconds()
  If FirstRun
    TimePrevious = TimeCurrent
    FirstRun = 0
  EndIf
  TimeDelta = TimeCurrent-TimePrevious
  Phase+828.0*(TimeDelta/1000.0)
  Select Value_Master_Power
    Case 0
      For i = #Dat_First To #Dat_Last
        VolumeStatus(i) = 0.0
        Status_Sound(i) = #Curve_None
      Next
    Case 1
      For i = #Dat_Bass_Norm To #Dat_Bass_High
      Select Status_Sound(#Dat_Bass_Norm)
        Case #Curve_None
          VolumeStatus(#Dat_Bass_Norm) = 0.0
        Case #Curve_Trigger
          VolumeStatus(#Dat_Bass_Norm) = 1.0
          Status_Sound(#Dat_Bass_Norm) = #Curve_Attack
          i-1
        Case #Curve_Attack
          Status_Sound(#Dat_Bass_Norm) = #Curve_Decay
          i-1
        Case #Curve_Decay
          Status_Sound(#Dat_Bass_Norm) = #Curve_Sustain
          i-1
        Case #Curve_Sustain
          Status_Sound(#Dat_Bass_Norm) = #Curve_Release
          i-1
        Case #Curve_Release
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
          Status_Sound(i) = #Curve_Release
          i-1
        Case #Curve_Release
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
    
      
  EndSelect
  
  SoundVolume(#Snd_Bass_Norm, Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Bass_Norm))
  SoundVolume(#Snd_Bass_High, Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Bass_High))
  SoundVolume(#Snd_Chord_1  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_1))
  SoundVolume(#Snd_Chord_2  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_2))
  SoundVolume(#Snd_Chord_3  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Chords * VolumeStatus(#Dat_Chord_3))
  
  SoundVolume(#Snd_Harp_1_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 1.00 * VolumeStatus(#Dat_Harp_1) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_1_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 1.00 * VolumeStatus(#Dat_Harp_1))
  SoundVolume(#Snd_Harp_2_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.98 * VolumeStatus(#Dat_Harp_2) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_2_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.98 * VolumeStatus(#Dat_Harp_2))
  SoundVolume(#Snd_Harp_3_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.96 * VolumeStatus(#Dat_Harp_3) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_3_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.96 * VolumeStatus(#Dat_Harp_3))
  SoundVolume(#Snd_Harp_4_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.94 * VolumeStatus(#Dat_Harp_4) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_4_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.94 * VolumeStatus(#Dat_Harp_4))
  SoundVolume(#Snd_Harp_5_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.92 * VolumeStatus(#Dat_Harp_5) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_5_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.92 * VolumeStatus(#Dat_Harp_5))
  SoundVolume(#Snd_Harp_6_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.90 * VolumeStatus(#Dat_Harp_6) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_6_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.90 * VolumeStatus(#Dat_Harp_6))
  SoundVolume(#Snd_Harp_7_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.88 * VolumeStatus(#Dat_Harp_7) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_7_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.88 * VolumeStatus(#Dat_Harp_7))
  SoundVolume(#Snd_Harp_8_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.86 * VolumeStatus(#Dat_Harp_8) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_8_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.86 * VolumeStatus(#Dat_Harp_8))
  SoundVolume(#Snd_Harp_9_Vibrato   , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.84 * VolumeStatus(#Dat_Harp_9) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_9_Standard  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.84 * VolumeStatus(#Dat_Harp_9))
  SoundVolume(#Snd_Harp_10_Vibrato  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.82 * VolumeStatus(#Dat_Harp_10) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_10_Standard , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.82 * VolumeStatus(#Dat_Harp_10))
  SoundVolume(#Snd_Harp_11_Vibrato  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.80 * VolumeStatus(#Dat_Harp_11) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_11_Standard , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.80 * VolumeStatus(#Dat_Harp_11))
  SoundVolume(#Snd_Harp_12_Vibrato  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.78 * VolumeStatus(#Dat_Harp_12) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_12_Standard , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.78 * VolumeStatus(#Dat_Harp_12))
  SoundVolume(#Snd_Harp_13_Vibrato  , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_1 * 0.76 * VolumeStatus(#Dat_Harp_13) * (0.75-0.25*Sin(Radian(Phase))))
  SoundVolume(#Snd_Harp_13_Standard , Bool(Status_Sound(#Dat_Bass_Norm) <> #Curve_None) * Bool(Value_Chord_Chord <> #Chord_None And Value_Chord_Note <> #Note_None) * 100.0 * Value_Master_Volume * Value_Level_Volume_Harp_2 * 0.76 * VolumeStatus(#Dat_Harp_13))

EndProcedure


Procedure.l OrderToNote(n.l)
  Select n
    Case #Order_Note_Db
      ProcedureReturn #Note_Db
    Case #Order_Note_Ab
      ProcedureReturn #Note_Ab
    Case #Order_Note_Eb
      ProcedureReturn #Note_Eb
    Case #Order_Note_Bb
      ProcedureReturn #Note_Bb
    Case #Order_Note_F
      ProcedureReturn #Note_F
    Case #Order_Note_C
      ProcedureReturn #Note_C
    Case #Order_Note_G
      ProcedureReturn #Note_G
    Case #Order_Note_D
      ProcedureReturn #Note_D
    Case #Order_Note_A
      ProcedureReturn #Note_A
    Case #Order_Note_E
      ProcedureReturn #Note_E
    Case #Order_Note_B
      ProcedureReturn #Note_B
    Case #Order_Note_Fc
      ProcedureReturn #Note_Fc
    Default
      ProcedureReturn #Note_None
  EndSelect
EndProcedure

Procedure.l NoteToOrder(n.l)
  Select n
    Case #Note_Db
      ProcedureReturn #Order_Note_Db
    Case #Note_Ab
      ProcedureReturn #Order_Note_Ab
    Case #Note_Eb
      ProcedureReturn #Order_Note_Eb
    Case #Note_Bb
      ProcedureReturn #Order_Note_Bb
    Case #Note_F
      ProcedureReturn #Order_Note_F
    Case #Note_C
      ProcedureReturn #Order_Note_C
    Case #Note_G
      ProcedureReturn #Order_Note_G
    Case #Note_D
      ProcedureReturn #Order_Note_D
    Case #Note_A
      ProcedureReturn #Order_Note_A
    Case #Note_E
      ProcedureReturn #Order_Note_E
    Case #Note_B
      ProcedureReturn #Order_Note_B
    Case #Note_Fc
      ProcedureReturn #Order_Note_Fc
    Default
      ProcedureReturn #Order_Note_None
  EndSelect
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
  CatchSound(#Snd_Bass_Norm, ?Snd_Bass)
  CatchSound(#Snd_Bass_High, ?Snd_Bass)
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
  PlaySound(#Snd_Bass_Norm, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Bass_High, #PB_Sound_Loop, 0)
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
              Value_Master_Power = Bool(Not Value_Master_Power)
              Trigger_Master_Button_Power = 0
              Value_Chord_Chord = #Chord_None
              Value_Chord_Note = #Note_None
              For i = #Order_Note_First To #Order_Note_Last
                  For n = #Order_Chord_First To #Order_Chord_Last
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
            
            
            If Trigger_Chord_Button_Major = 1
              Trigger_Chord_Button_Major = 0
              If (MousePositionXCurrent-271)%31 <= 20
                If Keys(ChordKeys(#Order_Chord_Maj, (MousePositionXCurrent-271)/31)) = 0
                  For i = #Order_Note_First To #Order_Note_Last
                    If i = (MousePositionXCurrent-271)/31
                      Continue
                    EndIf
                    For n = #Order_Chord_First To #Order_Chord_Last
                      Keys(ChordKeys(n, i)) = 0
                    Next
                    
                    PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Order_Chord_Maj, (MousePositionXCurrent-271)/31))
                  Next
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Order_Chord_Maj, (MousePositionXCurrent-271)/31))
                EndIf
              EndIf
            EndIf
            
            If Trigger_Chord_Button_Minor = 1
              Trigger_Chord_Button_Minor = 0
              If (MousePositionXCurrent-286)%31 <= 20
                If Keys(ChordKeys(#Order_Chord_Min, (MousePositionXCurrent-286)/31)) = 0
                  For i = #Order_Note_First To #Order_Note_Last
                    If i = (MousePositionXCurrent-286)/31
                      Continue
                    EndIf
                    For n = #Order_Chord_First To #Order_Chord_Last
                      Keys(ChordKeys(n, i)) = 0
                    Next
                    
                    PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Order_Chord_Min, (MousePositionXCurrent-286)/31))
                  Next
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Order_Chord_Min, (MousePositionXCurrent-286)/31))
                EndIf
              EndIf
            EndIf
            
            If Trigger_Chord_Button_7th = 1
              Trigger_Chord_Button_7th = 0
              If (MousePositionXCurrent-301)%31 <= 20
                If Keys(ChordKeys(#Order_Chord_7th, (MousePositionXCurrent-301)/31)) = 0
                  For i = #Order_Note_First To #Order_Note_Last
                    If i = (MousePositionXCurrent-301)/31
                      Continue
                    EndIf
                    For n = #Order_Chord_First To #Order_Chord_Last
                      Keys(ChordKeys(n, i)) = 0
                    Next
                    
                    PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, ChordKeys(#Order_Chord_7th, (MousePositionXCurrent-301)/31))
                  Next
                Else
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, ChordKeys(#Order_Chord_7th, (MousePositionXCurrent-301)/31))
                EndIf
              EndIf
            EndIf
            
            
            If Trigger_Harp_Plate
              If MousePositionXCurrent >= 749 And MousePositionXCurrent <= 777 And MousePositionYCurrent >= 130 And MousePositionYCurrent <= 150
                Value_Chord_Chord = #Chord_None
                Value_Chord_Note = #Note_None
                For i = #Order_Note_First To #Order_Note_Last
                  For n = #Order_Chord_First To #Order_Chord_Last
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
            Select LastKey
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_Db), ChordKeys(#Order_Chord_Min, #Order_Note_Db), ChordKeys(#Order_Chord_7th, #Order_Note_Db)
                Value_Chord_Note = #Note_Db
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_Ab), ChordKeys(#Order_Chord_Min, #Order_Note_Ab), ChordKeys(#Order_Chord_7th, #Order_Note_Ab)
                Value_Chord_Note = #Note_Ab
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_Eb), ChordKeys(#Order_Chord_Min, #Order_Note_Eb), ChordKeys(#Order_Chord_7th, #Order_Note_Eb)
                Value_Chord_Note = #Note_Eb
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_Bb), ChordKeys(#Order_Chord_Min, #Order_Note_Bb), ChordKeys(#Order_Chord_7th, #Order_Note_Bb)
                Value_Chord_Note = #Note_Bb
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_F), ChordKeys(#Order_Chord_Min, #Order_Note_F), ChordKeys(#Order_Chord_7th, #Order_Note_F)
                Value_Chord_Note = #Note_F
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_C), ChordKeys(#Order_Chord_Min, #Order_Note_C), ChordKeys(#Order_Chord_7th, #Order_Note_C)
                Value_Chord_Note = #Note_C
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_G), ChordKeys(#Order_Chord_Min, #Order_Note_G), ChordKeys(#Order_Chord_7th, #Order_Note_G)
                Value_Chord_Note = #Note_G
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_D), ChordKeys(#Order_Chord_Min, #Order_Note_D), ChordKeys(#Order_Chord_7th, #Order_Note_D)
                Value_Chord_Note = #Note_D
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_A), ChordKeys(#Order_Chord_Min, #Order_Note_A), ChordKeys(#Order_Chord_7th, #Order_Note_A)
                Value_Chord_Note = #Note_A
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_E), ChordKeys(#Order_Chord_Min, #Order_Note_E), ChordKeys(#Order_Chord_7th, #Order_Note_E)
                Value_Chord_Note = #Note_E
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_B), ChordKeys(#Order_Chord_Min, #Order_Note_B), ChordKeys(#Order_Chord_7th, #Order_Note_B)
                Value_Chord_Note = #Note_B
              Case ChordKeys(#Order_Chord_Maj, #Order_Note_Fc), ChordKeys(#Order_Chord_Min, #Order_Note_Fc), ChordKeys(#Order_Chord_7th, #Order_Note_Fc)
                Value_Chord_Note = #Note_Fc
            EndSelect
            If Value_Chord_Note <> #Note_None
              If Keys(ChordKeys(#Order_Chord_Maj, NoteToOrder(Value_Chord_Note))) And Keys(ChordKeys(#Order_Chord_Min, NoteToOrder(Value_Chord_Note))) And Keys(ChordKeys(#Order_Chord_7th, NoteToOrder(Value_Chord_Note)))
                Value_Chord_Chord = #Chord_Aug
                UpdateFrequencies(Value_Chord_Chord, Value_Chord_Note)
                Status_Sound(#Dat_Bass_Norm) = #Curve_Trigger
                Status_Sound(#Dat_Chord_1) = #Curve_Trigger
                Status_Sound(#Dat_Chord_2) = #Curve_Trigger
                Status_Sound(#Dat_Chord_3) = #Curve_Trigger
                UpdateVolume()
              ElseIf Keys(ChordKeys(#Order_Chord_Maj, NoteToOrder(Value_Chord_Note))) And Keys(ChordKeys(#Order_Chord_Min, NoteToOrder(Value_Chord_Note)))
                Value_Chord_Chord = #Chord_Dim
                UpdateFrequencies(Value_Chord_Chord, Value_Chord_Note)
                Status_Sound(#Dat_Bass_Norm) = #Curve_Trigger
                Status_Sound(#Dat_Chord_1) = #Curve_Trigger
                Status_Sound(#Dat_Chord_2) = #Curve_Trigger
                Status_Sound(#Dat_Chord_3) = #Curve_Trigger
                UpdateVolume()
              ElseIf Keys(ChordKeys(#Order_Chord_Maj, NoteToOrder(Value_Chord_Note))) And Keys(ChordKeys(#Order_Chord_7th, NoteToOrder(Value_Chord_Note)))
                Value_Chord_Chord = #Chord_Ma7
                UpdateFrequencies(Value_Chord_Chord, Value_Chord_Note)
                Status_Sound(#Dat_Bass_Norm) = #Curve_Trigger
                Status_Sound(#Dat_Chord_1) = #Curve_Trigger
                Status_Sound(#Dat_Chord_2) = #Curve_Trigger
                Status_Sound(#Dat_Chord_3) = #Curve_Trigger
                UpdateVolume()
              ElseIf Keys(ChordKeys(#Order_Chord_Min, NoteToOrder(Value_Chord_Note))) And Keys(ChordKeys(#Order_Chord_7th, NoteToOrder(Value_Chord_Note)))
                Value_Chord_Chord = #Chord_Mi7
                UpdateFrequencies(Value_Chord_Chord, Value_Chord_Note)
                Status_Sound(#Dat_Bass_Norm) = #Curve_Trigger
                Status_Sound(#Dat_Chord_1) = #Curve_Trigger
                Status_Sound(#Dat_Chord_2) = #Curve_Trigger
                Status_Sound(#Dat_Chord_3) = #Curve_Trigger
                UpdateVolume()
              ElseIf Keys(ChordKeys(#Order_Chord_Maj, NoteToOrder(Value_Chord_Note)))
                Value_Chord_Chord = #Chord_Maj
                UpdateFrequencies(Value_Chord_Chord, Value_Chord_Note)
                Status_Sound(#Dat_Bass_Norm) = #Curve_Trigger
                Status_Sound(#Dat_Chord_1) = #Curve_Trigger
                Status_Sound(#Dat_Chord_2) = #Curve_Trigger
                Status_Sound(#Dat_Chord_3) = #Curve_Trigger
                UpdateVolume()
              ElseIf Keys(ChordKeys(#Order_Chord_Min, NoteToOrder(Value_Chord_Note)))
                Value_Chord_Chord = #Chord_Min
                UpdateFrequencies(Value_Chord_Chord, Value_Chord_Note)
                Status_Sound(#Dat_Bass_Norm) = #Curve_Trigger
                Status_Sound(#Dat_Chord_1) = #Curve_Trigger
                Status_Sound(#Dat_Chord_2) = #Curve_Trigger
                Status_Sound(#Dat_Chord_3) = #Curve_Trigger
                UpdateVolume()
              ElseIf Keys(ChordKeys(#Order_Chord_7th, NoteToOrder(Value_Chord_Note)))
                Value_Chord_Chord = #Chord_7th
                UpdateFrequencies(Value_Chord_Chord, Value_Chord_Note)
                Status_Sound(#Dat_Bass_Norm) = #Curve_Trigger
                Status_Sound(#Dat_Chord_1) = #Curve_Trigger
                Status_Sound(#Dat_Chord_2) = #Curve_Trigger
                Status_Sound(#Dat_Chord_3) = #Curve_Trigger
                UpdateVolume()
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
              For i = #Order_Rhythm_First To #Order_Rhythm_Last
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
              Line(142, 339, Sin(Radian(-Value_Rhythm_Knob_Tempo*270-45))*21+Sign(Sin(Radian(-Value_Rhythm_Knob_Tempo*270-45)))*Bool(Abs(Sin(Radian(-Value_Rhythm_Knob_Tempo*270-45))*21) <= 0.5), Cos(Radian(-Value_Rhythm_Knob_Tempo*270-45))*21+Sign(Cos(Radian(-Value_Rhythm_Knob_Tempo*270-45)))*Bool(Abs(Cos(Radian(-Value_Rhythm_Knob_Tempo*270-45))*21) <= 0.5))
              
              
              DrawAlphaImage(ImageID(#Img_Knob_Big), 169, 318)
              Line(190, 339, Sin(Radian(-Value_Rhythm_Knob_Volume*270-45))*21+Sign(Sin(Radian(-Value_Rhythm_Knob_Volume*270-45)))*Bool(Abs(Sin(Radian(-Value_Rhythm_Knob_Volume*270-45))*21) <= 0.5), Cos(Radian(-Value_Rhythm_Knob_Volume*270-45))*21+Sign(Cos(Radian(-Value_Rhythm_Knob_Volume*270-45)))*Bool(Abs(Cos(Radian(-Value_Rhythm_Knob_Volume*270-45))*21) <= 0.5))
              
              
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
              For i = #Order_Note_First To #Order_Note_Fc
                If Keys(ChordKeys(#Order_Chord_Maj, i)) = 1
                  DrawAlphaImage(ImageID(#Img_Button_Light_On), 271+i*31, 240)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Light_Off), 271+i*31, 240)
                EndIf
                
                Select i
                  Case #Order_Note_Db, #Order_Note_Bb, #Order_Note_D, #Order_Note_B
                    If Keys(ChordKeys(#Order_Chord_Min, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Light_On), 286+i*31, 283)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Light_Off), 286+i*31, 283)
                    EndIf
                  Default
                    If Keys(ChordKeys(#Order_Chord_Min, i)) = 1
                      DrawAlphaImage(ImageID(#Img_Button_Dark_On), 286+i*31, 283)
                    Else
                      DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 286+i*31, 283)
                    EndIf
                EndSelect
                
                If Keys(ChordKeys(#Order_Chord_7th, i)) = 1
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
            UpdateVolume()
            Delay(1)
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
; IDE Options = PureBasic 5.46 LTS (Windows - x86)
; CursorPosition = 792
; FirstLine = 758
; Folding = -
; EnableUnicode
; EnableXP