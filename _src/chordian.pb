EnableExplicit

;-DSound
XIncludeFile "dsound.pbi"

;-Data Sections
XIncludeFile "chordian_datasections.pbi"

;-Enumerations
XIncludeFile "chordian_enumerations.pbi"

;-Structures
XIncludeFile "chordian_structures.pbi"

XIncludeFile "chordian_helpers.pbi"

XIncludeFile "chordian_repainthandler.pbi"

XIncludeFile "chordian_synthhandler.pbi"

XIncludeFile "chordian_patternhandler.pbi"

XIncludeFile "chordian_frequencyhandler.pbi"

XIncludeFile "chordian_machinehandler.pbi"

Procedure.i ResetInput()
  Protected i.i
  
  With Chordian\Input_State
    
    \Mouse_Position_X_Current = 0
    \Mouse_Position_X_Previous = 0
    
    \Mouse_Position_Y_Current = 0
    \Mouse_Position_Y_Previous = 0
    
    \Mouse_Button_Left_Current = 0
    \Mouse_Button_Left_Previous = 0
    
    \Mouse_Button_Middle_Previous = 0
    \Mouse_Button_Middle_Current = 0
    
    \Mouse_Button_Right_Current = 0
    \Mouse_Button_Right_Previous = 0
    
    \Mouse_Wheel_Current= 0
    \Mouse_Wheel_Previous = 0
    
    \Trigger_Master_Button_Power_OnOff = 0
    \Trigger_Master_Knob_Volume = 0
    
    \Trigger_Level_Knob_Volume_Harp_1 = 0
    \Trigger_Level_Knob_Volume_Harp_2 = 0
    \Trigger_Level_Knob_Sustain = 0
    \Trigger_Level_Knob_Volume_Keyboard = 0
    \Trigger_Level_Knob_Volume_Chords = 0
    
    \Trigger_Rhythm_Button_Alternate_OnOff = 0
    \Trigger_Rhythm_Button_Pattern = 0
    \Trigger_Rhythm_Button_AutoBassSync_OnOff = 0
    \Trigger_Rhythm_Knob_Tempo = 0
    \Trigger_Rhythm_Knob_Volume = 0
    
    \Trigger_Memory_Button_Memory_OnOff = 0
    \Trigger_Memory_Button_Playback_Record_OnOff = 0
    \Trigger_Memory_Button_Repeat_Delete = 0
    \Trigger_Memory_Button_Playback_Enter = 0
    
    \Trigger_Chord_Button_Major = 0
    \Trigger_Chord_Button_Minor = 0
    \Trigger_Chord_Button_7th = 0
    
    \Trigger_Harp = 0
    
    For i = 0 To ArraySize(\Keymap())
      \Keymap(i) = 0
    Next
    
    \Keymap_Chord(#Chord_Maj, #Note_Db) = #VK_1
    \Keymap_Chord(#Chord_Min, #Note_Db) = #VK_Q
    \Keymap_Chord(#Chord_7th, #Note_Db) = #VK_A
    
    \Keymap_Chord(#Chord_Maj, #Note_Ab) = #VK_2
    \Keymap_Chord(#Chord_Min, #Note_Ab) = #VK_W
    \Keymap_Chord(#Chord_7th, #Note_Ab) = #VK_S
    
    \Keymap_Chord(#Chord_Maj, #Note_Eb) = #VK_3
    \Keymap_Chord(#Chord_Min, #Note_Eb) = #VK_E
    \Keymap_Chord(#Chord_7th, #Note_Eb) = #VK_D
    
    \Keymap_Chord(#Chord_Maj, #Note_Bb) = #VK_4
    \Keymap_Chord(#Chord_Min, #Note_Bb) = #VK_R
    \Keymap_Chord(#Chord_7th, #Note_Bb) = #VK_F
    
    \Keymap_Chord(#Chord_Maj, #Note_F) = #VK_5
    \Keymap_Chord(#Chord_Min, #Note_F) = #VK_T
    \Keymap_Chord(#Chord_7th, #Note_F) = #VK_G
    
    \Keymap_Chord(#Chord_Maj, #Note_C) = #VK_6
    \Keymap_Chord(#Chord_Min, #Note_C) = #VK_Z
    \Keymap_Chord(#Chord_7th, #Note_C) = #VK_H
    
    \Keymap_Chord(#Chord_Maj, #Note_G) = #VK_7
    \Keymap_Chord(#Chord_Min, #Note_G) = #VK_U
    \Keymap_Chord(#Chord_7th, #Note_G) = #VK_J
    
    \Keymap_Chord(#Chord_Maj, #Note_D) = #VK_8
    \Keymap_Chord(#Chord_Min, #Note_D) = #VK_I
    \Keymap_Chord(#Chord_7th, #Note_D) = #VK_K
    
    \Keymap_Chord(#Chord_Maj, #Note_A) = #VK_9
    \Keymap_Chord(#Chord_Min, #Note_A) = #VK_O
    \Keymap_Chord(#Chord_7th, #Note_A) = #VK_L
    
    \Keymap_Chord(#Chord_Maj, #Note_E) = #VK_0
    \Keymap_Chord(#Chord_Min, #Note_E) = #VK_P
    \Keymap_Chord(#Chord_7th, #Note_E) = 192
    
    \Keymap_Chord(#Chord_Maj, #Note_B) = 219
    \Keymap_Chord(#Chord_Min, #Note_B) = 186
    \Keymap_Chord(#Chord_7th, #Note_B) = 222
    
    \Keymap_Chord(#Chord_Maj, #Note_Fc) = 221
    \Keymap_Chord(#Chord_Min, #Note_Fc) = 187
    \Keymap_Chord(#Chord_7th, #Note_Fc) = 191
    
    \Keymap_Harp(#Harp_1) = #VK_ESCAPE
    \Keymap_Harp(#Harp_2) = #VK_F1
    \Keymap_Harp(#Harp_3) = #VK_F2
    \Keymap_Harp(#Harp_4) = #VK_F3
    \Keymap_Harp(#Harp_5) = #VK_F4
    \Keymap_Harp(#Harp_6) = #VK_F5
    \Keymap_Harp(#Harp_7) = #VK_F6
    \Keymap_Harp(#Harp_8) = #VK_F7
    \Keymap_Harp(#Harp_9) = #VK_F8
    \Keymap_Harp(#Harp_10) = #VK_F9
    \Keymap_Harp(#Harp_11) = #VK_F10
    \Keymap_Harp(#Harp_12) = #VK_F11
    \Keymap_Harp(#Harp_13) = #VK_F12
    
    \Keymap_Function(#Btn_Memory_Playback_Enter) = #VK_CONTROL
    
  EndWith
  
EndProcedure

;-Procedures
Procedure.i Init()
  Protected i.i
  
  ;-Initialization
  SetPriorityClass_(GetCurrentProcess_(), #HIGH_PRIORITY_CLASS)
  
  If Not OpenWindow(#Win_Main, #PB_Ignore, #PB_Ignore, 800, 620, "Chordian", #PB_Window_SystemMenu|#PB_Window_MinimizeGadget)
    MessageRequester("Chordian>Error", "Window could not be initialized.")
    End
  EndIf
  
  
  If Not (DirectSoundCreate_(0, @DirectSound, 0) = #DS_OK And
          DirectSound\SetCooperativeLevel(GetDesktopWindow_(), #DSSCL_PRIORITY) = #DS_OK And
          DirectSound\CreateSoundBuffer(@DirectSoundBufferDescription, @DirectSoundBuffer, 0) = #DS_OK And
          DirectSoundBuffer\QueryInterface(?IID_DirectSoundNotify, @DirectSoundNotify) = #S_OK And 
          DirectSoundNotify\SetNotificationPositions(ArraySize(DirectSoundNotifyArray())+1, @DirectSoundNotifyArray(0)) = #DS_OK)
    MessageRequester("Chordian>Error", "DirectSound could not be initialized.")
    DirectSound\Release()
    End
  EndIf
  
  
  ;-Create Menu
  CreateMenu(#Men_Main, WindowID(#Win_Main))
  
  ;-Menu Entries
  MenuTitle("File")
  MenuItem(#Itm_Load, "Load state...")
  MenuItem(#Itm_Save, "Save state...")
  MenuBar()
  MenuItem(#Itm_Reset, "Reset state")
  MenuBar()
  MenuItem(#Itm_Exit, "Exit")
  
  MenuTitle("Edit")
  MenuItem(#Itm_Tuning, "Set Tuning...")
  MenuBar()
  MenuItem(#Itm_ChordiateMode, "Chordiate Mode (Less Constraints)")
  MenuBar()
  MenuItem(#Itm_PatEdit, "Pattern Editor...")
  
  MenuTitle("Help")
  MenuItem(#Itm_Manual, "Open manual...")
  MenuItem(#Itm_About, "About...")
  
  ;-Create Canvas
  CanvasGadget(#Gad_Canvas, 0, 0, WindowWidth(#Win_Main), WindowHeight(#Win_Main), #PB_Canvas_Keyboard)
  
  StartDrawing(CanvasOutput(#Gad_Canvas))
  DrawingMode(#PB_2DDrawing_AlphaBlend)
  FrontColor($FF000000)
  BackColor($00000000)
  Box(0, 0, OutputWidth(), OutputHeight(), $FFFFFFFF)
  DrawText(0, 00, "Loading... Please wait.")
  StopDrawing()
  
  SetActiveGadget(#Gad_Canvas)
  
  ResetMachine()
  ResetInput()
  
  UsePNGImageDecoder()
  
  ;-Get Graphics
  CatchImage(#Img_Background, ?Img_Background)
  CatchImage(#Img_Base, ?Img_Base)
  CatchImage(#Img_Button_Black_Off, ?Img_Button_Black_Off)
  CatchImage(#Img_Button_Black_On, ?Img_Button_Black_On)
  CatchImage(#Img_Button_Blue_Off, ?Img_Button_Blue_Off)
  CatchImage(#Img_Button_Blue_On, ?Img_Button_Blue_On)
  CatchImage(#Img_Button_Dark_Off, ?Img_Button_Dark_Off)
  CatchImage(#Img_Button_Dark_On, ?Img_Button_Dark_On)
  CatchImage(#Img_Button_Dark_C_Off, ?Img_Button_Dark_C_Off)
  CatchImage(#Img_Button_Dark_C_On, ?Img_Button_Dark_C_On)
  CatchImage(#Img_Button_Dark_X_Off, ?Img_Button_Dark_X_Off)
  CatchImage(#Img_Button_Dark_X_On, ?Img_Button_Dark_X_On)
  CatchImage(#Img_Button_Dark_Tri_Off, ?Img_Button_Dark_Tri_Off)
  CatchImage(#Img_Button_Dark_Tri_On, ?Img_Button_Dark_Tri_On)
  CatchImage(#Img_Button_Red_Off, ?Img_Button_Red_Off)
  CatchImage(#Img_Button_Red_On, ?Img_Button_Red_On)
  CatchImage(#Img_Button_Light_Off, ?Img_Button_Light_Off)
  CatchImage(#Img_Button_Light_On, ?Img_Button_Light_On)
  CatchImage(#Img_Button_Light_Up_Off, ?Img_Button_Light_Up_Off)
  CatchImage(#Img_Button_Light_Up_On, ?Img_Button_Light_Up_On)
  CatchImage(#Img_Button_Light_Down_Off, ?Img_Button_Light_Down_Off)
  CatchImage(#Img_Button_Light_Down_On, ?Img_Button_Light_Down_On)
  CatchImage(#Img_Button_Light_O_Off, ?Img_Button_Light_O_Off)
  CatchImage(#Img_Button_Light_O_On, ?Img_Button_Light_O_On)
  CatchImage(#Img_Button_Light_C_Off, ?Img_Button_Light_C_Off)
  CatchImage(#Img_Button_Light_C_On, ?Img_Button_Light_C_On)
  
  CatchImage(#Img_Button_Wide_Off, ?Img_Button_Wide_Off)
  CatchImage(#Img_Button_Wide_On, ?Img_Button_Wide_On)
  CatchImage(#Img_Button_Wide_Red_Off, ?Img_Button_Wide_Red_Off)
  CatchImage(#Img_Button_Wide_Red_On, ?Img_Button_Wide_Red_On)
  
  CatchImage(#Img_Knob_Big, ?Img_Knob_Big)
  CatchImage(#Img_Knob_Ring, ?Img_Knob_Ring)
  CatchImage(#Img_Knob_Small, ?Img_Knob_Small)
  
  CatchImage(#Img_LED_Off, ?Img_LED_Off)
  CatchImage(#Img_LED_On, ?Img_LED_On)
  
  CatchImage(#Img_PatEdit_Curve_None, ?Img_PatEdit_Curve_None)
  CatchImage(#Img_PatEdit_Curve_Trigger, ?Img_PatEdit_Curve_Trigger)
  CatchImage(#Img_PatEdit_Curve_Attack, ?Img_PatEdit_Curve_Attack)
  CatchImage(#Img_PatEdit_Curve_Decay, ?Img_PatEdit_Curve_Decay)
  CatchImage(#Img_PatEdit_Curve_Sustain, ?Img_PatEdit_Curve_Sustain)
  CatchImage(#Img_PatEdit_Curve_Release, ?Img_PatEdit_Curve_Release)
  CatchImage(#Img_PatEdit_Curve_Oneshot, ?Img_PatEdit_Curve_Oneshot)
  CatchImage(#Img_PatEdit_Curve_Ignore, ?Img_PatEdit_Curve_Ignore)
  
  CatchImage(#Img_PatEdit_Note_1, ?Img_PatEdit_Note_1)
  CatchImage(#Img_PatEdit_Note_2, ?Img_PatEdit_Note_2)
  CatchImage(#Img_PatEdit_Note_3, ?Img_PatEdit_Note_3)
  CatchImage(#Img_PatEdit_Note_4, ?Img_PatEdit_Note_4)
  
  Chordian\RepaintHandler_Thread = CreateThread(@RepaintHandler(), 0)
  Chordian\PatternHandler_Thread = CreateThread(@PatternHandler(), 0)
  Chordian\MachineHandler_Thread = CreateThread(@MachineHandler(), 0)
  Chordian\FrequencyHandler_Thread = CreateThread(@FrequencyHandler(), 0)
  
  Chordian\SynthHandler_Thread = CreateThread(@SynthHandler(), 0)
  
  ThreadPriority(Chordian\RepaintHandler_Thread, 1)
  ThreadPriority(Chordian\PatternHandler_Thread, 30)
  ThreadPriority(Chordian\MachineHandler_Thread, 30)
  
  ThreadPriority(Chordian\SynthHandler_Thread, 31)
  
  DirectSoundBuffer\Play(0, 0, #DSBPLAY_LOOPING)
  
EndProcedure

Procedure Main()
  Protected Event.i
  
  Protected TempFloat.f
  Protected TempString.s
  Protected TempState.Machine_State_Save
  Protected *TempPointer
  
  Protected SendNewTick.i
  Protected SendNewChord.i
  
  Protected i.i
  Protected n.i
  
  Init()
  
  Repeat
    Event = WaitWindowEvent()
    Select Event
        
      Case #PB_Event_Menu
        ;--Menu Actions
        Select EventMenu()
          Case #Itm_Load
            TempString = OpenFileRequester("Chordian>Load machine state...", "", "JSON (*.json)|*.json|All Files (*.*)|*.*", 0)
            If TempString
              If LoadJSON(#JSON_Main, TempString)
                ResetMachine()
                ResetInput()
                
                ExtractJSONStructure(JSONValue(#JSON_Main), @TempState, Machine_State_Save)
                FreeJSON(#JSON_Main)
                
                Chordian\Machine_State\Value_Master_Button_Power_OnOff = TempState\Value_Master_Button_Power_OnOff
                Chordian\Machine_State\Value_Master_Knob_Volume = TempState\Value_Master_Knob_Volume
                
                Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1 = TempState\Value_Level_Knob_Volume_Harp_1
                Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2 = TempState\Value_Level_Knob_Volume_Harp_2
                Chordian\Machine_State\Value_Level_Knob_Sustain = TempState\Value_Level_Knob_Sustain
                Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard = TempState\Value_Level_Knob_Volume_Keyboard
                Chordian\Machine_State\Value_Level_Knob_Volume_Chords = TempState\Value_Level_Knob_Volume_Chords
                
                Chordian\Machine_State\Value_Rhythm_Button_Alternate_OnOff = TempState\Value_Rhythm_Button_Alternate_OnOff
                Chordian\Machine_State\Value_Rhythm_Button_Pattern = TempState\Value_Rhythm_Button_Pattern
                Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff = TempState\Value_Rhythm_Button_AutoBassSync_OnOff
                Chordian\Machine_State\Value_Rhythm_Knob_Tempo = TempState\Value_Rhythm_Knob_Tempo
                Chordian\Machine_State\Value_Rhythm_Knob_Volume = TempState\Value_Rhythm_Knob_Volume
                
                Chordian\Machine_State\Value_Memory_Button_Memory_OnOff = TempState\Value_Memory_Button_Memory_OnOff
                Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff = TempState\Value_Memory_Button_Playback_Record_OnOff
                Chordian\Machine_State\Value_Memory_Button_Repeat_Delete = TempState\Value_Memory_Button_Repeat_Delete
                Chordian\Machine_State\Value_Memory_Button_Playback_Enter = TempState\Value_Memory_Button_Playback_Enter
                
                Chordian\Machine_State\Value_Circuit_Knob_Tuning = TempState\Value_Circuit_Knob_Tuning
                
                Chordian\Machine_State\Value_External_ChordiateMode = TempState\Value_External_ChordiateMode
                
                CopyArray(TempState\Data_MIDI(), Chordian\Machine_State\Data_MIDI())
                CopyArray(TempState\Data_Patterns(), Chordian\Machine_State\Data_Patterns())
                
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTuning, 1, 0)
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                SetMenuItemState(#Men_Main, #Itm_ChordiateMode, Chordian\Machine_State\Value_External_ChordiateMode)
                PostEvent(#PB_Event_Repaint)
              EndIf
              
            EndIf
            
          Case #Itm_Save
            TempString = SaveFileRequester("Chordian>Save machine state...", "", "JSON (*.json)|*.json|All Files (*.*)|*.*", 0)
            If TempString
              Select FileSize(TempString)
                Case -2
                  MessageRequester("Chordian>Error", "Cannot save file "+TempString+", entry occupied by folder.")
                Case -1
                  CreateJSON(#JSON_Main)
                  InsertJSONStructure(JSONValue(#JSON_Main), @Chordian\Machine_State, Machine_State_Save)
                  SaveJSON(#JSON_Main, TempString)
                  FreeJSON(#JSON_Main)
                Default
                  Select MessageRequester("Chordian>Warning", "File "+TempString+" already exists."+#CRLF$+"Do you want to overwrite it?", #PB_MessageRequester_YesNoCancel)
                    Case #PB_MessageRequester_Yes
                      CreateJSON(#JSON_Main)
                      InsertJSONStructure(JSONValue(#JSON_Main), @Chordian\Machine_State, Machine_State_Save)
                      SaveJSON(#JSON_Main, TempString)
                      FreeJSON(#JSON_Main)
                    Case #PB_MessageRequester_Cancel
                      PostEvent(#PB_Event_Menu, #Win_Main, #Itm_Save)
                  EndSelect
              EndSelect
            EndIf
            
          Case #Itm_Reset
            ResetMachine()
            ResetInput()
            PostEvent(#PB_Event_Repaint)
            
            
          Case #Itm_Exit
            PostEvent(#PB_Event_CloseWindow)
            
          Case #Itm_Tuning
            TempString = InputRequester("Chordian>Master>Tuning", "Insert new Tuning. (0.5)", StrF(Chordian\Machine_State\Value_Circuit_Knob_Tuning))
            If Len(TempString) > 0
              Chordian\Machine_State\Value_Circuit_Knob_Tuning = ValF(TempString)
            EndIf
            
            Select Chordian\Machine_State\Value_External_ChordiateMode
              Case 1
                KeepInRange(Chordian\Machine_State\Value_Circuit_Knob_Tuning, -2.0, 2.0)
              Default
                KeepInRange(Chordian\Machine_State\Value_Circuit_Knob_Tuning, 0.0, 1.0)
            EndSelect
            
            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTuning, 1, 0)
            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
            
          Case #Itm_ChordiateMode
            SetMenuItemState(#Men_Main, #Itm_ChordiateMode, Bool(Not GetMenuItemState(#Men_Main, #Itm_ChordiateMode)))
            Chordian\Machine_State\Value_External_ChordiateMode = GetMenuItemState(#Men_Main, #Itm_ChordiateMode)
            
          Case #Itm_PatEdit
            ;---PatEdit
            If MessageRequester("Chordian>Warning", "You are about to enter the Pattern Editor."+#CRLF$+"Any changes are applied immediately."+#CRLF$+"Do you wish to continue?", #PB_MessageRequester_YesNo) = #PB_MessageRequester_Yes
              DisableWindow(#Win_Main, 1)
              If IsWindow(#Win_PatEdit)
                HideWindow(#Win_PatEdit, 0, #PB_Window_WindowCentered)
              Else
                If Not OpenWindow(#Win_PatEdit, 0, 0, 680, 580, "Chordian>Pattern Editor", #PB_Window_SystemMenu | #PB_Window_WindowCentered, WindowID(#Win_Main))
                  MessageRequester("Chordian>Error", "Pattern Editor could not be initialized.")
                  DisableWindow(#Win_Main, 0)
                  SetActiveGadget(#Gad_Canvas)
                  Continue
                EndIf
                
                ComboBoxGadget(#Gad_PatEdit_Select_Alternate, 60, 10, 150, 20)
                AddGadgetItem(#Gad_PatEdit_Select_Alternate, -1, "Bank 1")
                AddGadgetItem(#Gad_PatEdit_Select_Alternate, -1, "Bank 2")
                
                SetGadgetState(#Gad_PatEdit_Select_Alternate, 0)
                
                ComboBoxGadget(#Gad_PatEdit_Select_Pattern, 212, 10, 150, 20)
                AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Rock 1 | March")
                AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Rock 2 | Tango")
                AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Disco | Blues")
                AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Latin | Swing")
                AddGadgetItem(#Gad_PatEdit_Select_Pattern, -1, "Country | Waltz")
                
                SetGadgetState(#Gad_PatEdit_Select_Pattern, 0)
                
                ComboBoxGadget(#Gad_PatEdit_Select_Note, 364, 10, 150, 20)
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "All")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "Scaled")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "C#/Db")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "G#/Ab")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "D#/Eb")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "A#/Bb")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "F")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "C")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "G")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "D")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "A")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "E")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "B")
                AddGadgetItem(#Gad_PatEdit_Select_Note, -1, "F#/Gb")
                
                SetGadgetState(#Gad_PatEdit_Select_Note, 1)
                
                ButtonGadget(#Gad_PatEdit_Button_Import, 516, 10, 70, 20, "Import...")
                ButtonGadget(#Gad_PatEdit_Button_Export, 591, 10, 70, 20, "Export...")
                
                TextGadget(#Gad_PatEdit_Text_0, 60, 35, 55, 20, "|  0")
                TextGadget(#Gad_PatEdit_Text_4, 212, 35, 55, 20, "|  4")
                TextGadget(#Gad_PatEdit_Text_8, 364, 35, 55, 20, "|  8")
                TextGadget(#Gad_PatEdit_Text_12, 516, 35, 55, 20, "| 12")
                
                
                TextGadget(#Gad_PatEdit_Text_Frequency, 10, 70, 50, 25, "Frequen.")
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Frequency+i, 60+36*i+(i/4)*8, 55, 36, 25, #PB_ComboBox_Image)
                Next
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Frequency+i+16, 60+36*i+(i/4)*8, 80, 36, 25, #PB_ComboBox_Image)
                Next
                
                For i = 0 To 31
                  AddGadgetItem(#Gad_PatEdit_Row_Frequency+i, -1, "1", ImageID(#Img_PatEdit_Note_1))
                  AddGadgetItem(#Gad_PatEdit_Row_Frequency+i, -1, "2", ImageID(#Img_PatEdit_Note_2))
                  AddGadgetItem(#Gad_PatEdit_Row_Frequency+i, -1, "3", ImageID(#Img_PatEdit_Note_3))
                  AddGadgetItem(#Gad_PatEdit_Row_Frequency+i, -1, "4", ImageID(#Img_PatEdit_Note_4))
                Next
                
                
                TextGadget(#Gad_PatEdit_Text_Bass, 10, 135, 50, 25, "Bass")
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Bass+i, 60+36*i+(i/4)*8, 120, 36, 25, #PB_ComboBox_Image)
                Next
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Bass+i+16, 60+36*i+(i/4)*8, 145, 36, 25, #PB_ComboBox_Image)
                Next
                
                For i = 0 To 31
                  AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "None", ImageID(#Img_PatEdit_Curve_None))
                  AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Trigger", ImageID(#Img_PatEdit_Curve_Trigger))
                  AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Attack", ImageID(#Img_PatEdit_Curve_Attack))
                  AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Decay", ImageID(#Img_PatEdit_Curve_Decay))
                  AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Sustain", ImageID(#Img_PatEdit_Curve_Sustain))
                  AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Release", ImageID(#Img_PatEdit_Curve_Release))
                  AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Oneshot", ImageID(#Img_PatEdit_Curve_Oneshot))
                  AddGadgetItem(#Gad_PatEdit_Row_Bass+i, -1, "Ignore", ImageID(#Img_PatEdit_Curve_Ignore))
                Next
                
                
                TextGadget(#Gad_PatEdit_Text_Chords, 10, 200, 50, 25, "Chords")
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Chords+i, 60+36*i+(i/4)*8, 185, 36, 25, #PB_ComboBox_Image)
                Next
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Chords+i+16, 60+36*i+(i/4)*8, 210, 36, 25, #PB_ComboBox_Image)
                Next
                
                For i = 0 To 31
                  AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "None", ImageID(#Img_PatEdit_Curve_None))
                  AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Trigger", ImageID(#Img_PatEdit_Curve_Trigger))
                  AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Attack", ImageID(#Img_PatEdit_Curve_Attack))
                  AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Decay", ImageID(#Img_PatEdit_Curve_Decay))
                  AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Sustain", ImageID(#Img_PatEdit_Curve_Sustain))
                  AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Release", ImageID(#Img_PatEdit_Curve_Release))
                  AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Oneshot", ImageID(#Img_PatEdit_Curve_Oneshot))
                  AddGadgetItem(#Gad_PatEdit_Row_Chords+i, -1, "Ignore", ImageID(#Img_PatEdit_Curve_Ignore))
                Next
                
                
                TextGadget(#Gad_PatEdit_Text_Drum_BD, 10, 265, 50, 25, "BD")
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_BD+i, 60+36*i+(i/4)*8, 250, 36, 25, #PB_ComboBox_Image)
                Next
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_BD+i+16, 60+36*i+(i/4)*8, 275, 36, 25, #PB_ComboBox_Image)
                Next
                
                For i = 0 To 31
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "None", ImageID(#Img_PatEdit_Curve_None))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Trigger", ImageID(#Img_PatEdit_Curve_Trigger))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Attack", ImageID(#Img_PatEdit_Curve_Attack))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Decay", ImageID(#Img_PatEdit_Curve_Decay))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Sustain", ImageID(#Img_PatEdit_Curve_Sustain))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Release", ImageID(#Img_PatEdit_Curve_Release))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Oneshot", ImageID(#Img_PatEdit_Curve_Oneshot))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_BD+i, -1, "Ignore", ImageID(#Img_PatEdit_Curve_Ignore))
                Next
                
                
                TextGadget(#Gad_PatEdit_Text_Drum_Click, 10, 330, 50, 25, "Click")
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_Click+i, 60+36*i+(i/4)*8, 315, 36, 25, #PB_ComboBox_Image)
                Next
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_Click+i+16, 60+36*i+(i/4)*8, 340, 36, 25, #PB_ComboBox_Image)
                Next
                
                For i = 0 To 31
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "None", ImageID(#Img_PatEdit_Curve_None))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Trigger", ImageID(#Img_PatEdit_Curve_Trigger))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Attack", ImageID(#Img_PatEdit_Curve_Attack))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Decay", ImageID(#Img_PatEdit_Curve_Decay))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Sustain", ImageID(#Img_PatEdit_Curve_Sustain))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Release", ImageID(#Img_PatEdit_Curve_Release))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Oneshot", ImageID(#Img_PatEdit_Curve_Oneshot))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Click+i, -1, "Ignore", ImageID(#Img_PatEdit_Curve_Ignore))
                Next
                
                
                TextGadget(#Gad_PatEdit_Text_Drum_HiHat, 10, 395, 50, 25, "HiHat")
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_HiHat+i, 60+36*i+(i/4)*8, 380, 36, 25, #PB_ComboBox_Image)
                Next
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_HiHat+i+16, 60+36*i+(i/4)*8, 405, 36, 25, #PB_ComboBox_Image)
                Next
                
                For i = 0 To 31
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "None", ImageID(#Img_PatEdit_Curve_None))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Trigger", ImageID(#Img_PatEdit_Curve_Trigger))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Attack", ImageID(#Img_PatEdit_Curve_Attack))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Decay", ImageID(#Img_PatEdit_Curve_Decay))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Sustain", ImageID(#Img_PatEdit_Curve_Sustain))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Release", ImageID(#Img_PatEdit_Curve_Release))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Oneshot", ImageID(#Img_PatEdit_Curve_Oneshot))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_HiHat+i, -1, "Ignore", ImageID(#Img_PatEdit_Curve_Ignore))
                Next
                
                
                TextGadget(#Gad_PatEdit_Text_Drum_Ride, 10, 460, 50, 25, "Ride")
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_Ride+i, 60+36*i+(i/4)*8, 445, 36, 25, #PB_ComboBox_Image)
                Next
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_Ride+i+16, 60+36*i+(i/4)*8, 470, 36, 25, #PB_ComboBox_Image)
                Next
                
                For i = 0 To 31
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "None", ImageID(#Img_PatEdit_Curve_None))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Trigger", ImageID(#Img_PatEdit_Curve_Trigger))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Attack", ImageID(#Img_PatEdit_Curve_Attack))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Decay", ImageID(#Img_PatEdit_Curve_Decay))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Sustain", ImageID(#Img_PatEdit_Curve_Sustain))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Release", ImageID(#Img_PatEdit_Curve_Release))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Oneshot", ImageID(#Img_PatEdit_Curve_Oneshot))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Ride+i, -1, "Ignore", ImageID(#Img_PatEdit_Curve_Ignore))
                Next
                
                
                TextGadget(#Gad_PatEdit_Text_Drum_Snare, 10, 525, 50, 25, "Snare")
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_Snare+i, 60+36*i+(i/4)*8, 510, 36, 25, #PB_ComboBox_Image)
                Next
                For i = 0 To 15
                  ComboBoxGadget(#Gad_PatEdit_Row_Drum_Snare+i+16, 60+36*i+(i/4)*8, 535, 36, 25, #PB_ComboBox_Image)
                Next
                
                For i = 0 To 31
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "None", ImageID(#Img_PatEdit_Curve_None))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Trigger", ImageID(#Img_PatEdit_Curve_Trigger))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Attack", ImageID(#Img_PatEdit_Curve_Attack))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Decay", ImageID(#Img_PatEdit_Curve_Decay))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Sustain", ImageID(#Img_PatEdit_Curve_Sustain))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Release", ImageID(#Img_PatEdit_Curve_Release))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Oneshot", ImageID(#Img_PatEdit_Curve_Oneshot))
                  AddGadgetItem(#Gad_PatEdit_Row_Drum_Snare+i, -1, "Ignore", ImageID(#Img_PatEdit_Curve_Ignore))
                Next
              EndIf
              PostEvent(#PB_Event_Gadget, #Win_PatEdit, #Gad_PatEdit_Select_Alternate)
              
              ;----PatEdit Events
              Repeat
                Event = WaitWindowEvent()
                Select Event
                  Case #PB_Event_Gadget
                    Select EventGadget()
                      Case #Gad_PatEdit_Select_Alternate, #Gad_PatEdit_Select_Pattern, #Gad_PatEdit_Select_Note
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0, 1
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Frequency+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Frequency))
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Bass+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Bass)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Chords+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Chords)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_BD+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_BD)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_Click+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_Click)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_HiHat+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_HiHat)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_Ride+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_Ride)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_Snare+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), #Note_First, i, #Pattern_Drum_Snare)+1)
                            Next
                            
                          Default
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Frequency+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Frequency))
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Bass+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Bass)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Chords+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Chords)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_BD+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_BD)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_Click+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_Click)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_HiHat+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_HiHat)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_Ride+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_Ride)+1)
                            Next
                            For i = 0 To 31
                              SetGadgetState(#Gad_PatEdit_Row_Drum_Snare+i, Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note)-2, i, #Pattern_Drum_Snare)+1)
                            Next
                        EndSelect
                        
                      Case #Gad_PatEdit_Button_Import
                        TempString = InputRequester("Chordian>Pattern Editor>Import", "Input the BASE64 to apply to the current pattern.", "")
                        If TempString
                          ;*TempPointer = AllocateMemory(Len(TempString)+1)
                          *TempPointer = LocalAlloc_(#LMEM_ZEROINIT, Len(TempString)+1)
                          PokeS(*TempPointer, TempString, Len(TempString), #PB_Ascii)
                          CompilerIf #PB_Compiler_Version >= 600
                            Base64DecoderBuffer(*TempPointer, Len(TempString), @Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), 0, 0, 0), SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1))
                          CompilerElse
                            Base64Decoder(*TempPointer, Len(TempString), @Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), 0, 0, 0), SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1))
                          CompilerEndIf
                          ;FreeMemory(*TempPointer)
                          LocalFree_(*TempPointer)
                        EndIf
                        
                        PostEvent(#PB_Event_Gadget, #Win_PatEdit, #Gad_PatEdit_Select_Alternate)
                        
                      Case #Gad_PatEdit_Button_Export
                        ;*TempPointer = AllocateMemory(SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1)*2)
                        *TempPointer = LocalAlloc_(#LMEM_ZEROINIT, SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1)*2)
                        CompilerIf #PB_Compiler_Version >= 600
                          Base64EncoderBuffer(@Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), 0, 0, 0), SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1), *TempPointer, SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1)*2)
                        CompilerElse
                          Base64Encoder(@Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), 0, 0, 0), SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1), *TempPointer, SizeOf(Byte)*(#Note_Last+1)*32*(#Pattern_Last+1)*2)
                        CompilerEndIf
                        InputRequester("Chordian>Pattern Editor>Export", "This is the BASE64 string for the current pattern:", PeekS(*TempPointer, -1, #PB_Ascii))
                        ;FreeMemory(*TempPointer)
                        LocalFree_(*TempPointer)
                        
                      Case #Gad_PatEdit_Row_Frequency To #Gad_PatEdit_Row_Frequency+31
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Frequency) = GetGadgetState(#Gad_PatEdit_Row_Frequency+i)
                              Next
                            Next
                          Case 1
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Select GetGadgetState(#Gad_PatEdit_Row_Frequency+i)
                                  Case 0, 1
                                    Select n
                                      Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                                        Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Frequency) = 1
                                      Default
                                        Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Frequency) = 0
                                    EndSelect
                                  Default
                                    Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Frequency) = GetGadgetState(#Gad_PatEdit_Row_Frequency+i)
                                EndSelect
                              Next
                            Next
                          Default
                            For i = 0 To 31
                              Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Frequency) = GetGadgetState(#Gad_PatEdit_Row_Frequency+i)
                            Next
                        EndSelect
                        
                      Case #Gad_PatEdit_Row_Bass To #Gad_PatEdit_Row_Bass+31
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0, 1
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Bass) = GetGadgetState(#Gad_PatEdit_Row_Bass+i)-1
                              Next
                            Next
                          Default
                            For i = 0 To 31
                              Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Bass) = GetGadgetState(#Gad_PatEdit_Row_Bass+i)-1
                            Next
                        EndSelect
                        
                      Case #Gad_PatEdit_Row_Chords To #Gad_PatEdit_Row_Chords+31
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0, 1
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Chords) = GetGadgetState(#Gad_PatEdit_Row_Chords+i)-1
                              Next
                            Next
                          Default
                            For i = 0 To 31
                              Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Chords) = GetGadgetState(#Gad_PatEdit_Row_Chords+i)-1
                            Next
                        EndSelect
                        
                        
                      Case #Gad_PatEdit_Row_Drum_BD To #Gad_PatEdit_Row_Drum_BD+31
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0, 1
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_BD) = GetGadgetState(#Gad_PatEdit_Row_Drum_BD+i)-1
                              Next
                            Next
                          Default
                            For i = 0 To 31
                              Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_BD) = GetGadgetState(#Gad_PatEdit_Row_Drum_BD+i)-1
                            Next
                        EndSelect
                        
                        
                      Case #Gad_PatEdit_Row_Drum_Click To #Gad_PatEdit_Row_Drum_Click+31
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0, 1
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_Click) = GetGadgetState(#Gad_PatEdit_Row_Drum_Click+i)-1
                              Next
                            Next
                          Default
                            For i = 0 To 31
                              Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_Click) = GetGadgetState(#Gad_PatEdit_Row_Drum_Click+i)-1
                            Next
                        EndSelect
                        
                        
                      Case #Gad_PatEdit_Row_Drum_HiHat To #Gad_PatEdit_Row_Drum_HiHat+31
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0, 1
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_HiHat) = GetGadgetState(#Gad_PatEdit_Row_Drum_HiHat+i)-1
                              Next
                            Next
                          Default
                            For i = 0 To 31
                              Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_HiHat) = GetGadgetState(#Gad_PatEdit_Row_Drum_HiHat+i)-1
                            Next
                        EndSelect
                        
                        
                      Case #Gad_PatEdit_Row_Drum_Ride To #Gad_PatEdit_Row_Drum_Ride+31
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0, 1
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_Ride) = GetGadgetState(#Gad_PatEdit_Row_Drum_Ride+i)-1
                              Next
                            Next
                          Default
                            For i = 0 To 31
                              Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_Ride) = GetGadgetState(#Gad_PatEdit_Row_Drum_Ride+i)-1
                            Next
                        EndSelect
                        
                        
                      Case #Gad_PatEdit_Row_Drum_Snare To #Gad_PatEdit_Row_Drum_Snare+31
                        Select GetGadgetState(#Gad_PatEdit_Select_Note)
                          Case 0, 1
                            For n = #Note_First To #Note_Last
                              For i = 0 To 31
                                Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), n, i, #Pattern_Drum_Snare) = GetGadgetState(#Gad_PatEdit_Row_Drum_Snare+i)-1
                              Next
                            Next
                          Default
                            For i = 0 To 31
                              Chordian\Machine_State\Data_Patterns(GetGadgetState(#Gad_PatEdit_Select_Alternate), GetGadgetState(#Gad_PatEdit_Select_Pattern), GetGadgetState(#Gad_PatEdit_Select_Note), i, #Pattern_Drum_Snare) = GetGadgetState(#Gad_PatEdit_Row_Drum_Snare+i)-1
                            Next
                        EndSelect
                        
                        
                    EndSelect
                    
                  Case #PB_Event_CloseWindow
                    HideWindow(#Win_PatEdit, 1)
                    Break
                    
                EndSelect
              ForEver
            EndIf
            
            DisableWindow(#Win_Main, 0)
            SetActiveGadget(#Gad_Canvas)
            
            
          Case #Itm_Manual
            ;RunProgram can be used as a form of ShellExecute_()
            RunProgram("readme.md")
            
          Case #Itm_About
            DisableWindow(#Win_Main, 1)
            CompilerIf Defined(PB_Editor_BuildCount, #PB_Constant)
              TempString = "An Omnichord Emulator"+#CRLF$+
                           "Build "+Str(#PB_Editor_BuildCount)+#CRLF$+
                           #CRLF$+
                           "Please see the GitHub page for more information."+#CRLF$+
                           "https://github.com/Jan125/pb.chordian"
            CompilerElseIf Defined(PB_Editor_CompileCount, #PB_Constant)
              TempString = "An Omnichord Emulator"+#CRLF$+
                           "Fragment "+Str(#PB_Editor_CompileCount)+#CRLF$+
                           #CRLF$+
                           "Please see the GitHub page for more information."+#CRLF$+
                           "https://github.com/Jan125/pb.chordian"
            CompilerElse
              TempString = "An Omnichord Emulator"+#CRLF$+
                           #CRLF$+
                           #CRLF$+
                           "Please see the GitHub page for more information."+#CRLF$+
                           "https://github.com/Jan125/pb.chordian"
            CompilerEndIf
            MessageRequester("Chordian>About", TempString, #PB_MessageRequester_Ok)
            DisableWindow(#Win_Main, 0)
            
        EndSelect
      Case #PB_Event_Gadget
        
        ;--Gadget Actions
        Select EventGadget()
          Case #Gad_Canvas
            ;---Canvas Actions
            With Chordian\Input_State
              Select EventType()
                Case #PB_EventType_KeyDown
                  PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key))
                  
                Case #PB_EventType_KeyUp
                  PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key))
                  
                Case #PB_EventType_LeftButtonDown
                  \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                  \Mouse_Button_Left_Current = 1
                  PostEvent(#Event_GetTriggers)
                  
                Case #PB_EventType_LeftButtonUp
                  \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                  \Mouse_Button_Left_Current = 0
                  PostEvent(#Event_GetTriggers)
                  
                Case #PB_EventType_RightButtonDown
                  \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                  \Mouse_Button_Right_Current = 1
                  PostEvent(#Event_GetTriggers)
                  
                Case #PB_EventType_RightButtonUp
                  \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                  \Mouse_Button_Right_Current = 0
                  PostEvent(#Event_GetTriggers)
                  
                Case #PB_EventType_MiddleButtonDown
                  \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                  \Mouse_Button_Middle_Current = 1
                  PostEvent(#Event_GetTriggers)
                  
                Case #PB_EventType_MiddleButtonUp
                  \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                  \Mouse_Button_Middle_Current = 0
                  PostEvent(#Event_GetTriggers)
                  
                Case #PB_EventType_MouseMove
                  \Mouse_Position_X_Previous = \Mouse_Position_X_Current
                  \Mouse_Position_Y_Previous = \Mouse_Position_Y_Current
                  \Mouse_Position_X_Current = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_MouseX)
                  \Mouse_Position_Y_Current = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_MouseY)
                  PostEvent(#Event_HandleTriggers)
                  
              EndSelect
            EndWith
        EndSelect
        
        
      Case #Event_GeneralKeyDown
        ;--GeneralKeyDown
        With Chordian\Input_State
          If \Keymap(EventData()) = 0
            PostEvent(#Event_HandleChordKeys)
            PostEvent(#Event_HandleHarpKeys)
            PostEvent(#Event_HandleFunctionKeys)
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
          EndIf
          \Keymap(EventData()) = 1
          \LastKey = EventData()
          \LastKeyEventWasDown = 1
        EndWith
        
      Case #Event_GeneralKeyUp
        ;--GeneralKeyUp
        With Chordian\Input_State
          \Keymap(EventData()) = 0
          PauseThread(Chordian\RepaintHandler_Thread)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
          ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
          ResumeThread(Chordian\RepaintHandler_Thread)
          If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff
            PostEvent(#Event_HandleChordKeys)
          EndIf
          \LastKeyEventWasDown = 0
          PostEvent(#Event_HandleFunctionKeys)
        EndWith
        
        ;--GetTriggers
      Case #Event_GetTriggers
        With Chordian\Input_State
          
          If Not (\Mouse_Button_Left_Current | \Mouse_Button_Middle_Current | \Mouse_Button_Right_Current)
            \Trigger_Master_Button_Power_OnOff = 0
            \Trigger_Master_Knob_Volume = 0
            
            \Trigger_Level_Knob_Volume_Harp_1 = 0
            \Trigger_Level_Knob_Volume_Harp_2 = 0
            \Trigger_Level_Knob_Sustain = 0
            \Trigger_Level_Knob_Volume_Keyboard = 0
            \Trigger_Level_Knob_Volume_Chords = 0
            
            \Trigger_Rhythm_Button_Alternate_OnOff = 0
            \Trigger_Rhythm_Button_Pattern = 0
            \Trigger_Rhythm_Button_AutoBassSync_OnOff = 0
            \Trigger_Rhythm_Knob_Tempo = 0
            \Trigger_Rhythm_Knob_Volume = 0
            
            \Trigger_Memory_Button_Memory_OnOff = 0
            \Trigger_Memory_Button_Playback_Record_OnOff = 0
            \Trigger_Memory_Button_Repeat_Delete = 0
            \Trigger_Memory_Button_Playback_Enter = 0
            
            \Trigger_Chord_Button_Major = 0
            \Trigger_Chord_Button_Minor = 0
            \Trigger_Chord_Button_7th = 0
            
            \Trigger_Harp = 0
            
            For i = #Harp_First To #Harp_Last
              Chordian\Machine_State\Status_Harp(i) = 0
            Next
          EndIf
          
          
          ;Power Button
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 126, 113, 145, 137) And Not \Mouse_Button_Left_Previous
            \Trigger_Master_Button_Power_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Master Volume Knob
          If Sqr(Pow(\Mouse_Position_X_Current-190, 2)+Pow(\Mouse_Position_Y_Current-116, 2)) <= 21
            \Trigger_Master_Knob_Volume = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          
          ;Harp Voice Volume Knobs
          If Sqr(Pow(\Mouse_Position_X_Current-94, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 21
            If Sqr(Pow(\Mouse_Position_X_Current-94, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 13
              \Trigger_Level_Knob_Volume_Harp_2 = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            Else
              \Trigger_Level_Knob_Volume_Harp_1 = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
          EndIf
          
          ;Harp Sustain Knob
          If Sqr(Pow(\Mouse_Position_X_Current-142, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 21
            \Trigger_Level_Knob_Sustain = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Keyboard&Chord Volume Knobs
          If Sqr(Pow(\Mouse_Position_X_Current-190, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 21
            If Sqr(Pow(\Mouse_Position_X_Current-190, 2)+Pow(\Mouse_Position_Y_Current-191, 2)) <= 13
              \Trigger_Level_Knob_Volume_Chords = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            Else
              \Trigger_Level_Knob_Volume_Keyboard = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
            EndIf
          EndIf
          
          
          ;Rhythm Alternate Button
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 36, 274, 55, 298) And Not \Mouse_Button_Left_Previous
            \Trigger_Rhythm_Button_Alternate_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Rhythm Selector Buttons
          
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 68, 274, 215, 298)
            \Trigger_Rhythm_Button_Pattern = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Rhythm Auto Bass Sync Button
          
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 84, 329, 103, 353) And Not \Mouse_Button_Left_Previous
            \Trigger_Rhythm_Button_AutoBassSync_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Rhythm Tempo Knob
          If Sqr(Pow(\Mouse_Position_X_Current-142, 2)+Pow(\Mouse_Position_Y_Current-339, 2)) <= 21
            \Trigger_Rhythm_Knob_Tempo = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Rhythm Volume Knob
          If Sqr(Pow(\Mouse_Position_X_Current-190, 2)+Pow(\Mouse_Position_Y_Current-339, 2)) <= 21
            \Trigger_Rhythm_Knob_Volume = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Memory On Off Button
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 126, 424, 145, 448) And Not \Mouse_Button_Left_Previous
            \Trigger_Memory_Button_Memory_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Memory Playback Record Button
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 159, 424, 178, 448) And Not \Mouse_Button_Left_Previous
            \Trigger_Memory_Button_Playback_Record_OnOff = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Memory Repeat Delete Button
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 192, 424, 211, 448) And Not \Mouse_Button_Left_Previous
            \Trigger_Memory_Button_Repeat_Delete = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Memory Playback Enter Button
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 162, 480, 206, 505) And Not \Mouse_Button_Left_Previous
            \Trigger_Memory_Button_Playback_Enter = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Chord buttons
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 271, 240, 631, 264)
            \Trigger_Chord_Button_Major = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 286, 283, 646, 307)
            \Trigger_Chord_Button_Minor = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 301, 326, 661, 350)
            \Trigger_Chord_Button_7th = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
          ;Strumplate
          If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 675, 0, 777, 600)
            \Trigger_Harp = \Mouse_Button_Left_Current | \Mouse_Button_Right_Current << 1 | \Mouse_Button_Middle_Current << 2
          EndIf
          
        EndWith
        
        PostEvent(#Event_HandleTriggers)
        
      Case #Event_HandleTriggers
        ;--HandleTriggers
        With Chordian\Input_State
          If \Trigger_Master_Button_Power_OnOff
            Select \Trigger_Master_Button_Power_OnOff
              Case 1
                \Trigger_Master_Button_Power_OnOff = 0
                Chordian\Machine_State\Value_Master_Button_Power_OnOff = Bool(Not Chordian\Machine_State\Value_Master_Button_Power_OnOff)
                Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None
                Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                
                For i = #Note_First To #Note_Last
                  For n = #Chord_First To #Chord_Last
                    \Keymap(\Keymap_Chord(n, i)) = 0
                  Next
                Next
                
                PostEvent(#PB_Event_Repaint)
              Default
                \Trigger_Master_Button_Power_OnOff = 0
            EndSelect
          EndIf
          
          If \Trigger_Master_Knob_Volume
            Select \Trigger_Master_Knob_Volume
              Case 1
                Chordian\Machine_State\Value_Master_Knob_Volume+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
              Case 2
                \Trigger_Master_Knob_Volume = 0
                TempString = InputRequester("Chordian>Master>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Master_Knob_Volume))
                If Len(TempString) > 0
                  Chordian\Machine_State\Value_Master_Knob_Volume = ValF(TempString)
                EndIf
            EndSelect
            
            KeepInRange(Chordian\Machine_State\Value_Master_Knob_Volume, 0.0, 1.0)
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Level_Knob_Volume_Harp_1
            Select \Trigger_Level_Knob_Volume_Harp_1
              Case 1
                Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
              Case 2
                \Trigger_Level_Knob_Volume_Harp_1 = 0
                TempString = InputRequester("Chordian>Harp>1>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1))
                If Len(TempString) > 0
                  Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1 = ValF(TempString)
                EndIf
            EndSelect
            
            KeepInRange(Chordian\Machine_State\Value_Level_Knob_Volume_Harp_1, 0.0, 1.0)
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          If \Trigger_Level_Knob_Volume_Harp_2
            Select \Trigger_Level_Knob_Volume_Harp_2
              Case 1
                Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
              Case 2
                \Trigger_Level_Knob_Volume_Harp_2 = 0
                TempString = InputRequester("Chordian>Harp>2>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2))
                If Len(TempString) > 0
                  Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2 = ValF(TempString)
                EndIf
            EndSelect
            
            KeepInRange(Chordian\Machine_State\Value_Level_Knob_Volume_Harp_2, 0.0, 1.0)
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          If \Trigger_Level_Knob_Sustain
            Select \Trigger_Level_Knob_Sustain
              Case 1
                Chordian\Machine_State\Value_Level_Knob_Sustain+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
              Case 2
                \Trigger_Level_Knob_Sustain = 0
                
                Select Chordian\Machine_State\Value_External_ChordiateMode
                  Case 1
                    TempString = InputRequester("Chordian>Harp>Sustain", "Insert new Volume. (-0.12-5.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Sustain))
                  Default
                    TempString = InputRequester("Chordian>Harp>Sustain", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Sustain))
                EndSelect
                
                If Len(TempString) > 0
                  Chordian\Machine_State\Value_Level_Knob_Sustain = ValF(TempString)
                EndIf
            EndSelect
            
            Select Chordian\Machine_State\Value_External_ChordiateMode
              Case 1
                KeepInRange(Chordian\Machine_State\Value_Level_Knob_Sustain, -0.12, 5.0)
              Default
                KeepInRange(Chordian\Machine_State\Value_Level_Knob_Sustain, 0.0, 1.0)
            EndSelect
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          If \Trigger_Level_Knob_Volume_Keyboard
            Select \Trigger_Level_Knob_Volume_Keyboard
              Case 1
                Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
              Case 2
                \Trigger_Level_Knob_Volume_Keyboard = 0
                TempString = InputRequester("Chordian>Keyboard>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard))
                If Len(TempString) > 0
                  Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard = ValF(TempString)
                EndIf
            EndSelect
            
            KeepInRange(Chordian\Machine_State\Value_Level_Knob_Volume_Keyboard, 0.0, 1.0)
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Level_Knob_Volume_Chords
            Select \Trigger_Level_Knob_Volume_Chords
              Case 1
                Chordian\Machine_State\Value_Level_Knob_Volume_Chords+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
              Case 2
                \Trigger_Level_Knob_Volume_Chords = 0
                TempString = InputRequester("Chordian>Chords>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Level_Knob_Volume_Chords))
                If Len(TempString) > 0
                  Chordian\Machine_State\Value_Level_Knob_Volume_Chords = ValF(TempString)
                EndIf
            EndSelect
            
            KeepInRange(Chordian\Machine_State\Value_Level_Knob_Volume_Chords, 0.0, 1.0)
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Rhythm_Button_Alternate_OnOff
            \Trigger_Rhythm_Button_Alternate_OnOff = 0
            Chordian\Machine_State\Value_Rhythm_Button_Alternate_OnOff = Bool(Not Chordian\Machine_State\Value_Rhythm_Button_Alternate_OnOff)
            
            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Rhythm_Button_Pattern ;FroggiFifi - Rhythm buttons do not pop out when pressed again, only by lightly pressing another rhythm button - Unemulatable, will stay as it is currently.
            \Trigger_Rhythm_Button_Pattern = 0
            If (\Mouse_Position_X_Current-68)%32 <= 20
              If (\Mouse_Position_X_Current-68)/32 = Chordian\Machine_State\Value_Rhythm_Button_Pattern
                Chordian\Machine_State\Value_Rhythm_Button_Pattern = #Rhythm_None
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
              Else
                If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                  Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Release
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_1) = #Curve_Release
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_2) = #Curve_Release
                  Chordian\Machine_State\Status_Sound(#Snd_Chord_3) = #Curve_Release
                EndIf
                Chordian\Machine_State\Value_Rhythm_Button_Pattern = (\Mouse_Position_X_Current-68)/32
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
              EndIf
            EndIf
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Rhythm_Button_AutoBassSync_OnOff
            \Trigger_Rhythm_Button_AutoBassSync_OnOff = 0
            If Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff
              If Chordian\Machine_State\Value_Internal_Chord_Chord <> #Chord_None And Chordian\Machine_State\Value_Internal_Chord_Note <> #Note_None
                Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Trigger
                Chordian\Machine_State\Status_Sound(#Snd_Chord_1) = #Curve_Trigger
                Chordian\Machine_State\Status_Sound(#Snd_Chord_2) = #Curve_Trigger
                Chordian\Machine_State\Status_Sound(#Snd_Chord_3) = #Curve_Trigger
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
              Else
                Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Release
                Chordian\Machine_State\Status_Sound(#Snd_Chord_1) = #Curve_Release
                Chordian\Machine_State\Status_Sound(#Snd_Chord_2) = #Curve_Release
                Chordian\Machine_State\Status_Sound(#Snd_Chord_3) = #Curve_Release
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
              EndIf
            Else
              Chordian\Machine_State\Status_Sound(#Snd_Bass) = #Curve_Release
              Chordian\Machine_State\Status_Sound(#Snd_Chord_1) = #Curve_Release
              Chordian\Machine_State\Status_Sound(#Snd_Chord_2) = #Curve_Release
              Chordian\Machine_State\Status_Sound(#Snd_Chord_3) = #Curve_Release
              ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
            EndIf
            
            Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff = Bool(Not Chordian\Machine_State\Value_Rhythm_Button_AutoBassSync_OnOff)
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Rhythm_Knob_Tempo
            Select \Trigger_Rhythm_Knob_Tempo
              Case 1
                Chordian\Machine_State\Value_Rhythm_Knob_Tempo+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
              Case 2
                \Trigger_Rhythm_Knob_Tempo = 0
                
                Select Chordian\Machine_State\Value_External_ChordiateMode
                  Case 1
                    TempString = UCase(InputRequester("Chordian>Rhythm>Tempo", "Insert new Tempo. (0.0-5.0; 70.5BPM-7986.70BPM)", StrF(Chordian\Machine_State\Value_Rhythm_Knob_Tempo)+Chr(9)+StrF((((60.0/(1.0/(4.7+Pow(Chordian\Machine_State\Value_Rhythm_Knob_Tempo, 2.2)*15.3))))/4), 2)+"BPM"))
                  Default
                    TempString = UCase(InputRequester("Chordian>Rhythm>Tempo", "Insert new Tempo. (0.0-1.0; 70.5BPM-300BPM)", StrF(Chordian\Machine_State\Value_Rhythm_Knob_Tempo)+Chr(9)+StrF((((60.0/(1.0/(4.7+Pow(Chordian\Machine_State\Value_Rhythm_Knob_Tempo, 2.2)*15.3))))/4), 2)+"BPM"))
                EndSelect
                
                If Len(TempString) > 0
                  If CountString(TempString, Chr(9))
                    TempString = StringField(TempString, 1, Chr(9))
                  EndIf
                  If Len(TempString) >= 3
                    If Right(TempString, 3) = "BPM"
                      TempFloat = ValF(Left(TempString, Len(TempString)-3))
                      TempString = ""
                      Chordian\Machine_State\Value_Rhythm_Knob_Tempo = Pow(((((TempFloat/60)*4)-4.7)/15.3), 1/2.2)
                      TempFloat = 0
                    Else
                      Chordian\Machine_State\Value_Rhythm_Knob_Tempo = ValF(TempString)
                    EndIf
                  Else
                    Chordian\Machine_State\Value_Rhythm_Knob_Tempo = ValF(TempString)
                  EndIf
                EndIf
            EndSelect
            
            Select Chordian\Machine_State\Value_External_ChordiateMode
              Case 1
                KeepInRange(Chordian\Machine_State\Value_Rhythm_Knob_Tempo, 0.0, 5.0)
              Default
                KeepInRange(Chordian\Machine_State\Value_Rhythm_Knob_Tempo, 0.0, 1.0)
            EndSelect
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Rhythm_Knob_Volume
            Select \Trigger_Rhythm_Knob_Volume
              Case 1
                Chordian\Machine_State\Value_Rhythm_Knob_Volume+(\Mouse_Position_Y_Previous-\Mouse_Position_Y_Current)/400.0-(\Mouse_Position_X_Previous-\Mouse_Position_X_Current)/2000.0
              Case 2
                \Trigger_Rhythm_Knob_Volume = 0
                TempString = InputRequester("Chordian>Rhythm>Volume", "Insert new Volume. (0.0-1.0)", StrF(Chordian\Machine_State\Value_Rhythm_Knob_Volume))
                If Len(TempString) > 0
                  Chordian\Machine_State\Value_Rhythm_Knob_Volume = ValF(TempString)
                EndIf
            EndSelect
            
            KeepInRange(Chordian\Machine_State\Value_Rhythm_Knob_Volume, 0.0, 1.0)
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Memory_Button_Memory_OnOff
            \Trigger_Memory_Button_Memory_OnOff = 0
            Chordian\Machine_State\Value_Memory_Button_Memory_OnOff = Bool(Not Chordian\Machine_State\Value_Memory_Button_Memory_OnOff)
            
            Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_None
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Memory_Button_Playback_Record_OnOff
            \Trigger_Memory_Button_Playback_Record_OnOff = 0
            Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff = Bool(Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff)
            
            Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_None
            
            PostEvent(#Event_HandleChordKeys)
            PostEvent(#Event_HandleHarpKeys)
            PostEvent(#PB_Event_Repaint)
            
          EndIf
          
          
          If \Trigger_Memory_Button_Repeat_Delete
            \Trigger_Memory_Button_Repeat_Delete = 0
            Chordian\Machine_State\Value_Memory_Button_Repeat_Delete = Bool(Not Chordian\Machine_State\Value_Memory_Button_Repeat_Delete)
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
            
          EndIf
          
          
          If \Trigger_Memory_Button_Playback_Enter
            \Trigger_Memory_Button_Playback_Enter = 0
            If \Keymap(\Keymap_Function(#Btn_Memory_Playback_Enter))
              PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Function(#Btn_Memory_Playback_Enter))
            Else
              PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Function(#Btn_Memory_Playback_Enter))
            EndIf
            
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
          EndIf
          
          
          If \Trigger_Chord_Button_Major = 1
            \Trigger_Chord_Button_Major = 0
            If (\Mouse_Position_X_Current-271)%31 <= 20
              If Not \Keymap(\Keymap_Chord(#Chord_Maj, (\Mouse_Position_X_Current-271)/31))
                PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Chord(#Chord_Maj, (\Mouse_Position_X_Current-271)/31))
              Else
                PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Chord(#Chord_Maj, (\Mouse_Position_X_Current-271)/31))
              EndIf
            EndIf
          ElseIf \Trigger_Chord_Button_Major = 2
            \Trigger_Chord_Button_Major = 0
            If (\Mouse_Position_X_Current-271)%31 <= 20
              PauseThread(Chordian\RepaintHandler_Thread)
              StartDrawing(CanvasOutput(#Gad_Canvas))
              DrawAlphaImage(ImageID(#Img_Button_Red_On), 271+((\Mouse_Position_X_Current-271)/31)*31, 240)
              StopDrawing()
              ResumeThread(Chordian\RepaintHandler_Thread)
              Repeat
                Event = WaitWindowEvent()
                Select Event
                  Case #PB_Event_Gadget
                    Select EventGadget()
                      Case #Gad_Canvas
                        Select EventType()
                          Case #PB_EventType_KeyUp
                            Select GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                              Case #VK_ESCAPE
                                PauseThread(Chordian\RepaintHandler_Thread)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                                ResumeThread(Chordian\RepaintHandler_Thread)
                                Break
                              Default
                                \Keymap_Chord(#Chord_Maj, (\Mouse_Position_X_Current-271)/31) = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                PauseThread(Chordian\RepaintHandler_Thread)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                                ResumeThread(Chordian\RepaintHandler_Thread)
                                Break
                            EndSelect
                            
                          Case #PB_EventType_LeftButtonDown
                            \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                            \Mouse_Button_Left_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_LeftButtonUp
                            \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                            \Mouse_Button_Left_Current = 0
                            
                          Case #PB_EventType_RightButtonDown
                            \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                            \Mouse_Button_Right_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_RightButtonUp
                            \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                            \Mouse_Button_Right_Current = 0
                            
                          Case #PB_EventType_MiddleButtonDown
                            \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                            \Mouse_Button_Middle_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_MiddleButtonUp
                            \Mouse_Button_Right_Previous = \Mouse_Button_Middle_Current
                            \Mouse_Button_Middle_Current = 0
                            
                        EndSelect
                    EndSelect
                  Case #PB_Event_CloseWindow
                    PostEvent(#PB_Event_CloseWindow)
                    Break
                  Default
                EndSelect
              ForEver
            EndIf
          EndIf
          
          If \Trigger_Chord_Button_Minor = 1
            \Trigger_Chord_Button_Minor = 0
            If (\Mouse_Position_X_Current-286)%31 <= 20
              If Not \Keymap(\Keymap_Chord(#Chord_Min, (\Mouse_Position_X_Current-286)/31))
                PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Chord(#Chord_Min, (\Mouse_Position_X_Current-286)/31))
              Else
                PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Chord(#Chord_Min, (\Mouse_Position_X_Current-286)/31))
              EndIf
            EndIf
          ElseIf \Trigger_Chord_Button_Minor = 2
            \Trigger_Chord_Button_Minor = 0
            If (\Mouse_Position_X_Current-286)%31 <= 20
              PauseThread(Chordian\RepaintHandler_Thread)
              StartDrawing(CanvasOutput(#Gad_Canvas))
              DrawAlphaImage(ImageID(#Img_Button_Red_On), 286+((\Mouse_Position_X_Current-286)/31)*31, 283)
              StopDrawing()
              ResumeThread(Chordian\RepaintHandler_Thread)
              Repeat
                Event = WaitWindowEvent()
                Select Event
                  Case #PB_Event_Gadget
                    Select EventGadget()
                      Case #Gad_Canvas
                        Select EventType()
                          Case #PB_EventType_KeyUp
                            Select GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                              Case #VK_ESCAPE
                                PauseThread(Chordian\RepaintHandler_Thread)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                                ResumeThread(Chordian\RepaintHandler_Thread)
                                Break
                              Default
                                \Keymap_Chord(#Chord_Min, (\Mouse_Position_X_Current-286)/31) = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                PauseThread(Chordian\RepaintHandler_Thread)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                                ResumeThread(Chordian\RepaintHandler_Thread)
                                Break
                            EndSelect
                            
                          Case #PB_EventType_LeftButtonDown
                            \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                            \Mouse_Button_Left_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_LeftButtonUp
                            \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                            \Mouse_Button_Left_Current = 0
                            
                          Case #PB_EventType_RightButtonDown
                            \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                            \Mouse_Button_Right_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_RightButtonUp
                            \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                            \Mouse_Button_Right_Current = 0
                            
                          Case #PB_EventType_MiddleButtonDown
                            \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                            \Mouse_Button_Middle_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_MiddleButtonUp
                            \Mouse_Button_Right_Previous = \Mouse_Button_Middle_Current
                            \Mouse_Button_Middle_Current = 0
                            
                        EndSelect
                    EndSelect
                  Case #PB_Event_CloseWindow
                    PostEvent(#PB_Event_CloseWindow)
                    Break
                  Default
                EndSelect
              ForEver
            EndIf
          EndIf
          
          If \Trigger_Chord_Button_7th = 1
            \Trigger_Chord_Button_7th = 0
            If (\Mouse_Position_X_Current-301)%31 <= 20
              If Not \Keymap(\Keymap_Chord(#Chord_7th, (\Mouse_Position_X_Current-301)/31))
                PostEvent(#Event_GeneralKeyDown, #Win_Main, #Gad_Canvas, #Event_GeneralKeyDown, \Keymap_Chord(#Chord_7th, (\Mouse_Position_X_Current-301)/31))
              Else
                PostEvent(#Event_GeneralKeyUp, #Win_Main, #Gad_Canvas, #Event_GeneralKeyUp, \Keymap_Chord(#Chord_7th, (\Mouse_Position_X_Current-301)/31))
              EndIf
            EndIf
          ElseIf \Trigger_Chord_Button_7th = 2
            \Trigger_Chord_Button_7th = 0
            If (\Mouse_Position_X_Current-301)%31 <= 20
              PauseThread(Chordian\RepaintHandler_Thread)
              StartDrawing(CanvasOutput(#Gad_Canvas))
              DrawAlphaImage(ImageID(#Img_Button_Red_On), 301+((\Mouse_Position_X_Current-301)/31)*31, 326)
              StopDrawing()
              ResumeThread(Chordian\RepaintHandler_Thread)
              Repeat
                Event = WaitWindowEvent()
                Select Event
                  Case #PB_Event_Gadget
                    Select EventGadget()
                      Case #Gad_Canvas
                        Select EventType()
                          Case #PB_EventType_KeyUp
                            Select GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                              Case #VK_ESCAPE
                                PauseThread(Chordian\RepaintHandler_Thread)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                                ResumeThread(Chordian\RepaintHandler_Thread)
                                Break
                              Default
                                \Keymap_Chord(#Chord_7th, (\Mouse_Position_X_Current-301)/31) = GetGadgetAttribute(#Gad_Canvas, #PB_Canvas_Key)
                                PauseThread(Chordian\RepaintHandler_Thread)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                                ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                                ResumeThread(Chordian\RepaintHandler_Thread)
                                Break
                            EndSelect
                            
                          Case #PB_EventType_LeftButtonDown
                            \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                            \Mouse_Button_Left_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_LeftButtonUp
                            \Mouse_Button_Left_Previous = \Mouse_Button_Left_Current
                            \Mouse_Button_Left_Current = 0
                            
                          Case #PB_EventType_RightButtonDown
                            \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                            \Mouse_Button_Right_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_RightButtonUp
                            \Mouse_Button_Right_Previous = \Mouse_Button_Right_Current
                            \Mouse_Button_Right_Current = 0
                            
                          Case #PB_EventType_MiddleButtonDown
                            \Mouse_Button_Middle_Previous = \Mouse_Button_Middle_Current
                            \Mouse_Button_Middle_Current = 1
                            PauseThread(Chordian\RepaintHandler_Thread)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
                            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
                            ResumeThread(Chordian\RepaintHandler_Thread)
                            Break
                            
                          Case #PB_EventType_MiddleButtonUp
                            \Mouse_Button_Right_Previous = \Mouse_Button_Middle_Current
                            \Mouse_Button_Middle_Current = 0
                            
                        EndSelect
                    EndSelect
                  Case #PB_Event_CloseWindow
                    PostEvent(#PB_Event_CloseWindow)
                    Break
                  Default
                EndSelect
              ForEver
            EndIf
          EndIf
          
          
          If \Trigger_Harp
            If IsInRect(\Mouse_Position_X_Current, \Mouse_Position_Y_Current, 749, 130, 777, 150)
              Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None
              Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
              For i = #Note_First To #Note_Last
                For n = #Chord_First To #Chord_Last
                  \Keymap(\Keymap_Chord(n, i)) = 0
                Next
              Next
              Chordian\Machine_State\Value_Internal_Tick = 0
              ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
              PauseThread(Chordian\RepaintHandler_Thread)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
              ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
              ResumeThread(Chordian\RepaintHandler_Thread)
            Else
              If \Trigger_Harp
                Select \Mouse_Position_Y_Current
                  Case 92 To 388
                    If Not Chordian\Machine_State\Status_Harp(#Harp_First-(\Mouse_Position_Y_Current-389)/24)
                      For i = #Harp_First To #Harp_Last
                        Chordian\Machine_State\Status_Harp(i) = 0
                      Next
                      Chordian\Machine_State\Status_Harp(#Harp_First-(\Mouse_Position_Y_Current-389)/24) = 1
                      Chordian\Machine_State\Status_Sound(#Snd_Harp_First-(\Mouse_Position_Y_Current-389)/24) = #Curve_Trigger
                      If \Trigger_Harp & 2
                        If #Harp_First+1-(\Mouse_Position_Y_Current-389)/24 <= #Harp_Last
                          Chordian\Machine_State\Status_Sound(#Snd_Harp_First+1-(\Mouse_Position_Y_Current-389)/24) = #Curve_Trigger
                        EndIf
                        If #Harp_First+2-(\Mouse_Position_Y_Current-389)/24 <= #Harp_Last
                          Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-389)/24) = #Curve_Trigger
                        EndIf
                      EndIf
                      If \Trigger_Harp & 4
                        If #Harp_First+2-(\Mouse_Position_Y_Current-389)/24 <= #Harp_Last
                          Chordian\Machine_State\Status_Sound(#Snd_Harp_First+2-(\Mouse_Position_Y_Current-389)/24) = #Curve_Trigger
                        EndIf
                        If #Harp_First+4-(\Mouse_Position_Y_Current-389)/24 <= #Harp_Last
                          Chordian\Machine_State\Status_Sound(#Snd_Harp_First+4-(\Mouse_Position_Y_Current-389)/24) = #Curve_Trigger
                        EndIf
                      EndIf
                    EndIf
                    
                  Default
                    For i = #Harp_First To #Harp_Last
                      Chordian\Machine_State\Status_Harp(i) = 0
                    Next
                    
                EndSelect
              EndIf
              
            EndIf
          EndIf
        EndWith
        
        
      Case #Event_HandleChordKeys
        ;--HandleChordKeys
        With Chordian\Input_State
          If Chordian\Machine_State\Value_Master_Button_Power_OnOff
            If Not Chordian\Machine_State\Value_Memory_Button_Memory_OnOff
              If Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None Or Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                Chordian\Machine_State\Value_Internal_Tick = 0
                SendNewTick = 1
              EndIf
              
              Select \LastKey
                Case \Keymap_Chord(#Chord_Maj, #Note_Db), \Keymap_Chord(#Chord_Min, #Note_Db), \Keymap_Chord(#Chord_7th, #Note_Db)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Db
                Case \Keymap_Chord(#Chord_Maj, #Note_Ab), \Keymap_Chord(#Chord_Min, #Note_Ab), \Keymap_Chord(#Chord_7th, #Note_Ab)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Ab
                Case \Keymap_Chord(#Chord_Maj, #Note_Eb), \Keymap_Chord(#Chord_Min, #Note_Eb), \Keymap_Chord(#Chord_7th, #Note_Eb)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Eb
                Case \Keymap_Chord(#Chord_Maj, #Note_Bb), \Keymap_Chord(#Chord_Min, #Note_Bb), \Keymap_Chord(#Chord_7th, #Note_Bb)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Bb
                Case \Keymap_Chord(#Chord_Maj, #Note_F), \Keymap_Chord(#Chord_Min, #Note_F), \Keymap_Chord(#Chord_7th, #Note_F)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_F
                Case \Keymap_Chord(#Chord_Maj, #Note_C), \Keymap_Chord(#Chord_Min, #Note_C), \Keymap_Chord(#Chord_7th, #Note_C)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_C
                Case \Keymap_Chord(#Chord_Maj, #Note_G), \Keymap_Chord(#Chord_Min, #Note_G), \Keymap_Chord(#Chord_7th, #Note_G)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_G
                Case \Keymap_Chord(#Chord_Maj, #Note_D), \Keymap_Chord(#Chord_Min, #Note_D), \Keymap_Chord(#Chord_7th, #Note_D)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_D
                Case \Keymap_Chord(#Chord_Maj, #Note_A), \Keymap_Chord(#Chord_Min, #Note_A), \Keymap_Chord(#Chord_7th, #Note_A)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_A
                Case \Keymap_Chord(#Chord_Maj, #Note_E), \Keymap_Chord(#Chord_Min, #Note_E), \Keymap_Chord(#Chord_7th, #Note_E)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_E
                Case \Keymap_Chord(#Chord_Maj, #Note_B), \Keymap_Chord(#Chord_Min, #Note_B), \Keymap_Chord(#Chord_7th, #Note_B)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_B
                Case \Keymap_Chord(#Chord_Maj, #Note_Fc), \Keymap_Chord(#Chord_Min, #Note_Fc), \Keymap_Chord(#Chord_7th, #Note_Fc)
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_Fc
              EndSelect
              
              If Chordian\Machine_State\Value_Internal_Chord_Note <> #Note_None
                If \Keymap(\Keymap_Chord(#Chord_Maj, Chordian\Machine_State\Value_Internal_Chord_Note)) And \Keymap(\Keymap_Chord(#Chord_Min, Chordian\Machine_State\Value_Internal_Chord_Note)) And \Keymap(\Keymap_Chord(#Chord_7th, Chordian\Machine_State\Value_Internal_Chord_Note))
                  Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug
                  SendNewChord = 1
                  If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                    SendNewTick = 1
                  EndIf
                ElseIf \Keymap(\Keymap_Chord(#Chord_Maj, Chordian\Machine_State\Value_Internal_Chord_Note)) And \Keymap(\Keymap_Chord(#Chord_Min, Chordian\Machine_State\Value_Internal_Chord_Note))
                  If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug
                    If \LastKeyEventWasDown
                      \LastKeyEventWasDown = 0
                      Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim
                      SendNewChord = 1
                    EndIf
                  Else
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim
                    SendNewChord = 1
                  EndIf
                  If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                    SendNewTick = 1
                  EndIf
                ElseIf \Keymap(\Keymap_Chord(#Chord_Maj, Chordian\Machine_State\Value_Internal_Chord_Note)) And \Keymap(\Keymap_Chord(#Chord_7th, Chordian\Machine_State\Value_Internal_Chord_Note))
                  If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug
                    If \LastKeyEventWasDown
                      \LastKeyEventWasDown = 0
                      Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7
                      SendNewChord = 1
                    EndIf
                  Else
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7
                    SendNewChord = 1
                  EndIf
                  If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                    SendNewTick = 1
                  EndIf
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, Chordian\Machine_State\Value_Internal_Chord_Note)) And \Keymap(\Keymap_Chord(#Chord_7th, Chordian\Machine_State\Value_Internal_Chord_Note))
                  If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug
                    If \LastKeyEventWasDown
                      \LastKeyEventWasDown = 0
                      Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7
                      SendNewChord = 1
                    EndIf
                  Else
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7
                    SendNewChord = 1
                  EndIf
                  If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                    SendNewTick = 1
                  EndIf
                ElseIf \Keymap(\Keymap_Chord(#Chord_Maj, Chordian\Machine_State\Value_Internal_Chord_Note))
                  If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And (Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7 Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7)
                  Else
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Maj
                    SendNewChord = 1
                  EndIf
                  If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                    SendNewTick = 1
                  EndIf
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, Chordian\Machine_State\Value_Internal_Chord_Note))
                  If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And (Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7 Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7)
                  Else
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Min
                    SendNewChord = 1
                  EndIf
                  If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                    SendNewTick = 1
                  EndIf
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, Chordian\Machine_State\Value_Internal_Chord_Note))
                  If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff And (Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Aug Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Dim Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Ma7 Or Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_Mi7)
                  Else
                    Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_7th
                    SendNewChord = 1
                  EndIf
                  If Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current  = #Rhythm_None
                    SendNewTick = 1
                  EndIf
                ElseIf Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff
                  Chordian\Machine_State\Value_Internal_Chord_Note = #Note_None
                  Chordian\Machine_State\Value_Internal_Chord_Chord = #Chord_None
                  Chordian\Machine_State\Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_StopAllSounds, 1, 0)
                EndIf
              EndIf
              If SendNewChord
                SendNewChord = 0
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
              EndIf
              If SendNewTick
                SendNewTick = 0
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTick, 1, 0)
                ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
              EndIf
            Else
              If Not Chordian\Machine_State\Value_Memory_Button_Playback_Record_OnOff
                ;--Keyboard
                If \Keymap(\Keymap_Chord(#Chord_Maj, #Note_Eb)) And Not Chordian\Machine_State\Value_Internal_Keyboard_ButtonDown
                  Chordian\Machine_State\Value_Internal_Keyboard_Transpose - 1
                  Chordian\Machine_State\Value_Internal_Keyboard_ButtonDown = 1
                ElseIf Not \Keymap(\Keymap_Chord(#Chord_Maj, #Note_Eb))
                  Chordian\Machine_State\Value_Internal_Keyboard_ButtonDown = 0
                EndIf
                If \Keymap(\Keymap_Chord(#Chord_Maj, #Note_Bb)) And Not Chordian\Machine_State\Value_Internal_Keyboard_ButtonUp
                  Chordian\Machine_State\Value_Internal_Keyboard_Transpose + 1
                  Chordian\Machine_State\Value_Internal_Keyboard_ButtonUp = 1
                ElseIf Not \Keymap(\Keymap_Chord(#Chord_Maj, #Note_Bb))
                  Chordian\Machine_State\Value_Internal_Keyboard_ButtonUp = 0
                EndIf
                
                Select Chordian\Machine_State\Value_External_ChordiateMode
                  Case 1
                    KeepInRange(Chordian\Machine_State\Value_Internal_Keyboard_Transpose, -2, 2)
                  Default
                    KeepInRange(Chordian\Machine_State\Value_Internal_Keyboard_Transpose, 0, 1)
                EndSelect
                
                If \Keymap(\Keymap_Chord(#Chord_7th, #Note_Db))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 36 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_Ab))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 37 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_Ab))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 38 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_Eb))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 39 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_Eb))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 40 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                  
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_Bb))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 41 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_F))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 42 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_F))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 43 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_C))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 44 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_C))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 45 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_G))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 46 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_G))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 47 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                  
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_D))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 48 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_A))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 49 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_A))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 50 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_E))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 51 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_E))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 52 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                  
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_B))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 53 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_Min, #Note_Fc))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 54 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                ElseIf \Keymap(\Keymap_Chord(#Chord_7th, #Note_Fc))
                  Chordian\Machine_State\Value_Internal_Keyboard_Note = 55 + (12 * Chordian\Machine_State\Value_Internal_Keyboard_Transpose)
                  ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_CallFrequencyHandler, 1, 0)
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_Trigger
                Else
                  Chordian\Machine_State\Status_Sound(#Snd_Keyboard) = #Curve_None
                EndIf
              EndIf
            EndIf
          EndIf
        EndWith
        
      Case #Event_HandleHarpKeys
        ;--HandleHarpKeys
        With Chordian\Input_State
          If Chordian\Machine_State\Value_Master_Button_Power_OnOff
            For i = #Harp_First-#Harp_First To #Harp_Last-#Harp_First
              If \Keymap(\Keymap_Harp(i))
                Chordian\Machine_State\Status_Harp(i) = 1
                Chordian\Machine_State\Status_Sound(#Snd_Harp_First+i) = #Curve_Trigger
              Else
                Chordian\Machine_State\Status_Harp(i) = 0
              EndIf
            Next
          EndIf
        EndWith
        
      Case #Event_HandleFunctionKeys
        With Chordian\Input_State
          If Chordian\Machine_State\Value_Memory_Button_Playback_Enter <> \Keymap(\Keymap_Function(#Btn_Memory_Playback_Enter))
            Chordian\Machine_State\Value_Memory_Button_Playback_Enter = \Keymap(\Keymap_Function(#Btn_Memory_Playback_Enter))
            PauseThread(Chordian\RepaintHandler_Thread)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
            ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
            ResumeThread(Chordian\RepaintHandler_Thread)
          EndIf
        EndWith
        
      Case #PB_Event_Repaint
        PauseThread(Chordian\RepaintHandler_Thread)
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Base, 1, 0)
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Master, 1, 0)
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Level, 1, 0)
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Rhythm, 1, 0)
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Memory, 1, 0)
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Chord, 1, 0)
        ReleaseSemaphore_(Chordian\Repaint_Event\Semaphore_Repaint_Commit, 1, 0)
        ResumeThread(Chordian\RepaintHandler_Thread)
        
      Case #PB_Event_CloseWindow
        KillThread(Chordian\SynthHandler_Thread)
        KillThread(Chordian\FrequencyHandler_Thread)
        KillThread(Chordian\MachineHandler_Thread)
        KillThread(Chordian\PatternHandler_Thread)
        KillThread(Chordian\RepaintHandler_Thread)
        DirectSound\Release()
        End
        
    EndSelect
  ForEver
  
EndProcedure


Main()
