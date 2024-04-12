#EXPORTSCALE = 16.0
TRANSPARENTCOLOR = RGBA(128, 128, 128, 0)

Procedure Vec_DrawRoundedCornerButton(Width.d, Height.d, Corner.d, Offset.d)
  MovePathCursor(Offset, Corner+Offset)
  AddPathArc(Offset, Offset, Corner+Offset, Offset, Corner) ;ul
  AddPathLine(Width-Corner-Offset, Offset)
  AddPathArc(Width-Offset, Offset, Width-Offset, Corner+Offset, Corner) ;ur
  AddPathLine(Width-Offset, Height-Corner-Offset)
  AddPathArc(Width-Offset, Height-Offset, Width-Corner-Offset, Height-Offset, Corner) ;lr
  AddPathLine(Corner+Offset, Height-Offset)
  AddPathArc(Offset, Height-Offset, Offset, Height-Corner-Offset, Corner) ;ll
  ClosePath()
EndProcedure

Procedure Vec_DrawShadedButton(Width.d, Height.d, Color.i, Pressed.i, Corner.d = 1)
  
  ;Up
  MovePathCursor(Corner*0.9, 1.0)
  AddPathLine(Width-Corner*0.9, 1.0)
  VectorSourceColor(RGBA(255, 255, 255, 255))
  StrokePath(0.1)
  
  SaveVectorState()
  MovePathCursor(0, 0)
  AddPathLine(Width/2, Height/2-1.0)
  AddPathLine(Width, 0)
  ClosePath()
  ClipPath()
  
  Vec_DrawRoundedCornerButton(Width, Height, Corner, 0.5)
  Select Pressed
    Case 0
      VectorSourceColor(RGBA(153, 153, 153, 255))
    Default
      VectorSourceColor(RGBA(153, 153, 153, 255))
  EndSelect
  FillPath()
  RestoreVectorState()
  
  ;Right
  SaveVectorState()
  MovePathCursor(Width, 0)
  AddPathLine(Width/2, Height/2-1.0)
  AddPathLine(Width, Height)
  ClosePath()
  ClipPath()
  
  Vec_DrawRoundedCornerButton(Width, Height, Corner, 0.5)
  Select Pressed
    Case 0
      VectorSourceColor(RGBA(102, 102, 102, 255))
    Default
      VectorSourceColor(RGBA(102, 102, 102, 255))
  EndSelect
  FillPath()
  RestoreVectorState()
  
  ;Down
  SaveVectorState()
  MovePathCursor(Width, Height)
  AddPathLine(Width/2, Height/2-1.0)
  AddPathLine(0, Height)
  ClosePath()
  ClipPath()
  
  Vec_DrawRoundedCornerButton(Width, Height, Corner, 0.5)
  Select Pressed
    Case 0
      VectorSourceColor(RGBA(51, 51, 51, 255))
    Default
      VectorSourceColor(RGBA(153, 153, 153, 255))
  EndSelect
  FillPath()
  RestoreVectorState()
  
  ;Left
  SaveVectorState()
  MovePathCursor(0, Height)
  AddPathLine(Width/2, Height/2-1.0)
  AddPathLine(0, 0)
  ClosePath()
  ClipPath()
  
  Vec_DrawRoundedCornerButton(Width, Height, Corner, 0.5)
  Select Pressed
    Case 0
      VectorSourceColor(RGBA(102, 102, 102, 255))
    Default
      VectorSourceColor(RGBA(102, 102, 102, 255))
  EndSelect
  FillPath()
  RestoreVectorState()
  
  SaveVectorState()
  Vec_DrawRoundedCornerButton(Width, Height-0.3, Corner/1.5, 1.4+Sqr(Sqr(Sqr(Corner))))
  Select Pressed
    Case 0
      VectorSourceColor(Color)
    Default
      VectorSourceColor(RGBA(Red(Color)*0.70, Green(Color)*0.70, Blue(Color)*0.70, 255))
  EndSelect
  FillPath()
  RestoreVectorState()
  
EndProcedure

