Enumeration DSCAPS_MASK
  #DSCAPS_PRIMARYMONO               = $00000001
  #DSCAPS_PRIMARYSTEREO             = $00000002
  #DSCAPS_PRIMARY8BIT               = $00000004
  #DSCAPS_PRIMARY16BIT              = $00000008
  #DSCAPS_CONTINUOUSRATE            = $00000010
  #DSCAPS_EMULDRIVER                = $00000020
  #DSCAPS_CERTIFIED                 = $00000040
  #DSCAPS_SECONDARYMONO             = $00000100
  #DSCAPS_SECONDARYSTEREO           = $00000200
  #DSCAPS_SECONDARY8BIT             = $00000400
  #DSCAPS_SECONDARY16BIT            = $00000800
EndEnumeration

Enumeration DSBPLAY_MASK
  #DSBPLAY_LOOPING                  = $00000001
  #DSBPLAY_LOCHARDWARE              = $00000002
  #DSBPLAY_LOCSOFTWARE              = $00000004
  #DSBPLAY_TERMINATEBY_TIME         = $00000008
  #DSBPLAY_TERMINATEBY_DISTANCE     = $000000010
  #DSBPLAY_TERMINATEBY_PRIORITY     = $000000020
EndEnumeration

Enumeration DSBSTATUS_MASK
  #DSBSTATUS_PLAYING                = $00000001
  #DSBSTATUS_BUFFERLOST             = $00000002
  #DSBSTATUS_LOOPING                = $00000004
  #DSBSTATUS_LOCHARDWARE            = $00000008
  #DSBSTATUS_LOCSOFTWARE            = $00000010
  #DSBSTATUS_TERMINATED             = $00000020
EndEnumeration

Enumeration DSBLOCK_VALUE
  #DSBLOCK_FROMWRITECURSOR          = $00000001
  #DSBLOCK_ENTIREBUFFER             = $00000002
EndEnumeration

Enumeration DSSCL_VALUE
  #DSSCL_NORMAL                     = $00000001
  #DSSCL_PRIORITY                   = $00000002
  #DSSCL_EXCLUSIVE                  = $00000003
  #DSSCL_WRITEPRIMARY               = $00000004
EndEnumeration

Enumeration DS3DMODE_VALUE
  #DS3DMODE_NORMAL                  = $00000000
  #DS3DMODE_HEADRELATIVE            = $00000001
  #DS3DMODE_DISABLE                 = $00000002
EndEnumeration

Enumeration DSBCAPS_MASK
  #DSBCAPS_PRIMARYBUFFER            = $00000001
  #DSBCAPS_STATIC                   = $00000002
  #DSBCAPS_LOCHARDWARE              = $00000004
  #DSBCAPS_LOCSOFTWARE              = $00000008
  #DSBCAPS_CTRL3D                   = $00000010
  #DSBCAPS_CTRLFREQUENCY            = $00000020
  #DSBCAPS_CTRLPAN                  = $00000040
  #DSBCAPS_CTRLVOLUME               = $00000080
  #DSBCAPS_CTRLPOSITIONNOTIFY       = $00000100
  #DSCBCAPS_CTRLFX                  = $00000200
  #DSBCAPS_CTRLDEFAULT              = $000000E0
  #DSBCAPS_CTRLALL                  = $000001F0
  #DSBCAPS_STICKYFOCUS              = $00004000
  #DSBCAPS_GLOBALFOCUS              = $00008000
  #DSBCAPS_GETCURRENTPOSITION2      = $00010000
  #DSBCAPS_MUTE3DATMAXDISTANCE      = $00020000
  #DSBCAPS_LOCDEFER                 = $00040000
  
  #DSCBCAPS_WAVEMAPPED              = $80000000
EndEnumeration

Enumeration DSSPEAKER_VALUE
  #DSSPEAKER_HEADPHONE              = $00000001
  #DSSPEAKER_MONO                   = $00000002
  #DSSPEAKER_QUAD                   = $00000003
  #DSSPEAKER_STEREO                 = $00000004
  #DSSPEAKER_SURROUND               = $00000005
  
  #DSSPEAKER_GEOMETRY_MIN           = $00000005
  #DSSPEAKER_GEOMETRY_NARROW        = $0000000A
  #DSSPEAKER_GEOMETRY_WIDE          = $00000014
  #DSSPEAKER_GEOMETRY_MAX           = $000000B4
