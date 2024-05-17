Procedure.i RepaintHandler(*Void)
  Protected i.i
  
  Protected BaseRepainted.i
  
  With Chordian
    Repeat
      WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Commit, -1)
      
      If WaitForSingleObject_(\Semaphore_EndRepaintHandler, 0) = #WAIT_OBJECT_0
        ProcedureReturn
      EndIf
      
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
      
      
      If StartVectorDrawing(CanvasVectorOutput(#Gad_Canvas))
        
        ScaleCoordinates(VectorOutputWidth() / 800.0, VectorOutputHeight() / 600.0)
        
        ;-Repaint Background and Base
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Base, 0) = #WAIT_OBJECT_0
          DrawVectorImageEx(#Img_Background, 0.0, 0.0)
          DrawVectorImageEx(#Img_Base, 0.0, 0.0)
          BaseRepainted = 1
        EndIf
        
        
        ;-Repaint Master section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Master, 0) = #WAIT_OBJECT_0
          SaveVectorState()
          AddPathBox(63.0, 29.0, 162.0, 121.0)
          ClipPath()
          If Not BaseRepainted
            DrawVectorImageEx(#Img_Background, 0.0, 0.0)
            DrawVectorImageEx(#Img_Base, 0.0, 0.0)
          Else
            BaseRepainted = 0
          EndIf
          ;Power Button and LED
          Select \Machine_State\Value_Master_Button_Power_OnOff
            Case 1
              DrawVectorImageEx(#Img_LED_On, 133.0, 97.0)
              DrawVectorImageEx(#Img_Button_Red_On, 126.0, 113.0)
            Case 0
              DrawVectorImageEx(#Img_LED_Off, 133.0, 97.0)
              DrawVectorImageEx(#Img_Button_Red_Off, 126.0, 113.0)
          EndSelect
          
          ;Master Volume Knob
          DrawVectorImageEx(#Img_Knob_Big, 169.0, 95.0)
          KnobLine(190.0, 116.0, 21.0, \Machine_State\Value_Master_Knob_Volume)
          
          RestoreVectorState()
        EndIf
        
        
        ;-Repaint Level/Mode section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Level, 0) = #WAIT_OBJECT_0
          SaveVectorState()
          AddPathBox(24.0, 154.0, 201.0, 96.0)
          ClipPath()
          If Not BaseRepainted
            DrawVectorImageEx(#Img_Background, 0.0, 0.0)
            DrawVectorImageEx(#Img_Base, 0.0, 0.0)
          Else
            BaseRepainted = 0
          EndIf
          ;Harp Voice 2 Volume Knob
          DrawVectorImageEx(#Img_Knob_Ring, 73.0, 170.0)
          KnobLine(94.0, 191.0, 21.0, \Machine_State\Value_Level_Knob_Volume_Harp_1)
          ;Harp Voice 1 Volume Knob
          DrawVectorImageEx(#Img_Knob_Small, 81.0, 178.0)
          KnobLine(94.0, 191.0, 13.0, \Machine_State\Value_Level_Knob_Volume_Harp_2)
          
          ;Harp Sustain Knob
          DrawVectorImageEx(#Img_Knob_Big, 121.0, 170.0)
          KnobLine(142.0, 191.0, 21.0, \Machine_State\Value_Level_Knob_Sustain)
          
          ;Keyboard Volume Knob
          DrawVectorImageEx(#Img_Knob_Ring, 169.0, 170.0)
          KnobLine(190.0, 191.0, 21.0, \Machine_State\Value_Level_Knob_Volume_Keyboard)
          ;Chords Volume Knob
          DrawVectorImageEx(#Img_Knob_Small, 177.0, 178.0)
          KnobLine(190.0, 191.0, 13.0, \Machine_State\Value_Level_Knob_Volume_Chords)
          
          RestoreVectorState()
        EndIf
        
        ;-Repaint Rhythm section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Rhythm, 0) = #WAIT_OBJECT_0
          SaveVectorState()
          AddPathBox(23.0, 254.0, 202.0, 126.0)
          ClipPath()
          If Not BaseRepainted
            DrawVectorImageEx(#Img_Background, 0.0, 0.0)
            DrawVectorImageEx(#Img_Base, 0.0, 0.0)
          Else
            BaseRepainted = 0
          EndIf
          ;Rhythm Alternate Selection Button
          Select \Machine_State\Value_Rhythm_Button_Alternate_OnOff
            Case 1
              DrawVectorImageEx(#Img_Button_Blue_On, 36.0, 274.0)
            Case 0
              DrawVectorImageEx(#Img_Button_Blue_Off, 36.0, 274.0)
          EndSelect
          
          ;Rhythm Button
          For i = #Rhythm_First To #Rhythm_Last
            If i = \Machine_State\Value_Rhythm_Button_Pattern
              DrawVectorImageEx(#Img_Button_Dark_On, (68.0 + i * 32.0), 274.0)
            Else
              DrawVectorImageEx(#Img_Button_Dark_Off, (68.0 + i * 32.0), 274.0)
            EndIf
          Next
          
          ;Auto-Bass-Sync Button
          If \Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
            DrawVectorImageEx(#Img_Button_Black_On, 84.0, 329.0)
          Else
            DrawVectorImageEx(#Img_Button_Black_Off, 84.0, 329.0)
          EndIf
          
          DrawVectorImageEx(#Img_Knob_Big, 121.0, 318.0)
          KnobLine(142.0, 339.0, 21.0, \Machine_State\Value_Rhythm_Knob_Tempo)
          
          DrawVectorImageEx(#Img_Knob_Big, 169.0, 318.0)
          KnobLine(190.0, 339.0, 21.0, \Machine_State\Value_Rhythm_Knob_Volume)
          
          RestoreVectorState()
        EndIf
        
        ;-Repaint Memory section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Memory, 0) = #WAIT_OBJECT_0
          SaveVectorState()
          AddPathBox(32.0, 384.0, 193.0, 186.0)
          ClipPath()
          If Not BaseRepainted
            DrawVectorImageEx(#Img_Background, 0.0, 0.0)
            DrawVectorImageEx(#Img_Base, 0.0, 0.0)
          Else
            BaseRepainted = 0
          EndIf
          ;Memory Button
          Select \Machine_State\Value_Memory_Button_Memory_OnOff
            Case 1
              Select \Machine_State\Value_Master_Button_Power_OnOff
                Case 1
                  DrawVectorImageEx(#Img_LED_On, 94.0, 396.0)
                Case 0
                  DrawVectorImageEx(#Img_LED_Off, 94.0, 396.0)
              EndSelect
              DrawVectorImageEx(#Img_Button_Red_On, 126.0, 424.0)
            Case 0
              DrawVectorImageEx(#Img_LED_Off, 94.0, 396.0)
              DrawVectorImageEx(#Img_Button_Red_Off, 126.0, 424.0)
          EndSelect
          
          ;Playback-Record Button
          Select \Machine_State\Value_Memory_Button_Playback_Record_OnOff
            Case 1
              DrawVectorImageEx(#Img_Button_Dark_On, 159.0, 424.0)
            Case 0
              DrawVectorImageEx(#Img_Button_Dark_Off, 159.0, 424.0)
          EndSelect
          
          ;Repeat-Delete Button
          Select \Machine_State\Value_Memory_Button_Repeat_Delete
            Case 1
              DrawVectorImageEx(#Img_Button_Dark_On, 192.0, 424.0)
            Case 0
              DrawVectorImageEx(#Img_Button_Dark_Off, 192.0, 424.0)
          EndSelect
          
          ;Playback-Enter Button
          Select \Machine_State\Value_Memory_Button_Playback_Enter
            Case 1
              DrawVectorImageEx(#Img_Button_Wide_Black_On, 162.0, 480.0)
            Case 0
              DrawVectorImageEx(#Img_Button_Wide_Black_Off, 162.0, 480.0)
          EndSelect
          
          RestoreVectorState()
        EndIf
        
        ;-Repaint Chord section
        If WaitForSingleObject_(\Repaint_Event\Semaphore_Repaint_Chord, 0) = #WAIT_OBJECT_0
          SaveVectorState()
          AddPathBox(230.0, 217.0, 438.0, 192.0)
          ClipPath()
          If Not BaseRepainted
            DrawVectorImageEx(#Img_Background, 0.0, 0.0)
            DrawVectorImageEx(#Img_Base, 0.0, 0.0)
          Else
            BaseRepainted = 0
          EndIf
          ;Chord Buttons
          For i = #Note_First To #Note_Fc
            Select i
              Case #Note_Eb
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                  DrawVectorImageEx(#Img_Button_Light_Down_On, (271.0 + i * 31.0), 240.0)
                Else
                  DrawVectorImageEx(#Img_Button_Light_Down_Off, (271.0 + i * 31.0), 240.0)
                EndIf
              Case #Note_Bb
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                  DrawVectorImageEx(#Img_Button_Light_Up_On, (271.0 + i * 31.0), 240.0)
                Else
                  DrawVectorImageEx(#Img_Button_Light_Up_Off, (271.0 + i * 31.0), 240.0)
                EndIf
              Case #Note_A, #Note_E, #Note_B
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                  DrawVectorImageEx(#Img_Button_Light_O_On, (271.0 + i * 31.0), 240.0)
                Else
                  DrawVectorImageEx(#Img_Button_Light_O_Off, (271.0 + i * 31.0), 240.0)
                EndIf
              Default
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                  DrawVectorImageEx(#Img_Button_Light_On, (271.0 + i * 31.0), 240.0)
                Else
                  DrawVectorImageEx(#Img_Button_Light_Off, (271.0 + i * 31.0), 240.0)
                EndIf
            EndSelect
            
            Select i
              Case #Note_Db, #Note_Bb, #Note_D
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                  DrawVectorImageEx(#Img_Button_Light_On, (286.0 + i * 31.0), 283.0)
                Else
                  DrawVectorImageEx(#Img_Button_Light_Off, (286.0 + i * 31.0), 283.0)
                EndIf
              Case #Note_A, #Note_E
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                  DrawVectorImageEx(#Img_Button_Dark_C_On, (286.0 + i * 31.0), 283.0)
                Else
                  DrawVectorImageEx(#Img_Button_Dark_C_Off, (286.0 + i * 31.0), 283.0)
                EndIf
              Case #Note_B
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                  DrawVectorImageEx(#Img_Button_Light_C_On, (286.0 + i * 31.0), 283.0)
                Else
                  DrawVectorImageEx(#Img_Button_Light_C_Off, (286.0 + i * 31.0), 283.0)
                EndIf
              Default
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                  DrawVectorImageEx(#Img_Button_Dark_On, (286.0 + i * 31.0), 283.0)
                Else
                  DrawVectorImageEx(#Img_Button_Dark_Off, (286.0 + i * 31.0), 283.0)
                EndIf
            EndSelect
            
            Select i
              Case #Note_F, #Note_C, #Note_G
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                  DrawVectorImageEx(#Img_Button_Dark_Tri_On, (301.0 + i * 31.0), 326.0)
                Else
                  DrawVectorImageEx(#Img_Button_Dark_Tri_Off, (301.0 + i * 31.0), 326.0)
                EndIf
              Case #Note_A, #Note_E, #Note_B
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                  DrawVectorImageEx(#Img_Button_Dark_X_On, (301.0 + i * 31.0), 326.0)
                Else
                  DrawVectorImageEx(#Img_Button_Dark_X_Off, (301.0 + i * 31.0), 326.0)
                EndIf
              Default
                If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                  DrawVectorImageEx(#Img_Button_Dark_On, (301.0 + i * 31.0), 326.0)
                Else
                  DrawVectorImageEx(#Img_Button_Dark_Off, (301.0 + i * 31.0), 326.0)
                EndIf
            EndSelect
          Next
          
          If \Input_State\Keymap(\Input_State\Keymap_Function(#Btn_Chordiate))
            DrawVectorImageEx(#Img_Button_Bar_Light_On, 361.0, 369.0)
          Else
            DrawVectorImageEx(#Img_Button_Bar_Light_Off, 361.0, 369.0)
          EndIf
          
          RestoreVectorState()
        EndIf
        
        StopVectorDrawing()
      EndIf
      Delay(10)
    ForEver
  EndWith
  
EndProcedure
