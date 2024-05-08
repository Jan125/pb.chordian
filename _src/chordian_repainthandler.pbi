Procedure.i RepaintHandler(*Void)
  Protected i.i
  Protected ScaleX.f
  Protected ScaleY.f
  
  With Chordian
    Repeat
      WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Commit, -1)
      
      If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Stop, 0) = #WAIT_OBJECT_0
        
        WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Base, 0)
        WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Master, 0)
        WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Level, 0)
        WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Rhythm, 0)
        WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Memory, 0)
        WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Chord, 0)
        WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Commit, 0)
        
        ReleaseSemaphore_(\Repaint_Event\Semaphore_Repaint_Done, 1, 0)
        
        WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Resume, -1)
        Continue
      EndIf
      
      
      If StartDrawing(CanvasOutput(#Gad_Canvas))
        
        ScaleX = OutputWidth() / 800.0
        ScaleY = OutputHeight() / 600.0
        
        ;-Repaint Background and Base
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Base, 0) = #WAIT_OBJECT_0
          DrawImage(ImageID(#Img_Background), 0, 0)
          DrawAlphaImage(ImageID(#Img_Base), 0, 0)
        EndIf
        
        
        ;-Repaint Master section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Master, 0) = #WAIT_OBJECT_0
          ClipOutput(63 * ScaleX, 29 * ScaleY, 162 * ScaleX, 121 * ScaleY)
          DrawImage(ImageID(#Img_Background), 0 * ScaleX, 0 * ScaleY)
          DrawAlphaImage(ImageID(#Img_Base), 0 * ScaleX, 0 * ScaleY)
          ;Power Button and LED
          Select \Machine_State\Value_Master_Button_Power_OnOff
            Case 1
              DrawAlphaImage(ImageID(#Img_LED_On), 133 * ScaleX, 97 * ScaleY)
              DrawAlphaImage(ImageID(#Img_Button_Red_On), 126 * ScaleX, 113 * ScaleY)
            Case 0
              DrawAlphaImage(ImageID(#Img_LED_Off), 133 * ScaleX, 97 * ScaleY)
              DrawAlphaImage(ImageID(#Img_Button_Red_Off), 126 * ScaleX, 113 * ScaleY)
          EndSelect
          
          ;Master Volume Knob
          DrawAlphaImage(ImageID(#Img_Knob_Big), 169 * ScaleX, 95 * ScaleY)
          KnobLine(190 * ScaleX, 116 * ScaleY, 21 * ScaleX, 21 * ScaleY, \Machine_State\Value_Master_Knob_Volume)
        EndIf
        
        
        ;-Repaint Level/Mode section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Level, 0) = #WAIT_OBJECT_0
          ClipOutput(24 * ScaleX, 154 * ScaleY, 201 * ScaleX, 96 * ScaleY)
          DrawImage(ImageID(#Img_Background), 0 * ScaleX, 0 * ScaleY)
          DrawAlphaImage(ImageID(#Img_Base), 0 * ScaleX, 0 * ScaleY)
          ;Harp Voice 2 Volume Knob
          DrawAlphaImage(ImageID(#Img_Knob_Ring), 73 * ScaleX, 170 * ScaleY)
          KnobLine(94 * ScaleX, 191 * ScaleY, 21 * ScaleX, 21 * ScaleY, \Machine_State\Value_Level_Knob_Volume_Harp_1)
          ;Harp Voice 1 Volume Knob
          DrawAlphaImage(ImageID(#Img_Knob_Small), 81 * ScaleX, 178 * ScaleY)
          KnobLine(94 * ScaleX, 191 * ScaleY, 13 * ScaleX, 13 * ScaleY, \Machine_State\Value_Level_Knob_Volume_Harp_2)
          
          ;Harp Sustain Knob
          DrawAlphaImage(ImageID(#Img_Knob_Big), 121 * ScaleX, 170 * ScaleY)
          KnobLine(142 * Scalex, 191 * ScaleY, 21 * ScaleX, 21 * ScaleY, \Machine_State\Value_Level_Knob_Sustain)
          
          ;Keyboard Volume Knob
          DrawAlphaImage(ImageID(#Img_Knob_Ring), 169 * ScaleX, 170 * ScaleY)
          KnobLine(190 * ScaleX, 191 * ScaleY, 21 * ScaleX, 21 * ScaleY, \Machine_State\Value_Level_Knob_Volume_Keyboard)
          ;Chords Volume Knob
          DrawAlphaImage(ImageID(#Img_Knob_Small), 177 * ScaleX, 178 * ScaleY)
          KnobLine(190 * ScaleX, 191 * ScaleY, 13 * ScaleX, 13 * ScaleY, \Machine_State\Value_Level_Knob_Volume_Chords)
        EndIf
        
        
        ;-Repaint Rhythm section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Rhythm, 0) = #WAIT_OBJECT_0
          ClipOutput(23 * ScaleX, 254 * ScaleY, 202 * ScaleX, 126 * ScaleY)
          DrawImage(ImageID(#Img_Background), 0 * ScaleX, 0 * ScaleY)
          DrawAlphaImage(ImageID(#Img_Base), 0 * ScaleX, 0 * ScaleY)
          ;Rhythm Alternate Selection Button
          Select \Machine_State\Value_Rhythm_Button_Alternate_OnOff
            Case 1
              DrawAlphaImage(ImageID(#Img_Button_Blue_On), 36 * ScaleX, 274 * ScaleY)
            Case 0
              DrawAlphaImage(ImageID(#Img_Button_Blue_Off), 36 * ScaleX, 274 * ScaleY)
          EndSelect
          
          ;Rhythm Button
          For i = #Rhythm_First To #Rhythm_Last
            If i = \Machine_State\Value_Rhythm_Button_Pattern
              DrawAlphaImage(ImageID(#Img_Button_Dark_On), (68 + i * 32) * ScaleX, 274 * ScaleY)
            Else
              DrawAlphaImage(ImageID(#Img_Button_Dark_Off), (68 + i * 32) * ScaleX, 274 * ScaleY)
            EndIf
          Next
          
          ;Auto-Bass-Sync Button
          If \Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
            DrawAlphaImage(ImageID(#Img_Button_Black_On), 84 * ScaleX, 329 * ScaleY)
          Else
            DrawAlphaImage(ImageID(#Img_Button_Black_Off), 84 * ScaleX, 329 * ScaleY)
          EndIf
          
          DrawAlphaImage(ImageID(#Img_Knob_Big), 121 * ScaleX, 318 * ScaleY)
          KnobLine(142 * ScaleX, 339 * ScaleY, 21 * ScaleX, 21 * ScaleY, \Machine_State\Value_Rhythm_Knob_Tempo)
          
          DrawAlphaImage(ImageID(#Img_Knob_Big), 169 * ScaleX, 318 * ScaleY)
          KnobLine(190 * ScaleX, 339 * ScaleY, 21 * ScaleX, 21 * ScaleY, \Machine_State\Value_Rhythm_Knob_Volume)
        EndIf
        
        
        ;-Repaint Memory section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Memory, 0) = #WAIT_OBJECT_0
          ClipOutput(32 * ScaleX, 384 * ScaleY, 193 * ScaleX, 186 * ScaleY)
          DrawImage(ImageID(#Img_Background), 0 * ScaleX, 0 * ScaleY)
          DrawAlphaImage(ImageID(#Img_Base), 0 * ScaleX, 0 * ScaleY)
          ;Memory Button
          Select \Machine_State\Value_Memory_Button_Memory_OnOff
            Case 1
              Select \Machine_State\Value_Master_Button_Power_OnOff
                Case 1
                  DrawAlphaImage(ImageID(#Img_LED_On), 94 * ScaleX, 396 * ScaleY)
                Case 0
                  DrawAlphaImage(ImageID(#Img_LED_Off), 94 * ScaleX, 396 * ScaleY)
              EndSelect
              DrawAlphaImage(ImageID(#Img_Button_Red_On), 126 * ScaleX, 424 * ScaleY)
            Case 0
              DrawAlphaImage(ImageID(#Img_LED_Off), 94 * ScaleX, 396 * ScaleY)
              DrawAlphaImage(ImageID(#Img_Button_Red_Off), 126 * ScaleX, 424 * ScaleY)
          EndSelect
          
          ;Playback-Record Button
          Select \Machine_State\Value_Memory_Button_Playback_Record_OnOff
            Case 1
              DrawAlphaImage(ImageID(#Img_Button_Dark_On), 159 * ScaleX, 424 * ScaleY)
            Case 0
              DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 159 * ScaleX, 424 * ScaleY)
          EndSelect
          
          ;Repeat-Delete Button
          Select \Machine_State\Value_Memory_Button_Repeat_Delete
            Case 1
              DrawAlphaImage(ImageID(#Img_Button_Dark_On), 192 * ScaleX, 424 * ScaleY)
            Case 0
              DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 192 * ScaleX, 424 * ScaleY)
          EndSelect
          
          ;Playback-Enter Button
          Select \Machine_State\Value_Memory_Button_Playback_Enter
            Case 1
              DrawAlphaImage(ImageID(#Img_Button_Wide_Black_On), 162 * ScaleX, 480 * ScaleY)
            Case 0
              DrawAlphaImage(ImageID(#Img_Button_Wide_Black_Off), 162 * ScaleX, 480 * ScaleY)
          EndSelect
        EndIf
        
        ;-Repaint Chord section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Chord, 0) = #WAIT_OBJECT_0
          ClipOutput(230 * ScaleX, 217 * ScaleY, 438 * ScaleX, 192 * ScaleY)
          DrawImage(ImageID(#Img_Background), 0 * ScaleX, 0 * ScaleY)
          DrawAlphaImage(ImageID(#Img_Base), 0 * ScaleX, 0 * ScaleY)
          ;Chord Buttons
          For i = #Note_First To #Note_Fc
            Select i
              Case #Note_Eb
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                  DrawAlphaImage(ImageID(#Img_Button_Light_Down_On), (271 + i * 31) * ScaleX, 240 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Light_Down_Off), (271 + i * 31) * ScaleX, 240 * ScaleY)
                EndIf
              Case #Note_Bb
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                  DrawAlphaImage(ImageID(#Img_Button_Light_Up_On), (271 + i * 31) * ScaleX, 240 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Light_Up_Off), (271 + i * 31) * ScaleX, 240 * ScaleY)
                EndIf
              Case #Note_A, #Note_E, #Note_B
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                  DrawAlphaImage(ImageID(#Img_Button_Light_O_On), (271 + i * 31) * ScaleX, 240 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Light_O_Off), (271 + i * 31) * ScaleX, 240 * ScaleY)
                EndIf
              Default
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                  DrawAlphaImage(ImageID(#Img_Button_Light_On), (271 + i * 31) * ScaleX, 240 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Light_Off), (271 + i * 31) * ScaleX, 240 * ScaleY)
                EndIf
            EndSelect
            
            Select i
              Case #Note_Db, #Note_Bb, #Note_D
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                  DrawAlphaImage(ImageID(#Img_Button_Light_On), (286 + i * 31) * ScaleX, 283 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Light_Off), (286 + i * 31) * ScaleX, 283 * ScaleY)
                EndIf
              Case #Note_A, #Note_E
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                  DrawAlphaImage(ImageID(#Img_Button_Dark_C_On), (286 + i * 31) * ScaleX, 283 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Dark_C_Off), (286 + i * 31) * ScaleX, 283 * ScaleY)
                EndIf
              Case #Note_B
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                  DrawAlphaImage(ImageID(#Img_Button_Light_C_On), (286 + i * 31) * ScaleX, 283 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Light_C_Off), (286 + i * 31) * ScaleX, 283 * ScaleY)
                EndIf
              Default
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                  DrawAlphaImage(ImageID(#Img_Button_Dark_On), (286 + i * 31) * ScaleX, 283 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Dark_Off), (286 + i * 31) * ScaleX, 283 * ScaleY)
                EndIf
            EndSelect
            
            Select i
              Case #Note_F, #Note_C, #Note_G
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                  DrawAlphaImage(ImageID(#Img_Button_Dark_Tri_On), (301 + i * 31) * ScaleX, 326 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Dark_Tri_Off), (301 + i * 31) * ScaleX, 326 * ScaleY)
                EndIf
              Case #Note_A, #Note_E, #Note_B
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                  DrawAlphaImage(ImageID(#Img_Button_Dark_X_On), (301 + i * 31) * ScaleX, 326 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Dark_X_Off), (301 + i * 31) * ScaleX, 326 * ScaleY)
                EndIf
              Default
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                  DrawAlphaImage(ImageID(#Img_Button_Dark_On), (301 + i * 31) * ScaleX, 326 * ScaleY)
                Else
                  DrawAlphaImage(ImageID(#Img_Button_Dark_Off), (301 + i * 31) * ScaleX, 326 * ScaleY)
                EndIf
            EndSelect
          Next
          
          If \Input_State\Keymap(\Input_State\Keymap_Function(#Btn_Chordiate))
            DrawAlphaImage(ImageID(#Img_Button_Bar_Light_On), 361 * ScaleX, 369 * ScaleY)
          Else
            DrawAlphaImage(ImageID(#Img_Button_Bar_Light_Off), 361 * ScaleX, 369 * ScaleY)
          EndIf
          
        EndIf
        
        UnclipOutput()
        
        StopDrawing()
      EndIf
      Delay(10)
    ForEver
  EndWith
  
EndProcedure