EndEnumeration

Enumeration DSBFREQUENCY_VALUE
  #DSBFREQUENCY_MIN                 =       100
  #DSBFREQUENCY_MAX                 =    100000
  #DSBFREQUENCY_ORIGINAL            =         0
EndEnumeration

Enumeration DSBPAN_VALUE
  #DSBPAN_LEFT                      =    -10000
  #DSBPAN_CENTER                    =         0
  #DSBPAN_RIGHT                     =     10000
EndEnumeration

Enumeration DSBVOLUME_VALUE
  #DSBVOLUME_MIN                    =    -10000
  #DSBVOLUME_MAX                    =         0
EndEnumeration

Enumeration DSBSIZE_VALUE
  #DSBSIZE_MIN                      =         4
  #DSBSIZE_MAX                      = $0FFFFFFF
EndEnumeration

Enumeration DS3D_VALUE
  #DS3D_IMMEDIATE                   = $00000000
  #DS3D_DEFERRED                    = $00000001
EndEnumeration

Enumeration DSCCAPS_MASK
  #DSCCAPS_EMULDRIVER               = $00000020
EndEnumeration

Enumeration DSCBLOCK_MASK
  #DSCBLOCK_ENTIREBUFFER            = $00000001
EndEnumeration

Enumeration DSCBSTATUS_MASK
  #DSCBSTATUS_CAPTURING             = $00000001
  #DSCBSTATUS_LOOPING               = $00000002
EndEnumeration

Enumeration DSCBSTART_MASK
  #DSCBSTART_LOOPING                = $00000001
EndEnumeration

Enumeration DSBPN_VALUE
  #DSBPN_OFFSETSTOP                 = $FFFFFFFF
EndEnumeration

Enumeration DSFX_MASK
  #DSFX_LOCHARDWARE                 = $00000001
  #DSFX_LOCSOFTWARE                 = $00000002
EndEnumeration

Enumeration DSFXR_MASK
  #DSCFXR_LOCHARDWARE               = $00000010
  #DSCFXR_LOCSOFTWARE               = $00000020
  #DSCFXR_UNALLOCATED               = $00000040
  #DSCFXR_FAILED                    = $00000080
  #DSCFXR_UNKNOWN                   = $00000100
EndEnumeration

Structure DSEFFECTDESC Align #PB_Structure_AlignC
  dwSize.l
  dwFlags.l
  guidDSFXClass.GUID
  *lpSendBuffer
  dwReserved.l
EndStructure

Enumeration DSFXR_ENUM
  #DSFXR_PRESENT                    =         0
  #DSFXR_LOCHARDWARE                =         1
  #DSFXR_LOCSOFTWARE                =         2
  #DSFXR_UNALLOCATED                =         3
  #DSFXR_FAILED                     =         4
  #DSFXR_UNKNOWN                    =         5
  #DSFXR_SENDLOOP                   =         6
EndEnumeration

Structure DSCEFFECTDESC Align #PB_Structure_AlignC
  dwSize.l
  dwFlags.l
  guidDSCFXClass.GUID
  guidDSCFXInstance.GUID
  dwReserved1.l
  dwReserved2.l
EndStructure

Structure DSCAPS Align #PB_Structure_AlignC
  dwSize.l
  dwFlags.l
  dwMinSecondarySampleRate.l
  dwMaxSecondarySampleRate.l
  dwPrimaryBuffers.l
  dwMaxHwMixingAllBuffers.l
  dwMaxHwMixingStaticBuffers.l
  dwMaxHwMixingStreamingBuffers.l
  dwFreeHwMixingAllBuffers.l
  dwFreeHwMixingStaticBuffers.l
  dwFreeHwMixingStreamingBuffers.l
  dwMaxHw3DAllBuffers.l
  dwMaxHw3DStaticBuffers.l
  dwMaxHw3DStreamingBuffers.l
  dwFreeHw3DAllBuffers.l
  dwFreeHw3DStaticBuffers.l
  dwFreeHw3DStreamingBuffers.l
  dwTotalHwMemBytes.l
  dwFreeHwMemBytes.l
  dwMaxContigFreeHwMemBytes.l
  dwUnlockTransferRateHwBuffers.l
  dwPlayCpuOverheadSwBuffers.l
  dwReserved1.l
  dwReserved2.l
EndStructure

