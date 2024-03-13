
Procedure.i RepaintHandler(*Void)
  Protected i.i
  
  With Chordian
    Repeat
      WaitSemaphore(\Repaint_Event\Semaphore_Repaint_Commit)
      StartDrawing(CanvasOutput(#Gad_Canvas))
      
      
      ;-Repaint Background and Base
      If TrySemaphore(\Repaint_Event\Semaphore_Repaint_Base)
        DrawImage(ImageID(#Img_Background), 0, 0)
        
        DrawAlphaImage(ImageID(#Img_Base), 0, 0)
      EndIf
      
      
      ;-Repaint Master section
      If TrySemaphore(\Repaint_Event\Semaphore_Repaint_Master)
        ;Power Button and LED
        Select \Machine_State\Value_Master_Button_Power_OnOff
          Case 1
            DrawAlphaImage(ImageID(#Img_LED_On), 133, 97)
            DrawAlphaImage(ImageID(#Img_Button_Red_On), 126, 113)
          Case 0
            DrawAlphaImage(ImageID(#Img_LED_Off), 133, 97)
            DrawAlphaImage(ImageID(#Img_Button_Red_Off), 126, 113)
        EndSelect
        
        ;Master Volume Knob
        DrawAlphaImage(ImageID(#Img_Knob_Big), 169, 95)
        Line(190, 116, Sin(Radian(-\Machine_State\Value_Master_Knob_Volume*270-45))*21+Sign(Sin(Radian(-\Machine_State\Value_Master_Knob_Volume*270-45)))*Bool(Abs(Sin(Radian(-\Machine_State\Value_Master_Knob_Volume*270-45))*21) <= 0.5), Cos(Radian(-\Machine_State\Value_Master_Knob_Volume*270-45))*21+Sign(Cos(Radian(-\Machine_State\Value_Master_Knob_Volume*270-45)))*Bool(Abs(Cos(Radian(-\Machine_State\Value_Master_Knob_Volume*270-45))*21) <= 0.5))
      EndIf
      
      
      ;-Repaint Level/Mode section
      If TrySemaphore(\Repaint_Event\Semaphore_Repaint_Level)
        ;Harp Voice 2 Volume Knob
        DrawAlphaImage(ImageID(#Img_Knob_Ring), 73, 170)
        Line(94, 191, Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_1*270-45))*21+Sign(Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_1*270-45)))*Bool(Abs(Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_1*270-45))*21) <= 0.5), Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_1*270-45))*21+Sign(Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_1*270-45)))*Bool(Abs(Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_1*270-45))*21) <= 0.5))
        ;Harp Voice 1 Volume Knob
        DrawAlphaImage(ImageID(#Img_Knob_Small), 81, 178)
        Line(94, 191, Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_2*270-45))*13+Sign(Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_2*270-45)))*Bool(Abs(Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_2*270-45))*13) <= 0.5), Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_2*270-45))*13+Sign(Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_2*270-45)))*Bool(Abs(Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Harp_2*270-45))*13) <= 0.5))
        
        ;Harp Sustain Knob
        DrawAlphaImage(ImageID(#Img_Knob_Big), 121, 170)
        Line(142, 191, Sin(Radian(-\Machine_State\Value_Level_Knob_Sustain*270-45))*21+Sign(Sin(Radian(-\Machine_State\Value_Level_Knob_Sustain*270-45)))*Bool(Abs(Sin(Radian(-\Machine_State\Value_Level_Knob_Sustain*270-45))*21) <= 0.5), Cos(Radian(-\Machine_State\Value_Level_Knob_Sustain*270-45))*21+Sign(Cos(Radian(-\Machine_State\Value_Level_Knob_Sustain*270-45)))*Bool(Abs(Cos(Radian(-\Machine_State\Value_Level_Knob_Sustain*270-45))*21) <= 0.5))
        
        ;Keyboard Volume Knob
        DrawAlphaImage(ImageID(#Img_Knob_Ring), 169, 170)
        Line(190, 191, Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Keyboard*270-45))*21+Sign(Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Keyboard*270-45)))*Bool(Abs(Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Keyboard*270-45))*21) <= 0.5), Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Keyboard*270-45))*21+Sign(Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Keyboard*270-45)))*Bool(Abs(Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Keyboard*270-45))*21) <= 0.5))
        ;Chords Volume Knob
        DrawAlphaImage(ImageID(#Img_Knob_Small), 177, 178)
        Line(190, 191, Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Chords*270-45))*13+Sign(Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Chords*270-45)))*Bool(Abs(Sin(Radian(-\Machine_State\Value_Level_Knob_Volume_Chords*270-45))*13) <= 0.5), Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Chords*270-45))*13+Sign(Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Chords*270-45)))*Bool(Abs(Cos(Radian(-\Machine_State\Value_Level_Knob_Volume_Chords*270-45))*13) <= 0.5))
      EndIf
      
      
      ;-Repaint Rhythm section
      If TrySemaphore(\Repaint_Event\Semaphore_Repaint_Rhythm)
        ;Rhythm Alternate Selection Button
        Select \Machine_State\Value_Rhythm_Button_Alternate_OnOff
          Case 1
            DrawAlphaImage(ImageID(#Img_Button_Blue_On), 36, 274)
          Case 0
            DrawAlphaImage(ImageID(#Img_Button_Blue_Off), 36, 274)
        EndSelect
        
        ;Rhythm Button
        For i = #Rhythm_First To #Rhythm_Last
          If i = \Machine_State\Value_Rhythm_Button_Pattern
            DrawAlphaImage(ImageID(#Img_Button_Dark_On), 68+i*32, 274)
          Else
            DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 68+i*32, 274)
          EndIf
        Next
        
        ;Auto-Bass-Sync Button
        If \Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
          DrawAlphaImage(ImageID(#Img_Button_Black_On), 84, 329)
        Else
          DrawAlphaImage(ImageID(#Img_Button_Black_Off), 84, 329)
        EndIf
        
        DrawAlphaImage(ImageID(#Img_Knob_Big), 121, 318)
        Line(142, 339, Sin(Radian(-\Machine_State\Value_Rhythm_Knob_Tempo*270-45))*21+Sign(Sin(Radian(-\Machine_State\Value_Rhythm_Knob_Tempo*270-45)))*Bool(Abs(Sin(Radian(-\Machine_State\Value_Rhythm_Knob_Tempo*270-45))*21) <= 0.5), Cos(Radian(-\Machine_State\Value_Rhythm_Knob_Tempo*270-45))*21+Sign(Cos(Radian(-\Machine_State\Value_Rhythm_Knob_Tempo*270-45)))*Bool(Abs(Cos(Radian(-\Machine_State\Value_Rhythm_Knob_Tempo*270-45))*21) <= 0.5))
        
        DrawAlphaImage(ImageID(#Img_Knob_Big), 169, 318)
        Line(190, 339, Sin(Radian(-\Machine_State\Value_Rhythm_Knob_Volume*270-45))*21+Sign(Sin(Radian(-\Machine_State\Value_Rhythm_Knob_Volume*270-45)))*Bool(Abs(Sin(Radian(-\Machine_State\Value_Rhythm_Knob_Volume*270-45))*21) <= 0.5), Cos(Radian(-\Machine_State\Value_Rhythm_Knob_Volume*270-45))*21+Sign(Cos(Radian(-\Machine_State\Value_Rhythm_Knob_Volume*270-45)))*Bool(Abs(Cos(Radian(-\Machine_State\Value_Rhythm_Knob_Volume*270-45))*21) <= 0.5))
      EndIf
      
      
      ;-Repaint Memory section
      If TrySemaphore(\Repaint_Event\Semaphore_Repaint_Memory)
        ;Memory Button
        Select \Machine_State\Value_Memory_Button_Memory_OnOff
          Case 1
            DrawAlphaImage(ImageID(#Img_LED_On), 94, 396)
            DrawAlphaImage(ImageID(#Img_Button_Red_On), 126, 424)
          Case 0
            DrawAlphaImage(ImageID(#Img_LED_Off), 94, 396)
            DrawAlphaImage(ImageID(#Img_Button_Red_Off), 126, 424)
        EndSelect
        
        ;Playback-Record Button
        Select \Machine_State\Value_Memory_Button_Playback_Record_OnOff
          Case 1
            DrawAlphaImage(ImageID(#Img_Button_Dark_On), 159, 424)
          Case 0
            DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 159, 424)
        EndSelect
        
        ;Repeat-Delete Button
        Select \Machine_State\Value_Memory_Button_Repeat_Delete
          Case 1
            DrawAlphaImage(ImageID(#Img_Button_Dark_On), 192, 424)
          Case 0
            DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 192, 424)
        EndSelect
        
        ;Playback-Enter Button
        Select \Machine_State\Value_Memory_Button_Playback_Enter
          Case 1
            DrawAlphaImage(ImageID(#Img_Button_Wide_On), 162, 480)
          Case 0
            DrawAlphaImage(ImageID(#Img_Button_Wide_Off), 162, 480)
        EndSelect
      EndIf
      
      
      
      ;Repaint Chord section
      If TrySemaphore(\Repaint_Event\Semaphore_Repaint_Chord)
        ;Chord Buttons
        For i = #Note_First To #Note_Fc
          Select i
            Case #Note_Eb
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                DrawAlphaImage(ImageID(#Img_Button_Light_Down_On), 271+i*31, 240)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Light_Down_Off), 271+i*31, 240)
              EndIf
            Case #Note_Bb
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                DrawAlphaImage(ImageID(#Img_Button_Light_Up_On), 271+i*31, 240)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Light_Up_Off), 271+i*31, 240)
              EndIf
            Case #Note_A, #Note_E, #Note_B
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                DrawAlphaImage(ImageID(#Img_Button_Light_O_On), 271+i*31, 240)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Light_O_Off), 271+i*31, 240)
              EndIf
            Default
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Maj, i))
                DrawAlphaImage(ImageID(#Img_Button_Light_On), 271+i*31, 240)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Light_Off), 271+i*31, 240)
              EndIf
          EndSelect
          
          Select i
            Case #Note_Db, #Note_Bb, #Note_D
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                DrawAlphaImage(ImageID(#Img_Button_Light_On), 286+i*31, 283)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Light_Off), 286+i*31, 283)
              EndIf
            Case #Note_A, #Note_E
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                DrawAlphaImage(ImageID(#Img_Button_Dark_C_On), 286+i*31, 283)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Dark_C_Off), 286+i*31, 283)
              EndIf
            Case #Note_B
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                DrawAlphaImage(ImageID(#Img_Button_Light_C_On), 286+i*31, 283)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Light_C_Off), 286+i*31, 283)
              EndIf
            Default
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_Min, i))
                DrawAlphaImage(ImageID(#Img_Button_Dark_On), 286+i*31, 283)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 286+i*31, 283)
              EndIf
          EndSelect
          
          Select i
            Case #Note_F, #Note_C, #Note_G
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                DrawAlphaImage(ImageID(#Img_Button_Dark_Tri_On), 301+i*31, 326)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Dark_Tri_Off), 301+i*31, 326)
              EndIf
            Case #Note_A, #Note_E, #Note_B
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                DrawAlphaImage(ImageID(#Img_Button_Dark_X_On), 301+i*31, 326)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Dark_X_Off), 301+i*31, 326)
              EndIf
            Default
              If \Input_State\Keymap(\Input_State\Keymap_Chord(#Chord_7th, i))
                DrawAlphaImage(ImageID(#Img_Button_Dark_On), 301+i*31, 326)
              Else
                DrawAlphaImage(ImageID(#Img_Button_Dark_Off), 301+i*31, 326)
              EndIf
          EndSelect
        Next
      EndIf
      
      
      StopDrawing()
    ForEver
  EndWith
  
EndProcedure
