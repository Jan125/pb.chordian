Global Dim glTexImg.i(255)

Procedure.i ImagePointer(Image)
  Protected bmp.BITMAP
  GetObject_(ImageID(Image), SizeOf(BITMAP), @bmp)
  ProcedureReturn bmp\bmBits
EndProcedure

Procedure.i OpenGLLoadImage(Image.i, FileName$)
  If Image = #PB_Any
    ProcedureReturn 0
  EndIf
  
  If LoadImage(Image, FileName$)
    glGenTextures_(1, @glTexImg(Image))
    glBindTexture_(#GL_TEXTURE_2D, glTexImg(Image))
    glTexParameteri_(#GL_TEXTURE_2D, #GL_TEXTURE_MAG_FILTER, #GL_LINEAR)
    glTexParameteri_(#GL_TEXTURE_2D, #GL_TEXTURE_MIN_FILTER, #GL_LINEAR)
    glTexImage2D_(#GL_TEXTURE_2D, 0, #GL_RGBA, ImageWidth(Image), ImageHeight(Image), 0, #GL_BGRA_EXT, #GL_UNSIGNED_BYTE, ImagePointer(Image))
    ProcedureReturn 1
  EndIf
  ProcedureReturn 0
EndProcedure

Procedure.i OpenGLCatchImage(Image.i, *MemoryAddress)
  If Image = #PB_Any
    ProcedureReturn 0
  EndIf
  
  If CatchImage(Image, *MemoryAddress)
    glGenTextures_(1, @glTexImg(Image))
    glBindTexture_(#GL_TEXTURE_2D, glTexImg(Image))
    glTexParameteri_(#GL_TEXTURE_2D, #GL_TEXTURE_MAG_FILTER, #GL_LINEAR)
    glTexParameteri_(#GL_TEXTURE_2D, #GL_TEXTURE_MIN_FILTER, #GL_LINEAR)
    glTexImage2D_(#GL_TEXTURE_2D, 0, #GL_RGBA, ImageWidth(Image), ImageHeight(Image), 0, #GL_BGRA_EXT, #GL_UNSIGNED_BYTE, ImagePointer(Image))
    ProcedureReturn 1
  EndIf
  ProcedureReturn 0
EndProcedure

Procedure.i OpenGLFreeImage(Image.i)
  If Image = #PB_Any
    ProcedureReturn 0
  EndIf
  
  FreeImage(Image)
  glDeleteTextures_(1, glTexImg(Image))
  glTexImg(Image) = 0
  ProcedureReturn 1
EndProcedure

Procedure.i OpenGLDrawImage(Image.i, X.i, Y.i)
  glBindTexture_(#GL_TEXTURE_2D, glTexImg(Image))
  
  glPushMatrix_()
  glTranslatef_(X, Y, 0)
  
  glBegin_(#GL_TRIANGLE_FAN)
  
  glTexCoord2i_(0, 1)
  glVertex2i_(0, 0)
  
  glTexCoord2i_(0, 0)
  glVertex2i_(0, ImageHeight(Image) >> 1)
  
  glTexCoord2i_(1, 0)
  glVertex2i_(ImageWidth(Image) >> 1, ImageHeight(Image) >> 1)
  
  glTexCoord2i_(1, 1)
  glVertex2i_(ImageWidth(Image) >> 1, 0)
  
  glPopMatrix_()
  glEnd_()
  
EndProcedure

Procedure.i IsInRect(XValue.i, YValue.i, X1.i, Y1.i, X2.i, Y2.i)
  ProcedureReturn Bool((XValue - X1) * (X2 - XValue) >= 0) * Bool((YValue - Y1) * (Y2 - YValue) >= 0)
EndProcedure

Procedure.f LinearInterpolation(Value1.f, Value2.f, Fraction.f)
  ProcedureReturn Value1 * (1.0 - Fraction) + Value2 * Fraction
EndProcedure

Macro GetLinearInterpolatedSample(Memory, Position, Length, Size)
  LinearInterpolation(PeekF(Memory + ((Int(Position) + Length) % Length) * Size), PeekF(Memory + ((Int(Position) + Length + 1) % Length) * Size), Position - Int(Position))
EndMacro

Macro GetNearestSample(Memory, Position, Length, Size)
  PeekF(Memory + ((Int(Position) + Length) % Length) * Size)
EndMacro

Macro KeepInRange(Value, Min, Max)
  If Value > Max
    Value = Max
  ElseIf Value < Min
    Value = Min
  EndIf
EndMacro

Macro RollInRange(Value, Min, Max)
  If Min = Max
    Value = Min
  Else
    While (Value - Min) > (Max - Min)
      Value - ((Max - Min) + 1)
    Wend
    While (Value-Min) < 0
      Value + ((Max - Min) + 1)
    Wend
  EndIf
EndMacro

Macro LocalCatchImage(ImgID, ImgAddress, ImgFile)
  If Not FileSize(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ImgFile) >= 0 Or Not LoadImage(ImgID, GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ImgFile)
    CatchImage(ImgID, ImgAddress)
  EndIf
EndMacro

<<<<<<< Updated upstream
Macro KnobLine(X, Y, SizeX, SizeY, Value)
  LineXY(X, Y, X + Sin(Radian(-Value * 270 - 45)) * (SizeX - 1), Y + Cos(Radian(-Value * 270 - 45)) * (SizeY - 1))
=======
Macro LocalCatchGLImage(ImgID, ImgAddress, ImgFile)
  If Not FileSize(GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ImgFile) >= 0 Or Not OpenGLLoadImage(ImgID, GetFilePart(ProgramFilename(), #PB_FileSystem_NoExtension) + ImgFile)
    OpenGLCatchImage(ImgID, ImgAddress)
  EndIf
EndMacro

Macro KnobLine(X, Y, Size, Value)
  SaveVectorState()
  TranslateCoordinates(X, Y)
  RotateCoordinates(0.0, 0.0, Value * 270.0 - 135.0)
  MovePathCursor(0.0, 0.0)
  AddPathLine(0.5, -0.5)
  AddPathLine(0.5, -Size)
  AddPathLine(-0.5, -Size)
  AddPathLine(-0.5, -0.5)
  ClosePath()
  VectorSourceColor($FFFFFFFF)
  FillPath()
  RestoreVectorState()
>>>>>>> Stashed changes
EndMacro