Procedure Vec_DrawOrnament(Width.d, Height.d, Color.i, Pressed.i, Ornament.s)
  Select Ornament
    Case "Up"
      MovePathCursor(Width/2.0-2.0, Height/2.0+7.0)
      AddPathLine(Width/2.0+2.0, Height/2.0+7.0)
      AddPathLine(Width/2.0+2.0, Height/2.0-2.8)
      AddPathLine(Width/2.0+4.5, Height/2.0-2.8)
      AddPathLine(Width/2.0, Height/2.0-7.3)
      AddPathLine(Width/2.0-4.5, Height/2.0-2.8)
      AddPathLine(Width/2.0-2.0, Height/2.0-2.8)
      ClosePath()
    Case "Down"
      MovePathCursor(Width/2.0-2.0, Height/2.0-7.3)
      AddPathLine(Width/2.0+2.0, Height/2.0-7.3)
      AddPathLine(Width/2.0+2.0, Height/2.0+2.5)
      AddPathLine(Width/2.0+4.5, Height/2.0+2.5)
      AddPathLine(Width/2.0, Height/2.0+7.0)
      AddPathLine(Width/2.0-4.5, Height/2.0+2.5)
      AddPathLine(Width/2.0-2.0, Height/2.0+2.5)
      ClosePath()
    Case "X"
      MovePathCursor(Width/2.0-4.0, Height/2.0-7.3)
      AddPathLine(Width/2.0, Height/2.0-4.0)
      AddPathLine(Width/2.0+3.5, Height/2.0-7.3)
      AddPathLine(Width/2.0+6.6, Height/2.0-4.0)
      AddPathLine(Width/2.0+3.5, Height/2.0-1.0)
      AddPathLine(Width/2.0+6.6, Height/2.0+3.0)
      AddPathLine(Width/2.0+3.5, Height/2.0+6.0)
      AddPathLine(Width/2.0, Height/2.0+3.0)
      AddPathLine(Width/2.0-3.5, Height/2.0+6.0)
      AddPathLine(Width/2.0-6.6, Height/2.0+3.0)
      AddPathLine(Width/2.0-3.5, Height/2.0-1.0)
      AddPathLine(Width/2.0-6.6, Height/2.0-4.0)
      AddPathLine(Width/2.0-3.5, Height/2.0-7.3)
      ClosePath()
    Case "C"
      MovePathCursor(Width/2.0-5.7, Height/2.0-6.3)
      AddPathLine(Width/2.0+5.7, Height/2.0-6.3)
      AddPathLine(Width/2.0+5.7, Height/2.0-2.5)
      AddPathLine(Width/2.0-2.3, Height/2.0-2.5)
      AddPathLine(Width/2.0-2.3, Height/2.0+1.5)
      AddPathLine(Width/2.0+5.7, Height/2.0+1.5)
      AddPathLine(Width/2.0+5.7, Height/2.0+5.2)
      AddPathLine(Width/2.0-5.7, Height/2.0+5.2)
      ClosePath()
    Case "Tri"
      MovePathCursor(Width/2.0, Height/2.0-6.3)
      AddPathLine(Width/2.0+6.8, Height/2.0+5.1)
      AddPathLine(Width/2.0-6.8, Height/2.0+5.1)
      ClosePath()
    Case "O"
      AddPathCircle(Width/2.0, Height/2.0+0.3, 6.8)
      AddPathCircle(Width/2.0, Height/2.0+0.3, 3.8)
      ClosePath()
  EndSelect
  Select Pressed
    Case 0
      VectorSourceColor(RGBA(255, 255, 255, 96))
    Default
      VectorSourceColor(RGBA(255, 255, 255, 96))
  EndSelect
  FillPath()
EndProcedure


