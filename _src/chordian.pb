EnableExplicit
;-Data Sections
;--Graphics Data
DataSection
  Img_Base:
  IncludeBinary "img\base.png"
  Img_Button_Blue_Off:
  IncludeBinary "img\button_blue_off.png"
  Img_Button_Blue_On:
  IncludeBinary "img\button_blue_on.png"
  Img_Button_Grey_Off:
  IncludeBinary "img\button_grey_off.png"
  Img_Button_Grey_On:
  IncludeBinary "img\button_grey_on.png"
  Img_Button_Red_Off:
  IncludeBinary "img\button_red_off.png"
  Img_Button_Red_On:
  IncludeBinary "img\button_red_on.png"
  Img_Button_White_Off:
  IncludeBinary "img\button_white_off.png"
  Img_Button_White_On:
  IncludeBinary "img\button_white_on.png"
  
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
  Snd_Drum_Base:
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
Enumeration 0
  #Chord_Maj
  #Chord_Min
  #Chord_7th
  #Chord_Dim
  #Chord_Ma7
  #Chord_Mi7
  #Chord_Aug
EndEnumeration

Enumeration 0
  #Note_C
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
EndEnumeration
Enumeration 0
  #Harp_1
  #Harp_2
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
EndEnumeration

Enumeration 1
  #Snd_BassNorm
  #Snd_BassHigh
  #Snd_Chord1
  #Snd_Chord2
  #Snd_Chord3
  
  #Snd_Harp1N
  #Snd_Harp1F
  #Snd_Harp2N
  #Snd_Harp2F
  #Snd_Harp3N
  #Snd_Harp3F
  #Snd_Harp4N
  #Snd_Harp4F
  #Snd_Harp5N
  #Snd_Harp5F
  #Snd_Harp6N
  #Snd_Harp6F
  #Snd_Harp7N
  #Snd_Harp7F
  #Snd_Harp8N
  #Snd_Harp8F
  #Snd_Harp9N
  #Snd_Harp9F
  #Snd_Harp10N
  #Snd_Harp10F
  #Snd_Harp11N
  #Snd_Harp11F
  #Snd_Harp12N
  #Snd_Harp12F
  #Snd_Harp13N
  #Snd_Harp13F
EndEnumeration

Enumeration 1
  #Img_Base
  #Img_Button_Blue_Off
  #Img_Button_Blue_On
  #Img_Button_Grey_Off
  #Img_Button_Grey_On
  #Img_Button_Red_Off
  #Img_Button_Red_On
  #Img_Button_White_Off
  #Img_Button_White_On
  
  #Img_Button_Wide_Off
  #Img_Button_Wide_On
  
  #Img_Knob_Big
  #Img_Knob_Ring
  #Img_Knob_Small
  
  #Img_LED_Off
  #Img_LED_On
EndEnumeration

Enumeration 0
  #Dat_Bass_Norm
  #Dat_Bass_High
  #Dat_Chord1
  #Dat_Chord2
  #Dat_Chord3
  #Dat_Harp1
  #Dat_Harp2
  #Dat_Harp3
  #Dat_Harp4
  #Dat_Harp5
  #Dat_Harp6
  #Dat_Harp7
  #Dat_Harp8
  #Dat_Harp9
  #Dat_Harp10
  #Dat_Harp11
  #Dat_Harp12
  #Dat_Harp13
  #Dat_DrumBD
  #Dat_DrumHiHat
  #Dat_DrumSnare
EndEnumeration

Enumeration 1
  #Win_Main
EndEnumeration

Enumeration 1
  #Gad_Canvas
EndEnumeration

Enumeration #PB_Event_FirstCustomValue
  #Event_HandleTriggers
  #Event_HandleKeys
  EndEnumeration
