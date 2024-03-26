Procedure.i IsInRect(XValue.i, YValue.i, X1.i, Y1.i, X2.i, Y2.i)
  ProcedureReturn Bool((XValue-X1)*(X2-XValue) >= 0)*Bool((YValue-Y1)*(Y2-YValue) >= 0)
EndProcedure

Procedure.f LinearInterpolation(Value1.f, Value2.f, Fraction.f)
  ProcedureReturn Value1*(1.0-Fraction)+Value2*Fraction
EndProcedure

Procedure.f CubicInterpolation(Value1.f, Value2.f, Fraction.f)
  ProcedureReturn Value1*(1.0-Fraction)+Value2*Fraction
EndProcedure

Macro KeepInRange(Value, Min, Max)
  If Value > Max
    Value = Max
  ElseIf Value < Min
    Value = Min
  EndIf
EndMacro

