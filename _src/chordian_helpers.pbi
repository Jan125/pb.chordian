﻿Procedure.i IsInRect(XValue.i, YValue.i, X1.i, Y1.i, X2.i, Y2.i)
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

Macro KnobLine(X, Y, SizeX, SizeY, Value)
  LineXY(X, Y, X + Sin(Radian(-Value * 270 - 45)) * (SizeX - 1), Y + Cos(Radian(-Value * 270 - 45)) * (SizeY - 1))
EndMacro