;-Variables
; This is used for the keyboard.
; Each key event usually a value of 0 to 255. 65535 is just to be on the secure end, with Unicode and whatnot.
  Global Dim Keys.a(65535)
  Global LastKey.u = 0
  
  ; This is used for creating a variable keymap for the chord buttons.
  Global Dim ChordKeys.u(#Chord_7th, #Note_B)
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

; These are used to define different action regions.
;   Upper Section
Global Trigger_ButtonPower.l
Global Trigger_KnobVolumeMaster.l
;   Middle-Upper Section
Global Trigger_KnobVolumeHarp1.l
Global Trigger_KnobVolumeHarp2.l
Global Trigger_KnobSustain.l
Global Trigger_KnobVolumeKeyboard.l
Global Trigger_KnobVolumeChords.l

;   Middle-Lower Section
;   Lower Section
;   Chord Button Section
;   Harp Section Section
Global Trigger_Harp.l

; These are the different settings.
;   Upper Section
Global Value_Power.l = 1
Global Value_VolumeMaster.f = 1.0
;   Middle-Upper Section
Global Value_VolumeHarp1.f = 1.0
Global Value_VolumeHarp2.f = 1.0
Global Value_Sustain.f = 0.5
Global Value_VolumeKeyboard.f = 1.0
Global Value_VolumeChords.f = 1.0
;   Middle-Lower Section
;   Lower Section
;   Chord Button Section
;   Harp Section Sectin

; These are used for Harp/Trigger control.
Global Dim Status_SoundCurrent(#Dat_Harp13)
Global Dim Status_SoundPrevious(#Dat_Harp13)

; These are used for program flow.
Define Event.l
Define CurrentNote.l
Define CurrentChord.l

;-Procedures
Procedure.l UpdateFrequencies(Chord, Note)
  Static Dim Frequency.f(#Dat_Harp13)
  Static PreviousChord = -1
  Static PreviousNote = -1
  If Chord <> PreviousChord Or Note <> PreviousNote
    If Chord <> -1 And Note <> -1
      CopyMemory(?Dat_Frequencies+SizeOf(Float)*((#Dat_Harp13+1)*Chord+(#Dat_Harp13+1)*(#Chord_Aug+1)*Note), @Frequency(), SizeOf(Float)*(#Dat_Harp13+1))
      SetSoundFrequency(#Snd_BassNorm, Frequency(#Dat_Bass_Norm))
      SetSoundFrequency(#Snd_BassHigh, Frequency(#Dat_Bass_High))
      SetSoundFrequency(#Snd_Chord1, Frequency(#Dat_Chord1))
      SetSoundFrequency(#Snd_Chord2, Frequency(#Dat_Chord2))
      SetSoundFrequency(#Snd_Chord3, Frequency(#Dat_Chord3))
      
      SetSoundFrequency(#Snd_Harp1N, Frequency(#Dat_Harp1))
      SetSoundFrequency(#Snd_Harp1F, Frequency(#Dat_Harp1))
      SetSoundPosition(#Snd_Harp1N, 0)
      SetSoundPosition(#Snd_Harp1F, 7)
      SetSoundFrequency(#Snd_Harp2N, Frequency(#Dat_Harp2))
      SetSoundFrequency(#Snd_Harp2F, Frequency(#Dat_Harp2))
      SetSoundPosition(#Snd_Harp2N, 0)
      SetSoundPosition(#Snd_Harp2F, 7)
      SetSoundFrequency(#Snd_Harp3N, Frequency(#Dat_Harp3))
      SetSoundFrequency(#Snd_Harp3F, Frequency(#Dat_Harp3))
      SetSoundPosition(#Snd_Harp3N, 0)
      SetSoundPosition(#Snd_Harp3F, 7)
      SetSoundFrequency(#Snd_Harp4N, Frequency(#Dat_Harp4))
      SetSoundFrequency(#Snd_Harp4F, Frequency(#Dat_Harp4))
      SetSoundPosition(#Snd_Harp4N, 0)
      SetSoundPosition(#Snd_Harp4F, 7)
      SetSoundFrequency(#Snd_Harp5N, Frequency(#Dat_Harp5))
      SetSoundFrequency(#Snd_Harp5F, Frequency(#Dat_Harp5))
      SetSoundPosition(#Snd_Harp5N, 0)
      SetSoundPosition(#Snd_Harp5F, 7)
      SetSoundFrequency(#Snd_Harp6N, Frequency(#Dat_Harp6))
      SetSoundFrequency(#Snd_Harp6F, Frequency(#Dat_Harp6))
      SetSoundPosition(#Snd_Harp6N, 0)
      SetSoundPosition(#Snd_Harp6F, 7)
      SetSoundFrequency(#Snd_Harp7N, Frequency(#Dat_Harp7))
      SetSoundFrequency(#Snd_Harp7F, Frequency(#Dat_Harp7))
      SetSoundPosition(#Snd_Harp7N, 0)
      SetSoundPosition(#Snd_Harp7F, 7)
      SetSoundFrequency(#Snd_Harp8N, Frequency(#Dat_Harp8))
      SetSoundFrequency(#Snd_Harp8F, Frequency(#Dat_Harp8))
      SetSoundPosition(#Snd_Harp8N, 0)
      SetSoundPosition(#Snd_Harp8F, 7)
      SetSoundFrequency(#Snd_Harp9N, Frequency(#Dat_Harp9))
      SetSoundFrequency(#Snd_Harp9F, Frequency(#Dat_Harp9))
      SetSoundPosition(#Snd_Harp9N, 0)
      SetSoundPosition(#Snd_Harp9F, 7)
      SetSoundFrequency(#Snd_Harp10N, Frequency(#Dat_Harp10))
      SetSoundFrequency(#Snd_Harp10F, Frequency(#Dat_Harp10))
      SetSoundPosition(#Snd_Harp10N, 0)
      SetSoundPosition(#Snd_Harp10F, 7)
      SetSoundFrequency(#Snd_Harp11N, Frequency(#Dat_Harp11))
      SetSoundFrequency(#Snd_Harp11F, Frequency(#Dat_Harp11))
      SetSoundPosition(#Snd_Harp11N, 0)
      SetSoundPosition(#Snd_Harp11F, 7)
      SetSoundFrequency(#Snd_Harp12N, Frequency(#Dat_Harp12))
      SetSoundFrequency(#Snd_Harp12F, Frequency(#Dat_Harp12))
      SetSoundPosition(#Snd_Harp12N, 7)
      SetSoundPosition(#Snd_Harp12F, 0)
      SetSoundFrequency(#Snd_Harp13N, Frequency(#Dat_Harp13))
      SetSoundFrequency(#Snd_Harp13F, Frequency(#Dat_Harp13))
      SetSoundPosition(#Snd_Harp13N, 0)
      SetSoundPosition(#Snd_Harp13F, 7)
    EndIf
    PreviousChord = Chord
    PreviousNote = Note
    ProcedureReturn 1
  Else
    ProcedureReturn 0
  EndIf
EndProcedure
Procedure UpdateVolume()
  Static Dim VolumeStatus.f(#Dat_DrumSnare)
  Static TimeCurrent.q
  Static TimePrevious.q
  Static FirstRun.l = 1
  Protected i.l
  
  TimePrevious = TimeCurrent
  TimeCurrent = ElapsedMilliseconds()
  If FirstRun
    TimePrevious = TimeCurrent
    FirstRun = 0
  EndIf
  
  Select Value_Power
    Case 0
      For i = 0 To ArraySize(VolumeStatus())
        VolumeStatus(i) = 0.0
      Next
    Case 1
      For i = #Dat_Harp1 To #Dat_Harp13
        If Status_SoundCurrent(i) = 1 And Status_SoundPrevious(i) = 0
          VolumeStatus(i) = 1.0
        Else
          VolumeStatus(i) = VolumeStatus(i)
        EndIf
      Next
  EndSelect
EndProcedure



;-Initialization
If InitSound()
  UsePNGImageDecoder()
  
  ;-Get Graphics
  CatchImage(#Img_Base, ?Img_Base)
  CatchImage(#Img_Button_Blue_Off, ?Img_Button_Blue_On)
  CatchImage(#Img_Button_Blue_On, ?Img_Button_Blue_On)
  CatchImage(#Img_Button_Grey_Off, ?Img_Button_Grey_Off)
  CatchImage(#Img_Button_Grey_On, ?Img_Button_Grey_On)
  CatchImage(#Img_Button_Red_Off, ?Img_Button_Red_Off)
  CatchImage(#Img_Button_Red_On, ?Img_Button_Red_On)
  CatchImage(#Img_Button_White_Off, ?Img_Button_White_Off)
  CatchImage(#Img_Button_White_On, ?Img_Button_White_On)
  
  CatchImage(#Img_Button_Wide_Off, ?Img_Button_Wide_Off)
  CatchImage(#Img_Button_Wide_On, ?Img_Button_Wide_On)
  
  CatchImage(#Img_Knob_Big, ?Img_Knob_Big)
  CatchImage(#Img_Knob_Ring, ?Img_Knob_Ring)
  CatchImage(#Img_Knob_Small, ?Img_Knob_Small)
  
  CatchImage(#Img_LED_Off, ?Img_LED_Off)
  CatchImage(#Img_LED_On, ?Img_LED_On)
  
  
  ;-Get Sounds
  CatchSound(#Snd_BassNorm, ?Snd_Bass)
  CatchSound(#Snd_BassHigh, ?Snd_Bass)
  CatchSound(#Snd_Chord1, ?Snd_Chord)
  CatchSound(#Snd_Chord2, ?Snd_Chord)
  CatchSound(#Snd_Chord3, ?Snd_Chord)
  
  CatchSound(#Snd_Harp1N, ?Snd_Harp)
  CatchSound(#Snd_Harp1F, ?Snd_Harp)
  CatchSound(#Snd_Harp2N, ?Snd_Harp)
  CatchSound(#Snd_Harp2F, ?Snd_Harp)
  CatchSound(#Snd_Harp3N, ?Snd_Harp)
  CatchSound(#Snd_Harp3F, ?Snd_Harp)
  CatchSound(#Snd_Harp4N, ?Snd_Harp)
  CatchSound(#Snd_Harp4F, ?Snd_Harp)
  CatchSound(#Snd_Harp5N, ?Snd_Harp)
  CatchSound(#Snd_Harp5F, ?Snd_Harp)
  CatchSound(#Snd_Harp6N, ?Snd_Harp)
  CatchSound(#Snd_Harp6F, ?Snd_Harp)
  CatchSound(#Snd_Harp7N, ?Snd_Harp)
  CatchSound(#Snd_Harp7F, ?Snd_Harp)
  CatchSound(#Snd_Harp8N, ?Snd_Harp)
  CatchSound(#Snd_Harp8F, ?Snd_Harp)
  CatchSound(#Snd_Harp9N, ?Snd_Harp)
  CatchSound(#Snd_Harp9F, ?Snd_Harp)
  CatchSound(#Snd_Harp10N, ?Snd_Harp)
  CatchSound(#Snd_Harp10F, ?Snd_Harp)
  CatchSound(#Snd_Harp11N, ?Snd_Harp)
  CatchSound(#Snd_Harp11F, ?Snd_Harp)
  CatchSound(#Snd_Harp12N, ?Snd_Harp)
  CatchSound(#Snd_Harp12F, ?Snd_Harp)
  CatchSound(#Snd_Harp13N, ?Snd_Harp)
  CatchSound(#Snd_Harp13F, ?Snd_Harp)
  
  
  ;-Play all sounds
  PlaySound(#Snd_BassNorm, #PB_Sound_Loop, 40)
  PlaySound(#Snd_BassHigh, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Chord1, #PB_Sound_Loop, 40)
  PlaySound(#Snd_Chord2, #PB_Sound_Loop, 40)
  PlaySound(#Snd_Chord3, #PB_Sound_Loop, 40)
  
  PlaySound(#Snd_Harp1N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp1F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp2N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp2F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp3N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp3F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp4N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp4F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp5N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp5F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp6N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp6F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp7N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp7F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp8N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp8F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp9N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp9F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp10N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp10F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp11N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp11F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp12N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp12F, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp13N, #PB_Sound_Loop, 0)
  PlaySound(#Snd_Harp13F, #PB_Sound_Loop, 0)
  
  
  ;-Window
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
                    If Keys(GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)) = 0
                      PostEvent(#Event_HandleKeys)
                    EndIf
                    Keys(GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)) = 1
                    LastKey = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                    
                  Case #PB_EventType_KeyUp
                    Keys(GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)) = 0
                    
                  Case #PB_EventType_LeftButtonDown
                    MouseButtonLeftPrevious=MouseButtonLeftCurrent
                    If Value_Power = 1
                    If MousePositionXCurrent >= 689 And MousePositionXCurrent <= 777
                      Trigger_Harp = 1
                    EndIf
                  EndIf
                  
                    ;Master Volume Knob
                    If Sqr(Pow(MousePositionXCurrent-190, 2)+Pow(MousePositionYCurrent-116, 2)) <= 21
                      Trigger_KnobVolumeMaster = 1
                    EndIf
                    
                    ;Harp Voice Volume Knobs
                    If Sqr(Pow(MousePositionXCurrent-94, 2)+Pow(MousePositionYCurrent-191, 2)) <= 21
                      If Sqr(Pow(MousePositionXCurrent-94, 2)+Pow(MousePositionYCurrent-191, 2)) <= 13
                        Trigger_KnobVolumeHarp2 = 1
                      Else
                        Trigger_KnobVolumeHarp1 = 1
                      EndIf
                    EndIf
                    
                    ;Harp Sustain Knob
                    If Sqr(Pow(MousePositionXCurrent-142, 2)+Pow(MousePositionYCurrent-191, 2)) <= 21
                      Trigger_KnobSustain = 1
                    EndIf
                    
                    
                    ;Harp Voice Volume Knobs
                    If Sqr(Pow(MousePositionXCurrent-190, 2)+Pow(MousePositionYCurrent-191, 2)) <= 21
                      If Sqr(Pow(MousePositionXCurrent-190, 2)+Pow(MousePositionYCurrent-191, 2)) <= 13
                        Trigger_KnobVolumeChords = 1
                      Else
                        Trigger_KnobVolumeKeyboard = 1
                      EndIf
                    EndIf
                    
                    PostEvent(#Event_HandleTriggers)
                    
                  Case #PB_EventType_LeftButtonUp
                    
                    Trigger_ButtonPower = 0
                    Trigger_KnobVolumeMaster = 0
                    Trigger_KnobVolumeHarp1 = 0
                    Trigger_KnobVolumeHarp2 = 0
                    Trigger_KnobSustain = 0
                    Trigger_KnobVolumeKeyboard = 0
                    Trigger_KnobVolumeChords = 0
                    Trigger_Harp = 0
                    
                    
                  Case #PB_EventType_MouseMove
                    
                    MousePositionXPrevious = MousePositionXCurrent
                    MousePositionYPrevious = MousePositionYCurrent
                    MousePositionXCurrent = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_MouseX)
                    MousePositionYCurrent = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_MouseY)
                    
                    PostEvent(#Event_HandleTriggers)
                    
                    
                EndSelect
            EndSelect
          Case #Event_HandleTriggers
            ;--HandleTriggers
            If Trigger_KnobVolumeMaster
                      Value_VolumeMaster+(MousePositionYPrevious-MousePositionYCurrent)/400.0
                      If Value_VolumeMaster > 1.0
                        Value_VolumeMaster = 1.0
                      ElseIf Value_VolumeMaster < 0.0
                        Value_VolumeMaster = 0
                      EndIf
                      PostEvent(#PB_Event_Repaint)
                    EndIf
                    If Trigger_KnobVolumeHarp1
                      Value_VolumeHarp1+(MousePositionYPrevious-MousePositionYCurrent)/400.0
                      If Value_VolumeHarp1 > 1.0
                        Value_VolumeHarp1 = 1.0
                      ElseIf Value_VolumeHarp1 < 0.0
                        Value_VolumeHarp1 = 0
                      EndIf
                      PostEvent(#PB_Event_Repaint)
                    EndIf
                    If Trigger_KnobVolumeHarp2
                      Value_VolumeHarp2+(MousePositionYPrevious-MousePositionYCurrent)/400.0
                      If Value_VolumeHarp2 > 1.0
                        Value_VolumeHarp2 = 1.0
                      ElseIf Value_VolumeHarp2 < 0.0
                        Value_VolumeHarp2 = 0
                      EndIf
                      PostEvent(#PB_Event_Repaint)
                    EndIf
                    If Trigger_KnobSustain
                      Value_Sustain+(MousePositionYPrevious-MousePositionYCurrent)/400.0
                      If Value_Sustain > 1.0
                        Value_Sustain = 1.0
                      ElseIf Value_Sustain < 0.0
                        Value_Sustain = 0
                      EndIf
                      PostEvent(#PB_Event_Repaint)
                    EndIf
                    If Trigger_KnobVolumeKeyboard
                      Value_VolumeKeyboard+(MousePositionYPrevious-MousePositionYCurrent)/400.0
                      If Value_VolumeKeyboard > 1.0
                        Value_VolumeKeyboard = 1.0
                      ElseIf Value_VolumeKeyboard < 0.0
                        Value_VolumeKeyboard = 0
                      EndIf
                      PostEvent(#PB_Event_Repaint)
                    EndIf
                    If Trigger_KnobVolumeChords
                      Value_VolumeChords+(MousePositionYPrevious-MousePositionYCurrent)/400.0
                      If Value_VolumeChords > 1.0
                        Value_VolumeChords = 1.0
                      ElseIf Value_VolumeChords < 0.0
                        Value_VolumeChords = 0
                      EndIf
                      PostEvent(#PB_Event_Repaint)
                    EndIf
                    
                    If Trigger_Harp
                      If MousePositionXCurrent >= 749 And MousePositionXCurrent <= 777 And MousePositionYCurrent >= 130 And MousePositionYCurrent <= 150
                        ;KILL ALL SOUNDS
                      Else
                        Select MousePositionYCurrent
                          Case 92 To 100
                          Case 101 To 124
                          Case 125 To 148
                          Case 149 To 172
                          Case 173 To 196
                          Case 197 To 220
                          Case 221 To 244
                          Case 245 To 268
                          Case 269 To 292
                          Case 293 To 316
                          Case 317 To 340
                          Case 341 To 364
                          Case 365 To 388
                        EndSelect
                        
                      EndIf
                    EndIf
                    
                  Case #Event_HandleKeys
                    ;--HandleKeys
                    Select LastKey
                      Case ChordKeys(#Chord_Maj, #Note_Db), ChordKeys(#Chord_Min, #Note_Db), ChordKeys(#Chord_7th, #Note_Db)
                        CurrentNote = #Note_Db
                      Case ChordKeys(#Chord_Maj, #Note_Ab), ChordKeys(#Chord_Min, #Note_Ab), ChordKeys(#Chord_7th, #Note_Ab)
                        CurrentNote = #Note_Ab
                      Case ChordKeys(#Chord_Maj, #Note_Eb), ChordKeys(#Chord_Min, #Note_Eb), ChordKeys(#Chord_7th, #Note_Eb)
                        CurrentNote = #Note_Eb
                      Case ChordKeys(#Chord_Maj, #Note_Bb), ChordKeys(#Chord_Min, #Note_Bb), ChordKeys(#Chord_7th, #Note_Bb)
                        CurrentNote = #Note_Bb
                      Case ChordKeys(#Chord_Maj, #Note_F), ChordKeys(#Chord_Min, #Note_F), ChordKeys(#Chord_7th, #Note_F)
                        CurrentNote = #Note_F
                      Case ChordKeys(#Chord_Maj, #Note_C), ChordKeys(#Chord_Min, #Note_C), ChordKeys(#Chord_7th, #Note_C)
                        CurrentNote = #Note_C
                      Case ChordKeys(#Chord_Maj, #Note_G), ChordKeys(#Chord_Min, #Note_G), ChordKeys(#Chord_7th, #Note_G)
                        CurrentNote = #Note_G
                      Case ChordKeys(#Chord_Maj, #Note_D), ChordKeys(#Chord_Min, #Note_D), ChordKeys(#Chord_7th, #Note_D)
                        CurrentNote = #Note_D
                      Case ChordKeys(#Chord_Maj, #Note_A), ChordKeys(#Chord_Min, #Note_A), ChordKeys(#Chord_7th, #Note_A)
                        CurrentNote = #Note_A
                      Case ChordKeys(#Chord_Maj, #Note_E), ChordKeys(#Chord_Min, #Note_E), ChordKeys(#Chord_7th, #Note_E)
                        CurrentNote = #Note_E
                      Case ChordKeys(#Chord_Maj, #Note_B), ChordKeys(#Chord_Min, #Note_B), ChordKeys(#Chord_7th, #Note_B)
                        CurrentNote = #Note_B
                      Case ChordKeys(#Chord_Maj, #Note_Fc), ChordKeys(#Chord_Min, #Note_Fc), ChordKeys(#Chord_7th, #Note_Fc)
                        CurrentNote = #Note_Fc
                    EndSelect
                    If Keys(ChordKeys(#Chord_Maj, CurrentNote)) And Keys(ChordKeys(#Chord_Min, CurrentNote)) And Keys(ChordKeys(#Chord_7th, CurrentNote))
                      UpdateFrequencies(#Chord_Aug, CurrentNote)
                    ElseIf Keys(ChordKeys(#Chord_Maj, CurrentNote)) And Keys(ChordKeys(#Chord_Min, CurrentNote))
                      UpdateFrequencies(#Chord_Dim, CurrentNote)
                    ElseIf Keys(ChordKeys(#Chord_Maj, CurrentNote)) And Keys(ChordKeys(#Chord_7th, CurrentNote))
                      UpdateFrequencies(#Chord_Ma7, CurrentNote)
                    ElseIf Keys(ChordKeys(#Chord_Min, CurrentNote)) And Keys(ChordKeys(#Chord_7th, CurrentNote))
                      UpdateFrequencies(#Chord_Mi7, CurrentNote)
                    ElseIf Keys(ChordKeys(#Chord_Maj, CurrentNote))
                      UpdateFrequencies(#Chord_Maj, CurrentNote)
                    ElseIf Keys(ChordKeys(#Chord_Min, CurrentNote))
                      UpdateFrequencies(#Chord_Min, CurrentNote)
                    ElseIf Keys(ChordKeys(#Chord_7th, CurrentNote))
                      UpdateFrequencies(#Chord_7th, CurrentNote)
                    EndIf
          Case #PB_Event_Repaint
            ;--Repaint
            If StartDrawing(CanvasOutput(#Gad_Canvas))
              DrawImage(ImageID(#Img_Base), 0, 0)
              
              ;Power Button and LED
              Select Value_Power
                Case 1
                  DrawAlphaImage(ImageID(#Img_LED_On), 133, 97)
                  DrawAlphaImage(ImageID(#Img_Button_Red_On), 126, 113)
                Case 0
                  DrawAlphaImage(ImageID(#Img_LED_Off), 133, 97)
                  DrawAlphaImage(ImageID(#Img_Button_Red_Off), 126, 113)
              EndSelect
              
              
              ;Master Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Big), 169, 95)
              Line(190, 116, Sin(Radian(-Value_VolumeMaster*270-45))*21+Sign(Sin(Radian(-Value_VolumeMaster*270-45)))*Bool(Abs(Sin(Radian(-Value_VolumeMaster*270-45))*21) <= 0.5), Cos(Radian(-Value_VolumeMaster*270-45))*21+Sign(Cos(Radian(-Value_VolumeMaster*270-45)))*Bool(Abs(Cos(Radian(-Value_VolumeMaster*270-45))*21) <= 0.5))
              
              ;Harp Voice 1 Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Ring), 73, 170)
              Line(94, 191, Sin(Radian(-Value_VolumeHarp1*270-45))*21+Sign(Sin(Radian(-Value_VolumeHarp1*270-45)))*Bool(Abs(Sin(Radian(-Value_VolumeHarp1*270-45))*21) <= 0.5), Cos(Radian(-Value_VolumeHarp1*270-45))*21+Sign(Cos(Radian(-Value_VolumeHarp1*270-45)))*Bool(Abs(Cos(Radian(-Value_VolumeHarp1*270-45))*21) <= 0.5))
              ;Harp Voice 2 Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Small), 81, 178)
              Line(94, 191, Sin(Radian(-Value_VolumeHarp2*270-45))*13+Sign(Sin(Radian(-Value_VolumeHarp2*270-45)))*Bool(Abs(Sin(Radian(-Value_VolumeHarp2*270-45))*13) <= 0.5), Cos(Radian(-Value_VolumeHarp2*270-45))*13+Sign(Cos(Radian(-Value_VolumeHarp2*270-45)))*Bool(Abs(Cos(Radian(-Value_VolumeHarp2*270-45))*13) <= 0.5))
              
              ;Harp Sustain Knob
              DrawAlphaImage(ImageID(#Img_Knob_Big), 121, 170)
              Line(142, 191, Sin(Radian(-Value_Sustain*270-45))*21+Sign(Sin(Radian(-Value_Sustain*270-45)))*Bool(Abs(Sin(Radian(-Value_Sustain*270-45))*21) <= 0.5), Cos(Radian(-Value_Sustain*270-45))*21+Sign(Cos(Radian(-Value_Sustain*270-45)))*Bool(Abs(Cos(Radian(-Value_Sustain*270-45))*21) <= 0.5))
              
              ;Keyboard Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Ring), 169, 170)
              Line(190, 191, Sin(Radian(-Value_VolumeKeyboard*270-45))*21+Sign(Sin(Radian(-Value_VolumeKeyboard*270-45)))*Bool(Abs(Sin(Radian(-Value_VolumeKeyboard*270-45))*21) <= 0.5), Cos(Radian(-Value_VolumeKeyboard*270-45))*21+Sign(Cos(Radian(-Value_VolumeKeyboard*270-45)))*Bool(Abs(Cos(Radian(-Value_VolumeKeyboard*270-45))*21) <= 0.5))
              ;Chords Volume Knob
              DrawAlphaImage(ImageID(#Img_Knob_Small), 177, 178)
              Line(190, 191, Sin(Radian(-Value_VolumeChords*270-45))*13+Sign(Sin(Radian(-Value_VolumeChords*270-45)))*Bool(Abs(Sin(Radian(-Value_VolumeChords*270-45))*13) <= 0.5), Cos(Radian(-Value_VolumeChords*270-45))*13+Sign(Cos(Radian(-Value_VolumeChords*270-45)))*Bool(Abs(Cos(Radian(-Value_VolumeChords*270-45))*13) <= 0.5))
              
              
              StopDrawing()
            EndIf
          Case #PB_Event_CloseWindow
            Break
          Default
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