Procedure.i IsInRect(XValue.i, YValue.i, X1.i, Y1.i, X2.i, Y2.i)
  ProcedureReturn Bool((XValue-X1)*(X2-XValue) >= 0)*Bool((YValue-Y1)*(Y2-YValue) >= 0)
EndProcedure

Procedure.i SoundVolumeFloat(SoundID.i, Volume.f)
  ;Adapted from:
  ; 2006 Hroudtwolf
  ; PureBasic-Lounge.de
  ; PlayDXSound
  
  Protected *SoundObject
  Protected *DirectSoundBuffer.IDirectSoundBuffer
  *SoundObject = IsSound(SoundID.i)
  
  If *SoundObject
    *DirectSoundBuffer = PeekI(*SoundObject)
    *DirectSoundBuffer\SetVolume(-10000+(Pow(Volume, 0.125)*Pow(1000, 0.25)*1000))
  EndIf 
  
EndProcedure 