Structure DSBCAPS Align #PB_Structure_AlignC
  dwSize.l
  dwFlags.l
  dwBufferBytes.l
  dwUnlockTransferRate.l
  dwPlayCpuOverhead.l
EndStructure

Structure DSBUFFERDESC Align #PB_Structure_AlignC
  dwSize.l
  dwFlags.l
  dwBufferBytes.l
  dwReserved.l
  *lpwfxFormat.WAVEFORMATEX
EndStructure

Structure D3DVECTOR Align #PB_Structure_AlignC
  x.f
  y.f
  z.f
EndStructure

Structure DS3DBUFFER Align #PB_Structure_AlignC
  dwSize.l
  vPosition.D3DVECTOR
  vVelocity.D3DVECTOR
  dwInsideConeAngle.l
  dwOutsideConeAngle.l
  vConeOrientation.D3DVECTOR
  lConeOutsideVolume.l
  flMinDistance.f ;Is this a float?
  flMaxDistance.f ;Is this a float?
  dwMode.l
EndStructure

Structure DS3DLISTENER Align #PB_Structure_AlignC
  dwSize.l
  vPosition.D3DVECTOR
  vVelocity.D3DVECTOR
  vOrientFront.D3DVECTOR
  vOrientTop.D3DVECTOR
  flDistanceFactor.f ;Is this a float?
  flRolloffFactor.f  ;Is this a float?
  flDopplerFactor.f  ;Is this a float?
EndStructure

Structure DSCCAPS
  dwSize.l
  dwFlags.l
  dwFormats.l
  dwChannels.l
EndStructure

Structure DSCBUFFERDESC Align #PB_Structure_AlignC
  dwSize.l
  dwFlags.l
  dwBufferBytes.l
  dwReserved.l
  *lpwfxFormat.WAVEFORMATEX
  dwFXCount.l
  *lpDSCFXDesc.DSCEFFECTDESC
EndStructure

Structure DSCBCAPS Align #PB_Structure_AlignC
  dwSize.l
  dwFlags.l
  dwBufferBytes.l
  dwReserved.l
EndStructure

Structure DSBPOSITIONNOTIFY Align #PB_Structure_AlignC
  dwOffset.l
  *hEventNotify
EndStructure

Enumeration DSRESULT_VALUE
  ;
  ; Return Codes
  ;
  #DS_OK                            = $00000000
  
  ; The call failed because resources (such As a priority level)
  ; were already being used by another caller.
  #DSERR_ALLOCATED                  = $8878000A
  
  ; The control (vol,pan,etc.) requested by the caller is Not available.
  #DSERR_CONTROLUNAVAIL             = $8878001E
  
  ; An invalid parameter was passed To the returning function
  #DSERR_INVALIDPARAM               = $80070057
  
  ; This call is Not valid For the current state of this object
  #DSERR_INVALIDCALL                = $88780032
  
  ; An undetermined error occured inside the DirectSound subsystem
  #DSERR_GENERIC                    = $80004005
  
  ; The caller does Not have the priority level required For the function To
  ; succeed.
  #DSERR_PRIOLEVELNEEDED            = $88780046
  
  ; Not enough free memory is available To complete the operation
  #DSERR_OUTOFMEMORY                = $8007000E
  
  ; The specified WAVE format is Not supported
  #DSERR_BADFORMAT                  = $88780064
  
  ; The function called is Not supported at this time
  #DSERR_UNSUPPORTED                = $80004001
  
  ; No sound driver is available For use
  #DSERR_NODRIVER                   = $88780078
  
  ; This object is already initialized
  #DSERR_ALREADYINITIALIZED         = $88780082
  
  ; This object does Not support aggregation
  #DSERR_NOAGGREGATION              = $80040110
  
  ; The buffer memory has been lost, And must be restored.
  #DSERR_BUFFERLOST                 = $88780096
  
  ; Another app has a higher priority level, preventing this call from
  ; succeeding.
  #DSERR_OTHERAPPHASPRIO            = $887800A0
  
  ; This object has Not been initialized
  #DSERR_UNINITIALIZED              = $887800AA
  
  ; The requested COM Interface is Not available
  #DSERR_NOINTERFACE                = $80000004
  
  ; Access is denied
  #DSERR_ACCESSDENIED               = $80070005
  
  ; Tried To create a DSBCAPS_CTRLFX buffer shorter than DSBSIZE_FX_MIN milliseconds
  #DSERR_BUFFERTOOSMALL             = $887800B4
  
  ; Attempt To use DirectSound 8 functionality on an older DirectSound object
  #DSERR_DS8_REQUIRED               = $887800BE
  
  ; A circular loop of send effects was detected
  #DSERR_SENDLOOP                   = $887800C8
  
  ; The GUID specified in an audiopath file does Not match a valid MIXIN buffer
  #DSERR_BADSENDBUFFERGUID          = $887800D2
  
  ; The object requested was Not found (numerically equal To DMUS_E_NOT_FOUND)
  #DSERR_OBJECTNOTFOUND             = $88781193