Macro DrawPNGAndSVGButtonSet(Name, ColorPayload, Width, Height, Corner = 1)
  If StartVectorDrawing(SvgVectorOutput(Name+"_off.svg", Width, Height, #PB_Unit_Pixel))
    Vec_DrawShadedButton(Width, Height, ColorPayload, 0, Corner)
    StopVectorDrawing()
  EndIf
  CreateImage(0, Width*#EXPORTSCALE, Height*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
  If StartDrawing(ImageOutput(0))
    DrawingMode(#PB_2DDrawing_AlphaChannel)
    Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
    StopDrawing()
  EndIf
  If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
    ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
    Vec_DrawShadedButton(Width, Height, ColorPayload, 0, Corner)
    StopVectorDrawing()
    ResizeImage(0, Width, Height)
    SaveImage(0, Name+"_off.png", #PB_ImagePlugin_PNG, 0, 32)
  EndIf
  FreeImage(0)
  
  If StartVectorDrawing(SvgVectorOutput(Name+"_on.svg", Width, Height, #PB_Unit_Pixel))
    Vec_DrawShadedButton(Width, Height, ColorPayload, 1, Corner)
    StopVectorDrawing()
  EndIf
  CreateImage(0, Width*#EXPORTSCALE, Height*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
  If StartDrawing(ImageOutput(0))
    DrawingMode(#PB_2DDrawing_AlphaChannel)
    Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
    StopDrawing()
  EndIf
  If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
    ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
    Vec_DrawShadedButton(Width, Height, ColorPayload, 1, Corner)
    StopVectorDrawing()
    ResizeImage(0, Width, Height)
    SaveImage(0, Name+"_on.png", #PB_ImagePlugin_PNG, 0, 32)
  EndIf
  FreeImage(0)
EndMacro
Macro DrawPNGAndSVGButtonOrnamentSet(Name, Ornament, ColorPayload, Width, Height, Corner = 1)
  If StartVectorDrawing(SvgVectorOutput(Name+"_off.svg", Width, Height, #PB_Unit_Pixel))
    Vec_DrawShadedButton(Width, Height, ColorPayload, 0, Corner)
    Vec_DrawOrnament(Width, Height, ColorPayload, 0, Ornament)
    StopVectorDrawing()
  EndIf
  CreateImage(0, Width*#EXPORTSCALE, Height*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
  If StartDrawing(ImageOutput(0))
    DrawingMode(#PB_2DDrawing_AlphaChannel)
    Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
    StopDrawing()
  EndIf
  If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
    ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
    Vec_DrawShadedButton(Width, Height, ColorPayload, 0, Corner)
    Vec_DrawOrnament(Width, Height, ColorPayload, 0, Ornament)
    StopVectorDrawing()
    ResizeImage(0, Width, Height)
    SaveImage(0, Name+"_off.png", #PB_ImagePlugin_PNG, 0, 32)
  EndIf
  FreeImage(0)
  
  If StartVectorDrawing(SvgVectorOutput(Name+"_on.svg", Width, Height, #PB_Unit_Pixel))
    Vec_DrawShadedButton(Width, Height, ColorPayload, 1, Corner)
    Vec_DrawOrnament(Width, Height, ColorPayload, 1, Ornament)
    StopVectorDrawing()
  EndIf
  CreateImage(0, Width*#EXPORTSCALE, Height*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
  If StartDrawing(ImageOutput(0))
    DrawingMode(#PB_2DDrawing_AlphaChannel)
    Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
    StopDrawing()
  EndIf
  If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
    ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
    Vec_DrawShadedButton(Width, Height, ColorPayload, 1, Corner)
    Vec_DrawOrnament(Width, Height, ColorPayload, 1, Ornament)
    StopVectorDrawing()
    ResizeImage(0, Width, Height)
    SaveImage(0, Name+"_on.png", #PB_ImagePlugin_PNG, 0, 32)
  EndIf
  FreeImage(0)
EndMacro
Macro DrawPNGAndSVGButtonHole(Name, Width, Height, Corner = 1)
  If StartVectorDrawing(SvgVectorOutput(Name+"_hole.svg", Width, Height, #PB_Unit_Pixel))
    Vec_DrawRoundedCornerButton(Width, Height, Corner, 0)
    VectorSourceColor(RGBA(51, 51, 51, 255))
    FillPath()
    StopVectorDrawing()
  EndIf
  CreateImage(0, Width*#EXPORTSCALE, Height*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
  If StartDrawing(ImageOutput(0))
    DrawingMode(#PB_2DDrawing_AlphaChannel)
    Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
    StopDrawing()
  EndIf
  If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
    ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
    Vec_DrawRoundedCornerButton(Width, Height, Corner, 0)
    VectorSourceColor(RGBA(51, 51, 51, 255))
    FillPath()
    StopVectorDrawing()
    ResizeImage(0, Width, Height)
    SaveImage(0, Name+"_hole.png", #PB_ImagePlugin_PNG, 0, 32)
  EndIf
  FreeImage(0)
EndMacro

Macro CreateButtonSet(Name, Color, Width, Height, Corner = 1)
  DrawPNGAndSVGButtonSet(Name, Color, Width, Height, Corner)
  DrawPNGAndSVGButtonOrnamentSet(Name+"_up", "Up", Color, Width, Height, Corner)
  DrawPNGAndSVGButtonOrnamentSet(Name+"_down", "Down", Color, Width, Height, Corner)
  DrawPNGAndSVGButtonOrnamentSet(Name+"_x", "X", Color, Width, Height, Corner)
  DrawPNGAndSVGButtonOrnamentSet(Name+"_c", "C", Color, Width, Height, Corner)
  DrawPNGAndSVGButtonOrnamentSet(Name+"_o", "O", Color, Width, Height, Corner)
  DrawPNGAndSVGButtonOrnamentSet(Name+"_tri", "Tri", Color, Width, Height, Corner)
EndMacro

Macro BodyShape()
  
  MovePathCursor(800, 60)
  AddPathCircle(300, 300, 300, 275, 45, #PB_Path_CounterClockwise|#PB_Path_Connected)
  AddPathCurve(560, 463, 631, 438, 672, 428)
  AddPathCurve(730, 418, 730, 423, 800, 398)
  ClosePath()
EndMacro

Macro BodyLines()
  SaveVectorState()
  TranslateCoordinates(0, 20)
  MovePathCursor(800, 60)
  RestoreVectorState()
  
  SaveVectorState()
  TranslateCoordinates(20, 20)
  ScaleCoordinates(0.933, 0.933)
  AddPathCircle(300, 300, 300, 275, 45, #PB_Path_CounterClockwise|#PB_Path_Connected)
  RestoreVectorState()
  
  SaveVectorState()
  TranslateCoordinates(0, -20)
  
  AddPathCurve(560, 463, 631, 438, 672, 428)
  AddPathCurve(730, 418, 730, 423, 800, 398)
  
  AddPathLine(810, 398)
  AddPathLine(810, 60)
  RestoreVectorState()
EndMacro

Procedure AddKernedPathText(x.d, y.d, Text.s)
  MovePathCursor(x-(VectorTextWidth(Text)-Int(VectorTextWidth(Text)))/8.0, y-0.5)
  SaveVectorState()
  ScaleCoordinates(1.0, 1.1)
  AddPathText(Text)
  RestoreVectorState()
EndProcedure

Macro RenderBody()
    ;begin
  ;base body
  BodyShape()
  VectorSourceColor(RGBA(182, 184, 170, 255))
  FillPath()
  
  ;lines
  SaveVectorState()
  TranslateCoordinates(-0.5, 0.5)
  ;line1
  SaveVectorState()
  AddPathBox(0+1, 0+1, 226-2, 151-2)
  ClipPath()
  BodyLines()
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  SaveVectorState()
  AddPathBox(0, 0, 226, 151)
  ClipPath()
  BodyLines()
  ClipPath()
  AddPathBox(0+1, 0+1, 226-2, 151-2)
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  ;line2
  SaveVectorState()
  AddPathBox(0+1, 154+1, 226-2, 97-2)
  ClipPath()
  BodyLines()
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  SaveVectorState()
  AddPathBox(0, 154, 226, 97)
  ClipPath()
  
  BodyLines()
  ClipPath()
  AddPathBox(0+1, 154+1, 226-2, 97-2)
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  MovePathCursor(76, 172)
  AddPathLine(0, -8, #PB_Path_Relative)
  AddPathLine(23, 0, #PB_Path_Relative)
  
  MovePathCursor(161, 172)
  AddPathLine(0, -8, #PB_Path_Relative)
  AddPathLine(-23, 0, #PB_Path_Relative)
  
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  
  ;line3
  SaveVectorState()
  AddPathBox(0+1, 254+1, 226-2, 127-2)
  ClipPath()
  BodyLines()
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  SaveVectorState()
  AddPathBox(0, 254, 226, 127)
  ClipPath()
  
  BodyLines()
  ClipPath()
  AddPathBox(0+1, 254+1, 226-2, 127-2)
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  ;line4
  SaveVectorState()
  AddPathBox(0+1, 384+1, 226-2, 215-2)
  ClipPath()
  BodyLines()
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  SaveVectorState()
  AddPathBox(0, 384, 226, 215)
  ClipPath()
  
  BodyLines()
  ClipPath()
  AddPathBox(0+1, 384+1, 226-2, 215-2)
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  MovePathCursor(152, 417)
  AddPathLine(0, -8, #PB_Path_Relative)
  AddPathLine(66, 0, #PB_Path_Relative)
  AddPathLine(0, 8, #PB_Path_Relative)
  
  MovePathCursor(152, 454)
  AddPathLine(0, 8, #PB_Path_Relative)
  AddPathLine(66, 0, #PB_Path_Relative)
  AddPathLine(0, -8, #PB_Path_Relative)
  
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  
  ;line5
  SaveVectorState()
  AddPathBox(229+1, 0+1, 441-2, 600-2)
  ClipPath()
  BodyLines()
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  SaveVectorState()
  AddPathBox(229, 0, 441, 600)
  ClipPath()
  
  BodyLines()
  ClipPath()
  AddPathBox(229+1, 0+1, 441-2, 600-2)
  
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  
  AddPathBox(230, 0, 439, 600)
  ClipPath()
  
  MovePathCursor(229, 216)
  AddPathLine(19, 0, #PB_Path_Relative)
  AddPathLine(52, 147, #PB_Path_Relative)
  AddPathLine(-71, 0, #PB_Path_Relative)
  
  For i = 0 To 11
    MovePathCursor(255+i*31, 216)
    AddPathLine(24, 0, #PB_Path_Relative)
    AddPathLine(52, 147, #PB_Path_Relative)
    AddPathLine(-24, 0, #PB_Path_Relative)
    ClosePath()
  Next
  MovePathCursor(255+12*31, 216)
  AddPathLine(43, 0, #PB_Path_Relative)
  AddPathLine(52, 147, #PB_Path_Relative)
  AddPathLine(-43, 0, #PB_Path_Relative)
  ClosePath()
  
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  
  RestoreVectorState()
  
  ;line6
  SaveVectorState()
  AddPathBox(674+1, 0+1, 106-2, 600-2)
  ClipPath()
  BodyLines()
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  SaveVectorState()
  AddPathBox(674, 0, 106, 600)
  ClipPath()
  
  SaveVectorState()
  BodyLines()
  ClipPath()
  AddPathBox(674, 0, 106, 600)
  VectorSourceColor(RGBA(140, 146, 131, 255))
  FillPath()
  RestoreVectorState()
  
  BodyLines()
  ClipPath()
  AddPathBox(674+1, 0+1, 106-2, 600-2)
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  
  ;line7
  SaveVectorState()
  AddPathBox(783+1, 0+1, 20-2, 600-2)
  ClipPath()
  BodyLines()
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  SaveVectorState()
  AddPathBox(783, 0, 20, 600)
  ClipPath()
  
  SaveVectorState()
  BodyLines()
  ClipPath()
  AddPathBox(783, 0, 20, 600)
  VectorSourceColor(RGBA(153, 153, 153, 255))
  FillPath()
  RestoreVectorState()
  
  BodyLines()
  ClipPath()
  AddPathBox(783+1, 0+1, 20-2, 600-2)
  VectorSourceColor(RGBA(137, 138, 127, 255))
  StrokePath(1.0)
  RestoreVectorState()
  ;endlines
  RestoreVectorState()
  
  ;holes
  ;main:led
  SaveVectorState()
  TranslateCoordinates(133, 97)
  AddPathCircle(6/2.0, 6/2.0, 6/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  ;main:power
  SaveVectorState()
  TranslateCoordinates(126, 113)
  Vec_DrawRoundedCornerButton(20, 25, 2, 0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  ;main:volume
  SaveVectorState()
  TranslateCoordinates(169, 95)
  AddPathCircle(43/2.0, 43/2.0, 43/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  ;level:volume:harp
  SaveVectorState()
  TranslateCoordinates(73, 170)
  AddPathCircle(43/2.0, 43/2.0, 43/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  ;level:sustain
  SaveVectorState()
  TranslateCoordinates(121, 170)
  AddPathCircle(43/2.0, 43/2.0, 43/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  ;level:volume_chords
  SaveVectorState()
  TranslateCoordinates(169, 170)
  AddPathCircle(43/2.0, 43/2.0, 43/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  For i = 0 To 5
    SaveVectorState()
    TranslateCoordinates(36+i*32, 274)
    Vec_DrawRoundedCornerButton(20, 25, 2, 0)
    VectorSourceColor(RGBA(51, 51, 51, 255))
    FillPath()
    RestoreVectorState()
  Next
  
  SaveVectorState()
  TranslateCoordinates(84, 329)
  Vec_DrawRoundedCornerButton(20, 25, 2, 0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  ;rhythm:tempo
  SaveVectorState()
  TranslateCoordinates(121, 318)
  AddPathCircle(43/2.0, 43/2.0, 43/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  ;rhythm:volume
  SaveVectorState()
  TranslateCoordinates(169, 318)
  AddPathCircle(43/2.0, 43/2.0, 43/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  ;memory:led
  SaveVectorState()
  TranslateCoordinates(94, 396)
  AddPathCircle(6/2.0, 6/2.0, 6/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  For i = 0 To 2
    SaveVectorState()
    TranslateCoordinates(126+i*33, 424)
    Vec_DrawRoundedCornerButton(20, 25, 2, 0)
    VectorSourceColor(RGBA(51, 51, 51, 255))
    FillPath()
    RestoreVectorState()
  Next
  
  SaveVectorState()
  TranslateCoordinates(162, 480)
  Vec_DrawRoundedCornerButton(45, 26, 11, 0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  RestoreVectorState()
  
  For i = 0 To 11
    SaveVectorState()
    TranslateCoordinates(271+i*31, 240)
    Vec_DrawRoundedCornerButton(20, 25, 2, 0)
    VectorSourceColor(RGBA(51, 51, 51, 255))
    FillPath()
    RestoreVectorState()
    SaveVectorState()
    TranslateCoordinates(286+i*31, 283)
    Vec_DrawRoundedCornerButton(20, 25, 2, 0)
    VectorSourceColor(RGBA(51, 51, 51, 255))
    FillPath()
    RestoreVectorState()
    SaveVectorState()
    TranslateCoordinates(301+i*31, 326)
    Vec_DrawRoundedCornerButton(20, 25, 2, 0)
    VectorSourceColor(RGBA(51, 51, 51, 255))
    FillPath()
    RestoreVectorState()
  Next
  
  ;decorations
  ;swirly1
  SaveVectorState()
  TranslateCoordinates(88, 223)
  MovePathCursor(0, 3.5)
  AddPathLine(3, 0, #PB_Path_Relative)
  AddPathCircle(3.5, 0, 3, 30, 330, #PB_Path_Relative)
  VectorSourceColor(RGBA(34, 34, 34, 255))
  StrokePath(1.0)
  MovePathCursor(3, 3.5)
  AddPathCircle(3.5, 0, 1.5, 0, 360, #PB_Path_Relative)
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  MovePathCursor(6.5, 3.5)
  AddPathLine(5.5, 0, #PB_Path_Relative)
  VectorSourceColor(RGBA(34, 34, 34, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  ;swirly2
  SaveVectorState()
  TranslateCoordinates(170, 160)
  MovePathCursor(8, 0)
  AddPathCircle(3.5, 3.5, 3, 315, 75, #PB_Path_Connected|#PB_Path_CounterClockwise)
  VectorSourceColor(RGBA(34, 34, 34, 255))
  StrokePath(1.0)
  AddPathCircle(3.5, 3.5, 1.5, 0, 360)
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  MovePathCursor(3.5, 3.5)
  AddPathLine(8, 6)
  VectorSourceColor(RGBA(34, 34, 34, 255))
  StrokePath(1.0)
  
  RestoreVectorState()
  
  ;buttonupdown
  SaveVectorState()
  TranslateCoordinates(41, 261)
  MovePathCursor(2, 0)
  AddPathLine(6, 0, #PB_Path_Relative)
  AddPathLine(0, 5, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(-0.5, 1, #PB_Path_Relative)
  AddPathLine(-9, 0, #PB_Path_Relative)
  AddPathLine(-0.5, -1, #PB_Path_Relative)
  AddPathLine(0, -1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  ClosePath()
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  RestoreVectorState()
  
  SaveVectorState()
  TranslateCoordinates(41, 307)
  MovePathCursor(2, 0)
  AddPathLine(6, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(-0.5, 1, #PB_Path_Relative)
  AddPathLine(-9, 0, #PB_Path_Relative)
  AddPathLine(-0.5, -1, #PB_Path_Relative)
  AddPathLine(0, -1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  ClosePath()
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  RestoreVectorState()
  
  SaveVectorState()
  TranslateCoordinates(70, 314)
  MovePathCursor(2, 0)
  AddPathLine(6, 0, #PB_Path_Relative)
  AddPathLine(0, 5, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(-0.5, 1, #PB_Path_Relative)
  AddPathLine(-9, 0, #PB_Path_Relative)
  AddPathLine(-0.5, -1, #PB_Path_Relative)
  AddPathLine(0, -1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  ClosePath()
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  RestoreVectorState()
  
  SaveVectorState()
  TranslateCoordinates(70, 363)
  MovePathCursor(2, 0)
  AddPathLine(6, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(-0.5, 1, #PB_Path_Relative)
  AddPathLine(-9, 0, #PB_Path_Relative)
  AddPathLine(-0.5, -1, #PB_Path_Relative)
  AddPathLine(0, -1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  ClosePath()
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  RestoreVectorState()
  
  SaveVectorState()
  TranslateCoordinates(112, 411)
  MovePathCursor(2, 0)
  AddPathLine(6, 0, #PB_Path_Relative)
  AddPathLine(0, 5, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(-0.5, 1, #PB_Path_Relative)
  AddPathLine(-9, 0, #PB_Path_Relative)
  AddPathLine(-0.5, -1, #PB_Path_Relative)
  AddPathLine(0, -1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  ClosePath()
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  RestoreVectorState()
  
  SaveVectorState()
  TranslateCoordinates(112, 457)
  MovePathCursor(2, 0)
  AddPathLine(6, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  AddPathLine(0, 1, #PB_Path_Relative)
  AddPathLine(-0.5, 1, #PB_Path_Relative)
  AddPathLine(-9, 0, #PB_Path_Relative)
  AddPathLine(-0.5, -1, #PB_Path_Relative)
  AddPathLine(0, -1, #PB_Path_Relative)
  AddPathLine(2, 0, #PB_Path_Relative)
  ClosePath()
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  RestoreVectorState()
  
  ;enddecoration
  
  ;strumplate
  SaveVectorState()
  TranslateCoordinates(687, 92)
  For i = 0 To 98
    AddPathBox(0, i*3, 39, 2)
  Next
  RestoreVectorState()
  SaveVectorState()
  TranslateCoordinates(752, 131)
  For i = 0 To 6
    AddPathBox(0, i*3, 21, 2)
  Next
  RestoreVectorState()
  VectorSourceColor(RGBA(220, 228, 212, 255))
  FillPath()
  
  ;strumplate decoration
  SaveVectorState()
  TranslateCoordinates(678, 92)
  MovePathCursor(0, 0)
  AddPathLine(4, 0, #PB_Path_Relative)
  AddPathLine(-2, 1.5, #PB_Path_Relative)
  
  AddPathLine(0, 5, #PB_Path_Relative)
  
  AddPathLine(2, 1.5, #PB_Path_Relative)
  AddPathLine(-4, 0, #PB_Path_Relative)
  ClosePath()
  VectorSourceColor(RGBA(148, 0, 1, 255))
  FillPath()
  
  MovePathCursor(3, 3)
  AddPathLine(2.5, 0.5, #PB_Path_Relative)
  AddPathLine(1, 0.5, #PB_Path_Relative)
  AddPathLine(-1, 0.5, #PB_Path_Relative)
  AddPathLine(-2.5, 0.5, #PB_Path_Relative)
  ClosePath()
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  
  RestoreVectorState()
  ;long strumplate decoration
  SaveVectorState()
  TranslateCoordinates(678, 101)
  For n = 0 To 3
    For i = 0 To 2
      MovePathCursor(0, 0+24*i+24*3*n)
      AddPathLine(4, 0, #PB_Path_Relative)
      AddPathLine(-2, 1.5, #PB_Path_Relative)
      
      AddPathLine(0, 20, #PB_Path_Relative)
      
      AddPathLine(2, 1.5, #PB_Path_Relative)
      AddPathLine(-4, 0, #PB_Path_Relative)
      ClosePath()
      VectorSourceColor(RGBA(148, 0, 1, 255))
      FillPath()
    Next
    MovePathCursor(3, 66+24*3*n)
    AddPathLine(2.5, 0.5, #PB_Path_Relative)
    AddPathLine(1, 0.5, #PB_Path_Relative)
    AddPathLine(-1, 0.5, #PB_Path_Relative)
    AddPathLine(-2.5, 0.5, #PB_Path_Relative)
    ClosePath()
    VectorSourceColor(RGBA(34, 34, 34, 255))
    FillPath()
  Next
  
  RestoreVectorState()
  
  ;text
  SaveVectorState()
  LoadFont(0, "Liberation Sans", 30, #PB_Font_Bold)
  LoadFont(1, "Liberation Sans Narrow", 30, #PB_Font_Bold)
  LoadFont(2, "Liberation Sans", 30)
  
  VectorFont(FontID(0), 6)
  AddPathBox(157, 82, 57, 1.1)
  AddKernedPathText(157, 83.3, "MASTER CONTROL")
  AddPathBox(157, 90, 57, 1.1)
  
  AddKernedPathText(126, 232.3, "LEVEL      MODE   SELECTION")
  MovePathCursor(126, 231)
  AddPathLine(28, 0, #PB_Path_Relative)
  AddPathLine(-1, 1.1, #PB_Path_Relative)
  AddPathLine(-27, 0, #PB_Path_Relative)
  ClosePath()
  
  MovePathCursor(126, 239)
  AddPathLine(18.3, 0, #PB_Path_Relative)
  AddPathLine(-1, 1.1, #PB_Path_Relative)
  AddPathLine(-17.3, 0, #PB_Path_Relative)
  ClosePath()
  
  MovePathCursor(155, 231)
  AddPathLine(1.5, 0, #PB_Path_Relative)
  AddPathLine(-11, 9, #PB_Path_Relative)
  AddPathLine(-1.5, 0, #PB_Path_Relative)
  ClosePath()
  
  
  MovePathCursor(155.8+0.5+1, 231)
  AddPathLine(55.2, 0, #PB_Path_Relative)
  AddPathLine(0, 1.1, #PB_Path_Relative)
  AddPathLine(-56.2, 0, #PB_Path_Relative)
  ClosePath()
  
  MovePathCursor(146+0.5+1, 239)
  AddPathLine(65, 0, #PB_Path_Relative)
  AddPathLine(0, 1.1, #PB_Path_Relative)
  AddPathLine(-66, 0, #PB_Path_Relative)
  ClosePath()
  
  
  AddPathBox(42, 333, 26, 1.1)
  AddKernedPathText(42, 334.3, "RHYTHM")
  AddPathBox(42, 341, 26, 1.1)
  
  AddPathBox(109, 393, 87, 1.1)
  AddKernedPathText(109, 394.3, "CHORD MEMORY INTERFACE")
  AddPathBox(109, 401, 87, 1.1)
  
  
  VectorFont(FontID(0), 5)
  AddKernedPathText(103, 162.3, "SonicStrings")
  AddKernedPathText(82, 315.3, "chord only")
  AddKernedPathText(82, 359.3, "auto")
  AddKernedPathText(82, 366.3, "bass sync")
  
  
  VectorFont(FontID(2), 5)
  AddKernedPathText(239, 254.3, "MAJOR")
  AddKernedPathText(255, 297.3, "MINOR")
  AddKernedPathText(281, 340.3, "7th")
  
  AddKernedPathText(267, 222.3, "Db")
  AddKernedPathText(298, 222.3, "Ab")
  AddKernedPathText(329, 222.3, "Eb")
  AddKernedPathText(360, 222.3, "Bb")
  AddKernedPathText(392, 222.3, "F")
  AddKernedPathText(423, 222.3, "C")
  AddKernedPathText(454, 222.3, "G")
  AddKernedPathText(485, 222.3, "D")
  AddKernedPathText(516, 222.3, "A")
  AddKernedPathText(547, 222.3, "E")
  AddKernedPathText(578, 222.3, "B")
  AddKernedPathText(608, 222.3, "F#")
  
  
  VectorFont(FontID(1), 4.3)
  AddKernedPathText(131, 143, "power")
  
  AddKernedPathText(185, 143, "volume")
  
  
  AddKernedPathText(90, 218, "voice")
  AddKernedPathText(85, 225, "1")
  AddKernedPathText(102, 225, "2")
  AddKernedPathText(88, 232, "volume")
  
  AddKernedPathText(137, 218, "sustain")
  
  
  
  AddKernedPathText(180, 158, "keyboard")
  AddKernedPathText(180, 164, "chords")
  
  AddKernedPathText(185, 218, "volume")
  
  
  AddKernedPathText(73, 264, "rock 1")
  AddKernedPathText(105, 264, "rock 2")
  AddKernedPathText(137, 264, "disco")
  AddKernedPathText(170, 264, "latin")
  AddKernedPathText(200, 264, "country")
  
  AddKernedPathText(73, 306, "march")
  AddKernedPathText(106, 306, "tango")
  AddKernedPathText(138, 306, "blues")
  AddKernedPathText(170, 306, "swing")
  AddKernedPathText(202, 306, "waltz")
  
  AddKernedPathText(137, 366, "tempo")
  AddKernedPathText(185, 366, "volume")
  
  AddKernedPathText(133, 414, "off")
  AddKernedPathText(161, 414, "playback")
  AddKernedPathText(196, 414, "repeat")
  
  AddKernedPathText(133, 456, "on")
  AddKernedPathText(163, 456, "record")
  AddKernedPathText(197, 456, "delete")
  
  AddKernedPathText(177, 471, "playback")
  AddKernedPathText(181, 513, "enter")
  
  VectorSourceColor(RGBA(34, 34, 34, 255))
  FillPath()
  RestoreVectorState()
  ;logo
  SaveVectorState()
  TranslateCoordinates(289, 99)
  
  ;c
  MovePathCursor(0, 0)
  AddPathCircle(20, 40, 20, 35, 325)
  
  ;h
  TranslateCoordinates(50, 0)
  MovePathCursor(0, 0)
  AddPathLine(0, 60)
  AddPathCircle(20, 40, 20, 180, 0, #PB_Path_Connected)
  AddPathLine(40, 60)
  
  ;o
  TranslateCoordinates(50, 0)
  MovePathCursor(0, 0)
  AddPathCircle(20, 40, 20)
  
  ;r
  TranslateCoordinates(50, 0)
  MovePathCursor(0, 20)
  AddPathLine(0, 60)
  AddPathCircle(20, 40, 20, 180, 240, #PB_Path_Connected)
  
  ;d
  TranslateCoordinates(10, 0)
  MovePathCursor(0, 0)
  AddPathCircle(20, 40, 20)
  MovePathCursor(40, 0)
  AddPathLine(40, 60)
  
  ;i
  TranslateCoordinates(50, 0)
  MovePathCursor(0, 0)
  AddPathLine(0, 10)
  MovePathCursor(0, 20)
  AddPathLine(0, 60)
  
  
  ;a
  TranslateCoordinates(10, 0)
  MovePathCursor(0, 0)
  AddPathCircle(20, 40, 20)
  MovePathCursor(40, 40)
  AddPathLine(40, 60)
  
  ;n
  TranslateCoordinates(50, 0)
  MovePathCursor(0, 20)
  AddPathLine(0, 60)
  AddPathCircle(20, 40, 20, 180, 0, #PB_Path_Connected)
  AddPathLine(40, 60)
  
  
  VectorSourceColor(RGBA(34, 34, 34, 255))
  StrokePath(1.0)
  RestoreVectorState()
  
  ;stop
  
EndMacro

;--start
UsePNGImageEncoder()

CreateButtonSet("button_black", RGBA(34, 34, 34, 255), 20, 25)
CreateButtonSet("button_dark", RGBA(98, 103, 97, 255), 20, 25)
CreateButtonSet("button_light", RGBA(152, 153, 140, 255), 20, 25)
CreateButtonSet("button_blue", RGBA(16, 204, 224, 255), 20, 25)
CreateButtonSet("button_red", RGBA(224, 32, 32, 255), 20, 25)
CreateButtonSet("button_wide_black", RGBA(34, 34, 34, 255), 45, 26, 10)
CreateButtonSet("button_wide_red", RGBA(224, 32, 32, 255), 45, 26, 10)

DrawPNGAndSVGButtonHole("button", 20, 25, 2)
DrawPNGAndSVGButtonHole("button_wide", 45, 26, 11)

If StartVectorDrawing(SvgVectorOutput("knob_hole.svg", 43, 43, #PB_Unit_Pixel))
  AddPathCircle(43/2.0, 43/2.0, 43/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  StopVectorDrawing()
EndIf
CreateImage(0, 43*#EXPORTSCALE, 43*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
If StartDrawing(ImageOutput(0))
  DrawingMode(#PB_2DDrawing_AlphaChannel)
  Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
  StopDrawing()
EndIf
If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
  ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
  AddPathCircle(43/2.0, 43/2.0, 43/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  StopVectorDrawing()
  ResizeImage(0, 43, 43)
  SaveImage(0, "knob_hole.png", #PB_ImagePlugin_PNG, 0, 32)
EndIf

If StartVectorDrawing(SvgVectorOutput("knob_big.svg", 43, 43, #PB_Unit_Pixel))
  AddPathCircle(43/2.0, 43/2.0, 42/2.0)
  VectorSourceColor(RGBA(57, 59, 54, 255))
  FillPath()
  StopVectorDrawing()
EndIf
CreateImage(0, 43*#EXPORTSCALE, 43*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
If StartDrawing(ImageOutput(0))
  DrawingMode(#PB_2DDrawing_AlphaChannel)
  Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
  StopDrawing()
EndIf
If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
  ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
  AddPathCircle(43/2.0, 43/2.0, 42/2.0)
  VectorSourceColor(RGBA(57, 59, 54, 255))
  FillPath()
  StopVectorDrawing()
  ResizeImage(0, 43, 43)
  SaveImage(0, "knob_big.png", #PB_ImagePlugin_PNG, 0, 32)
EndIf

If StartVectorDrawing(SvgVectorOutput("knob_small.svg", 27, 27, #PB_Unit_Pixel))
  AddPathCircle(27/2.0, 27/2.0, 26/2.0)
  VectorSourceColor(RGBA(101, 103, 102, 255))
  FillPath()
  StopVectorDrawing()
EndIf
CreateImage(0, 27*#EXPORTSCALE, 27*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
If StartDrawing(ImageOutput(0))
  DrawingMode(#PB_2DDrawing_AlphaChannel)
  Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
  StopDrawing()
EndIf
If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
  ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
  AddPathCircle(27/2.0, 27/2.0, 26/2.0)
  VectorSourceColor(RGBA(101, 103, 102, 255))
  FillPath()
  StopVectorDrawing()
  ResizeImage(0, 27, 27)
  SaveImage(0, "knob_small.png", #PB_ImagePlugin_PNG, 0, 32)
EndIf

If StartVectorDrawing(SvgVectorOutput("knob_ring.svg", 43, 43, #PB_Unit_Pixel))
  AddPathCircle(43/2.0, 43/2.0, 42/2.0)
  AddPathCircle(43/2.0, 43/2.0, 25/2.0)
  VectorSourceColor(RGBA(57, 59, 54, 255))
  FillPath()
  StopVectorDrawing()
EndIf
CreateImage(0, 43*#EXPORTSCALE, 43*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
If StartDrawing(ImageOutput(0))
  DrawingMode(#PB_2DDrawing_AlphaChannel)
  Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
  StopDrawing()
EndIf
If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
  ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
  AddPathCircle(43/2.0, 43/2.0, 42/2.0)
  AddPathCircle(43/2.0, 43/2.0, 25/2.0)
  VectorSourceColor(RGBA(57, 59, 54, 255))
  FillPath()
  StopVectorDrawing()
  ResizeImage(0, 43, 43)
  SaveImage(0, "knob_ring.png", #PB_ImagePlugin_PNG, 0, 32)
EndIf

If StartVectorDrawing(SvgVectorOutput("led_on.svg", 6, 6, #PB_Unit_Pixel))
  AddPathCircle(6/2.0, 6/2.0, 5/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  AddPathCircle(6/2.0, 6/2.0, 4/2.0)
  VectorSourceColor(RGBA(255, 0, 0, 255))
  FillPath()
  StopVectorDrawing()
EndIf
CreateImage(0, 6*#EXPORTSCALE, 6*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
If StartDrawing(ImageOutput(0))
  DrawingMode(#PB_2DDrawing_AlphaChannel)
  Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
  StopDrawing()
EndIf
If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
  ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
  AddPathCircle(6/2.0, 6/2.0, 5/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  AddPathCircle(6/2.0, 6/2.0, 4/2.0)
  VectorSourceColor(RGBA(255, 0, 0, 255))
  FillPath()
  StopVectorDrawing()
  ResizeImage(0, 6, 6)
  SaveImage(0, "led_on.png", #PB_ImagePlugin_PNG, 0, 32)
EndIf

If StartVectorDrawing(SvgVectorOutput("led_off.svg", 6, 6, #PB_Unit_Pixel))
  AddPathCircle(6/2.0, 6/2.0, 5/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  AddPathCircle(6/2.0, 6/2.0, 4/2.0)
  VectorSourceColor(RGBA(48, 16, 16, 255))
  FillPath()
  StopVectorDrawing()
EndIf
CreateImage(0, 6*#EXPORTSCALE, 6*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
If StartDrawing(ImageOutput(0))
  DrawingMode(#PB_2DDrawing_AlphaChannel)
  Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
  StopDrawing()
EndIf
If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
  ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
  AddPathCircle(6/2.0, 6/2.0, 5/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  AddPathCircle(6/2.0, 6/2.0, 4/2.0)
  VectorSourceColor(RGBA(48, 16, 16, 255))
  FillPath()
  StopVectorDrawing()
  ResizeImage(0, 6, 6)
  SaveImage(0, "led_off.png", #PB_ImagePlugin_PNG, 0, 32)
EndIf


If StartVectorDrawing(SvgVectorOutput("led_hole.svg", 6, 6, #PB_Unit_Pixel))
  AddPathCircle(6/2.0, 6/2.0, 6/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  StopVectorDrawing()
EndIf
CreateImage(0, 6*#EXPORTSCALE, 6*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
If StartDrawing(ImageOutput(0))
  DrawingMode(#PB_2DDrawing_AlphaChannel)
  Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
  StopDrawing()
EndIf
If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
  ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)
  AddPathCircle(6/2.0, 6/2.0, 6/2.0)
  VectorSourceColor(RGBA(51, 51, 51, 255))
  FillPath()
  StopVectorDrawing()
  ResizeImage(0, 6, 6)
  SaveImage(0, "led_hole.png", #PB_ImagePlugin_PNG, 0, 32)
EndIf

If StartVectorDrawing(SvgVectorOutput("base.svg", 800, 600, #PB_Unit_Pixel))
  
  RenderBody()
  
  StopVectorDrawing()
EndIf
CreateImage(0, 800*#EXPORTSCALE, 600*#EXPORTSCALE, 32, TRANSPARENTCOLOR)
If StartDrawing(ImageOutput(0))
  DrawingMode(#PB_2DDrawing_AlphaChannel)
  Box(0, 0, OutputWidth(), OutputHeight(), RGBA(0, 0, 0, 0))
  StopDrawing()
EndIf
If StartVectorDrawing(ImageVectorOutput(0, #PB_Unit_Pixel))
  ScaleCoordinates(#EXPORTSCALE, #EXPORTSCALE)

  
  RenderBody()
  
  StopVectorDrawing()
  ResizeImage(0, 800, 600)
  SaveImage(0, "base.png", #PB_ImagePlugin_PNG, 0, 32)
EndIf