EndEnumeration


Structure DSFXSend Align #PB_Structure_AlignC
  lSendLevel.l
EndStructure

Structure DSFXGargle Align #PB_Structure_AlignC
  dwRateHz.l
  dwWaveShape.l
EndStructure

Enumeration DSFXGARGLE_VALUE
  #DSFXGARGLE_WAVE_TRIANGLE         =         0
  #DSFXGARGLE_WAVE_SQUARE           =         1
EndEnumeration

Structure DSFXChorus Align #PB_Structure_AlignC
  fWetDryMix.f
  fDepth.f
  fFeedback.f
  fFrequency.f
  lWaveform.l
  fDelay.f
  lPhase.l
EndStructure

Structure DSFXFlanger Align #PB_Structure_AlignC
  fWetDryMix.f
  fDepth.f
  fFeedback.f
  fFrequency.f
  lWaveform.l
  fDelay.f
  lPhase.l
EndStructure

Structure DSFXEcho Align #PB_Structure_AlignC
  fWetDryMix.f
  fFeedback.f
  fLeftDelay.f
  fRightDelay.f
  lPanDelay.l
EndStructure

Structure DSFXDistortion Align #PB_Structure_AlignC
  fGain.f
  fEdge.f
  fPostEQCenterFrequency.f
  fPostEQBandwidth.f
  fPreLowpassCutoff.f
EndStructure

Structure DSFXCompressor Align #PB_Structure_AlignC
  fGain.f
  fAttack.f
  fRelease.f
  fThreshold.f
  fRatio.f
  fPredelay.f
EndStructure

Structure DSFXParamEq Align #PB_Structure_AlignC
  fCenter.f
  fBandwidth.f
  fGain.f
EndStructure

Structure DSFXI3DL2Reverb Align #PB_Structure_AlignC
  lRoom.l
  lRoomHF.l
  flRoomRolloffFactor.f
  flDecayTime.f
  flDecayHFRatio.f
  lReflections.l
  flReflectionsDelay.f
  lReverb.l
  flReverbDelay.f
  flDiffusion.f
  flDensity.f
  flHFReference.f
EndStructure

Structure DSFXWavesReverb Align #PB_Structure_AlignC
  fInGain.f
  fReverbMix.f
  fReverbTime.f
  fHighFreqRTRatio.f
EndStructure

Enumeration KSPROPERTY_SUPPORT_MASK
  #KSPROPERTY_SUPPORT_GET           = $00000001
  #KSPROPERTY_SUPPORT_SET           = $00000002
EndEnumeration

Define GUID_DSFX_STANDARD_GARGLE.GUID
With GUID_DSFX_STANDARD_GARGLE
  \Data1    = $dafd8210
  \Data2    = $5711
  \Data3    = $4b91
  \Data4[0] = $9f
  \Data4[1] = $e3
  \Data4[2] = $f7
  \Data4[3] = $5b
  \Data4[4] = $7a
  \Data4[5] = $e2
  \Data4[6] = $79
  \Data4[7] = $bf
EndWith
Define IID_IDirectSoundFXGargle.GUID
With IID_IDirectSoundFXGargle
  \Data1    = $d616f352
  \Data2    = $d622
  \Data3    = $11ce
  \Data4[0] = $aa
  \Data4[1] = $c5
  \Data4[2] = $00
  \Data4[3] = $20
  \Data4[4] = $af
  \Data4[5] = $0b
  \Data4[6] = $99
  \Data4[7] = $a3
EndWith

DataSection 
  IID_DirectSoundNotify:
  Data.l $B0210783
  Data.w $89CD, $11D0
  Data.b $AF,$08,$00,$A0,$C9,$25,$CD,$16
EndDataSection