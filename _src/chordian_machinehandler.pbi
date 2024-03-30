;-Helper Procedures
Procedure.i AutofillDerivedNotes(Note.i, Chord.i)
  With Chordian\Machine_State
    \Data_MIDI(Note, Chord, #Dat_Bass_2) = \Data_MIDI(Note, Chord, #Dat_Bass_1)-12
    Select Note
      Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
        \Data_MIDI(Note, Chord, #Dat_Bass_3) = \Data_MIDI(Note, Chord, #Dat_Bass_2)+7
      Default
        \Data_MIDI(Note, Chord, #Dat_Bass_3) = \Data_MIDI(Note, Chord, #Dat_Bass_1)+7
    EndSelect
    Select Chord
      Case #Chord_Maj, #Chord_7th, #Chord_Ma7, #Chord_Aug
        \Data_MIDI(Note, Chord, #Dat_Bass_4) = \Data_MIDI(Note, Chord, #Dat_Bass_3)-3
      Default
        \Data_MIDI(Note, Chord, #Dat_Bass_4) = \Data_MIDI(Note, Chord, #Dat_Bass_3)-4
    EndSelect
    
    \Data_MIDI(Note, Chord, #Dat_Harp_1) = \Data_MIDI(Note, Chord, #Dat_Chord_1)
    \Data_MIDI(Note, Chord, #Dat_Harp_2) = \Data_MIDI(Note, Chord, #Dat_Chord_2)
    \Data_MIDI(Note, Chord, #Dat_Harp_3) = \Data_MIDI(Note, Chord, #Dat_Chord_3)
    \Data_MIDI(Note, Chord, #Dat_Harp_4) = \Data_MIDI(Note, Chord, #Dat_Harp_1)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_5) = \Data_MIDI(Note, Chord, #Dat_Harp_2)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_6) = \Data_MIDI(Note, Chord, #Dat_Harp_3)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_7) = \Data_MIDI(Note, Chord, #Dat_Harp_4)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_8) = \Data_MIDI(Note, Chord, #Dat_Harp_5)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_9) = \Data_MIDI(Note, Chord, #Dat_Harp_6)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_10) = \Data_MIDI(Note, Chord, #Dat_Harp_7)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_11) = \Data_MIDI(Note, Chord, #Dat_Harp_8)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_12) = \Data_MIDI(Note, Chord, #Dat_Harp_9)+12
    \Data_MIDI(Note, Chord, #Dat_Harp_13) = \Data_MIDI(Note, Chord, #Dat_Harp_10)+12
    
  EndWith
EndProcedure


;-Main Procedures
Procedure.i ResetMachine()
  Protected i.i
  Protected n.i
  Protected s.i
  Protected p.i
  Protected r.i
  
  With Chordian\Machine_State
    ;-MIDI Data
    ;--C#/Db
    ;    Maj
    \Data_MIDI(#Note_Db, #Chord_Maj, #Dat_Bass_1) = 37
    \Data_MIDI(#Note_Db, #Chord_Maj, #Dat_Chord_1) = 49
    \Data_MIDI(#Note_Db, #Chord_Maj, #Dat_Chord_2) = 53
    \Data_MIDI(#Note_Db, #Chord_Maj, #Dat_Chord_3) = 44
    ;    Min
    \Data_MIDI(#Note_Db, #Chord_Min, #Dat_Bass_1) = 37
    \Data_MIDI(#Note_Db, #Chord_Min, #Dat_Chord_1) = 49
    \Data_MIDI(#Note_Db, #Chord_Min, #Dat_Chord_2) = 52
    \Data_MIDI(#Note_Db, #Chord_Min, #Dat_Chord_3) = 44
    ;    7th
    \Data_MIDI(#Note_Db, #Chord_7th, #Dat_Bass_1) = 37
    \Data_MIDI(#Note_Db, #Chord_7th, #Dat_Chord_1) = 49
    \Data_MIDI(#Note_Db, #Chord_7th, #Dat_Chord_2) = 53
    \Data_MIDI(#Note_Db, #Chord_7th, #Dat_Chord_3) = 47
    ;    Dim
    \Data_MIDI(#Note_Db, #Chord_Dim, #Dat_Bass_1) = 37
    \Data_MIDI(#Note_Db, #Chord_Dim, #Dat_Chord_1) = 49
    \Data_MIDI(#Note_Db, #Chord_Dim, #Dat_Chord_2) = 52
    \Data_MIDI(#Note_Db, #Chord_Dim, #Dat_Chord_3) = 46
    ;    Ma7
    \Data_MIDI(#Note_Db, #Chord_Ma7, #Dat_Bass_1) = 37
    \Data_MIDI(#Note_Db, #Chord_Ma7, #Dat_Chord_1) = 49
    \Data_MIDI(#Note_Db, #Chord_Ma7, #Dat_Chord_2) = 53
    \Data_MIDI(#Note_Db, #Chord_Ma7, #Dat_Chord_3) = 48
    ;    Mi7
    \Data_MIDI(#Note_Db, #Chord_Mi7, #Dat_Bass_1) = 37
    \Data_MIDI(#Note_Db, #Chord_Mi7, #Dat_Chord_1) = 49
    \Data_MIDI(#Note_Db, #Chord_Mi7, #Dat_Chord_2) = 52
    \Data_MIDI(#Note_Db, #Chord_Mi7, #Dat_Chord_3) = 47
    ;    Aug
    \Data_MIDI(#Note_Db, #Chord_Aug, #Dat_Bass_1) = 37
    \Data_MIDI(#Note_Db, #Chord_Aug, #Dat_Chord_1) = 49
    \Data_MIDI(#Note_Db, #Chord_Aug, #Dat_Chord_2) = 53
    \Data_MIDI(#Note_Db, #Chord_Aug, #Dat_Chord_3) = 45
    
    ;--G#/Ab
    ;    Maj
    \Data_MIDI(#Note_Ab, #Chord_Maj, #Dat_Bass_1) = 32
    \Data_MIDI(#Note_Ab, #Chord_Maj, #Dat_Chord_1) = 44
    \Data_MIDI(#Note_Ab, #Chord_Maj, #Dat_Chord_2) = 48
    \Data_MIDI(#Note_Ab, #Chord_Maj, #Dat_Chord_3) = 51
    ;    Min
    \Data_MIDI(#Note_Ab, #Chord_Min, #Dat_Bass_1) = 32
    \Data_MIDI(#Note_Ab, #Chord_Min, #Dat_Chord_1) = 44
    \Data_MIDI(#Note_Ab, #Chord_Min, #Dat_Chord_2) = 47
    \Data_MIDI(#Note_Ab, #Chord_Min, #Dat_Chord_3) = 51
    ;    7th
    \Data_MIDI(#Note_Ab, #Chord_7th, #Dat_Bass_1) = 32
    \Data_MIDI(#Note_Ab, #Chord_7th, #Dat_Chord_1) = 44
    \Data_MIDI(#Note_Ab, #Chord_7th, #Dat_Chord_2) = 48
    \Data_MIDI(#Note_Ab, #Chord_7th, #Dat_Chord_3) = 42
    ;    Dim
    \Data_MIDI(#Note_Ab, #Chord_Dim, #Dat_Bass_1) = 32
    \Data_MIDI(#Note_Ab, #Chord_Dim, #Dat_Chord_1) = 44
    \Data_MIDI(#Note_Ab, #Chord_Dim, #Dat_Chord_2) = 47
    \Data_MIDI(#Note_Ab, #Chord_Dim, #Dat_Chord_3) = 53
    ;    Ma7
    \Data_MIDI(#Note_Ab, #Chord_Ma7, #Dat_Bass_1) = 32
    \Data_MIDI(#Note_Ab, #Chord_Ma7, #Dat_Chord_1) = 44
    \Data_MIDI(#Note_Ab, #Chord_Ma7, #Dat_Chord_2) = 48
    \Data_MIDI(#Note_Ab, #Chord_Ma7, #Dat_Chord_3) = 43
    ;    Mi7
    \Data_MIDI(#Note_Ab, #Chord_Mi7, #Dat_Bass_1) = 32
    \Data_MIDI(#Note_Ab, #Chord_Mi7, #Dat_Chord_1) = 44
    \Data_MIDI(#Note_Ab, #Chord_Mi7, #Dat_Chord_2) = 47
    \Data_MIDI(#Note_Ab, #Chord_Mi7, #Dat_Chord_3) = 42
    ;    Aug
    \Data_MIDI(#Note_Ab, #Chord_Aug, #Dat_Bass_1) = 32
    \Data_MIDI(#Note_Ab, #Chord_Aug, #Dat_Chord_1) = 44
    \Data_MIDI(#Note_Ab, #Chord_Aug, #Dat_Chord_2) = 48
    \Data_MIDI(#Note_Ab, #Chord_Aug, #Dat_Chord_3) = 52
    
    ;--D#/Eb
    ;    Maj
    \Data_MIDI(#Note_Eb, #Chord_Maj, #Dat_Bass_1) = 39
    \Data_MIDI(#Note_Eb, #Chord_Maj, #Dat_Chord_1) = 51
    \Data_MIDI(#Note_Eb, #Chord_Maj, #Dat_Chord_2) = 43
    \Data_MIDI(#Note_Eb, #Chord_Maj, #Dat_Chord_3) = 46
    ;    Min
    \Data_MIDI(#Note_Eb, #Chord_Min, #Dat_Bass_1) = 39
    \Data_MIDI(#Note_Eb, #Chord_Min, #Dat_Chord_1) = 51
    \Data_MIDI(#Note_Eb, #Chord_Min, #Dat_Chord_2) = 42
    \Data_MIDI(#Note_Eb, #Chord_Min, #Dat_Chord_3) = 46
    ;    7th
    \Data_MIDI(#Note_Eb, #Chord_7th, #Dat_Bass_1) = 39
    \Data_MIDI(#Note_Eb, #Chord_7th, #Dat_Chord_1) = 51
    \Data_MIDI(#Note_Eb, #Chord_7th, #Dat_Chord_2) = 43
    \Data_MIDI(#Note_Eb, #Chord_7th, #Dat_Chord_3) = 49
    ;    Dim
    \Data_MIDI(#Note_Eb, #Chord_Dim, #Dat_Bass_1) = 39
    \Data_MIDI(#Note_Eb, #Chord_Dim, #Dat_Chord_1) = 51
    \Data_MIDI(#Note_Eb, #Chord_Dim, #Dat_Chord_2) = 42
    \Data_MIDI(#Note_Eb, #Chord_Dim, #Dat_Chord_3) = 48
    ;    Ma7
    \Data_MIDI(#Note_Eb, #Chord_Ma7, #Dat_Bass_1) = 39
    \Data_MIDI(#Note_Eb, #Chord_Ma7, #Dat_Chord_1) = 51
    \Data_MIDI(#Note_Eb, #Chord_Ma7, #Dat_Chord_2) = 43
    \Data_MIDI(#Note_Eb, #Chord_Ma7, #Dat_Chord_3) = 50
    ;    Mi7
    \Data_MIDI(#Note_Eb, #Chord_Mi7, #Dat_Bass_1) = 39
    \Data_MIDI(#Note_Eb, #Chord_Mi7, #Dat_Chord_1) = 51
    \Data_MIDI(#Note_Eb, #Chord_Mi7, #Dat_Chord_2) = 42
    \Data_MIDI(#Note_Eb, #Chord_Mi7, #Dat_Chord_3) = 49
    ;    Aug
    \Data_MIDI(#Note_Eb, #Chord_Aug, #Dat_Bass_1) = 39
    \Data_MIDI(#Note_Eb, #Chord_Aug, #Dat_Chord_1) = 51
    \Data_MIDI(#Note_Eb, #Chord_Aug, #Dat_Chord_2) = 43
    \Data_MIDI(#Note_Eb, #Chord_Aug, #Dat_Chord_3) = 47
    
    ;--A#/Bb
    ;    Maj
    \Data_MIDI(#Note_Bb, #Chord_Maj, #Dat_Bass_1) = 34
    \Data_MIDI(#Note_Bb, #Chord_Maj, #Dat_Chord_1) = 46
    \Data_MIDI(#Note_Bb, #Chord_Maj, #Dat_Chord_2) = 50
    \Data_MIDI(#Note_Bb, #Chord_Maj, #Dat_Chord_3) = 53
    ;    Min
    \Data_MIDI(#Note_Bb, #Chord_Min, #Dat_Bass_1) = 34
    \Data_MIDI(#Note_Bb, #Chord_Min, #Dat_Chord_1) = 46
    \Data_MIDI(#Note_Bb, #Chord_Min, #Dat_Chord_2) = 49
    \Data_MIDI(#Note_Bb, #Chord_Min, #Dat_Chord_3) = 53
    ;    7th
    \Data_MIDI(#Note_Bb, #Chord_7th, #Dat_Bass_1) = 34
    \Data_MIDI(#Note_Bb, #Chord_7th, #Dat_Chord_1) = 46
    \Data_MIDI(#Note_Bb, #Chord_7th, #Dat_Chord_2) = 50
    \Data_MIDI(#Note_Bb, #Chord_7th, #Dat_Chord_3) = 44
    ;    Dim
    \Data_MIDI(#Note_Bb, #Chord_Dim, #Dat_Bass_1) = 34
    \Data_MIDI(#Note_Bb, #Chord_Dim, #Dat_Chord_1) = 46
    \Data_MIDI(#Note_Bb, #Chord_Dim, #Dat_Chord_2) = 49
    \Data_MIDI(#Note_Bb, #Chord_Dim, #Dat_Chord_3) = 43
    ;    Ma7
    \Data_MIDI(#Note_Bb, #Chord_Ma7, #Dat_Bass_1) = 34
    \Data_MIDI(#Note_Bb, #Chord_Ma7, #Dat_Chord_1) = 46
    \Data_MIDI(#Note_Bb, #Chord_Ma7, #Dat_Chord_2) = 50
    \Data_MIDI(#Note_Bb, #Chord_Ma7, #Dat_Chord_3) = 45
    ;    Mi7
    \Data_MIDI(#Note_Bb, #Chord_Mi7, #Dat_Bass_1) = 34
    \Data_MIDI(#Note_Bb, #Chord_Mi7, #Dat_Chord_1) = 46
    \Data_MIDI(#Note_Bb, #Chord_Mi7, #Dat_Chord_2) = 49
    \Data_MIDI(#Note_Bb, #Chord_Mi7, #Dat_Chord_3) = 44
    ;    Aug
    \Data_MIDI(#Note_Bb, #Chord_Aug, #Dat_Bass_1) = 34
    \Data_MIDI(#Note_Bb, #Chord_Aug, #Dat_Chord_1) = 46
    \Data_MIDI(#Note_Bb, #Chord_Aug, #Dat_Chord_2) = 50
    \Data_MIDI(#Note_Bb, #Chord_Aug, #Dat_Chord_3) = 42
    
    ;--F
    ;    Maj
    \Data_MIDI(#Note_F, #Chord_Maj, #Dat_Bass_1) = 41
    \Data_MIDI(#Note_F, #Chord_Maj, #Dat_Chord_1) = 53
    \Data_MIDI(#Note_F, #Chord_Maj, #Dat_Chord_2) = 45
    \Data_MIDI(#Note_F, #Chord_Maj, #Dat_Chord_3) = 48
    ;    Min
    \Data_MIDI(#Note_F, #Chord_Min, #Dat_Bass_1) = 41
    \Data_MIDI(#Note_F, #Chord_Min, #Dat_Chord_1) = 53
    \Data_MIDI(#Note_F, #Chord_Min, #Dat_Chord_2) = 44
    \Data_MIDI(#Note_F, #Chord_Min, #Dat_Chord_3) = 48
    ;    7th
    \Data_MIDI(#Note_F, #Chord_7th, #Dat_Bass_1) = 41
    \Data_MIDI(#Note_F, #Chord_7th, #Dat_Chord_1) = 53
    \Data_MIDI(#Note_F, #Chord_7th, #Dat_Chord_2) = 45
    \Data_MIDI(#Note_F, #Chord_7th, #Dat_Chord_3) = 51
    ;    Dim
    \Data_MIDI(#Note_F, #Chord_Dim, #Dat_Bass_1) = 41
    \Data_MIDI(#Note_F, #Chord_Dim, #Dat_Chord_1) = 53
    \Data_MIDI(#Note_F, #Chord_Dim, #Dat_Chord_2) = 44
    \Data_MIDI(#Note_F, #Chord_Dim, #Dat_Chord_3) = 50
    ;    Ma7
    \Data_MIDI(#Note_F, #Chord_Ma7, #Dat_Bass_1) = 41
    \Data_MIDI(#Note_F, #Chord_Ma7, #Dat_Chord_1) = 53
    \Data_MIDI(#Note_F, #Chord_Ma7, #Dat_Chord_2) = 45
    \Data_MIDI(#Note_F, #Chord_Ma7, #Dat_Chord_3) = 52
    ;    Mi7
    \Data_MIDI(#Note_F, #Chord_Mi7, #Dat_Bass_1) = 41
    \Data_MIDI(#Note_F, #Chord_Mi7, #Dat_Chord_1) = 53
    \Data_MIDI(#Note_F, #Chord_Mi7, #Dat_Chord_2) = 44
    \Data_MIDI(#Note_F, #Chord_Mi7, #Dat_Chord_3) = 51
    ;    Aug
    \Data_MIDI(#Note_F, #Chord_Aug, #Dat_Bass_1) = 41
    \Data_MIDI(#Note_F, #Chord_Aug, #Dat_Chord_1) = 53
    \Data_MIDI(#Note_F, #Chord_Aug, #Dat_Chord_2) = 45
    \Data_MIDI(#Note_F, #Chord_Aug, #Dat_Chord_3) = 49
    
    ;--C
    ;    Maj
    \Data_MIDI(#Note_C, #Chord_Maj, #Dat_Bass_1) = 36
    \Data_MIDI(#Note_C, #Chord_Maj, #Dat_Chord_1) = 48
    \Data_MIDI(#Note_C, #Chord_Maj, #Dat_Chord_2) = 52
    \Data_MIDI(#Note_C, #Chord_Maj, #Dat_Chord_3) = 43
    ;    Min
    \Data_MIDI(#Note_C, #Chord_Min, #Dat_Bass_1) = 36
    \Data_MIDI(#Note_C, #Chord_Min, #Dat_Chord_1) = 48
    \Data_MIDI(#Note_C, #Chord_Min, #Dat_Chord_2) = 51
    \Data_MIDI(#Note_C, #Chord_Min, #Dat_Chord_3) = 43
    ;    7th
    \Data_MIDI(#Note_C, #Chord_7th, #Dat_Bass_1) = 36
    \Data_MIDI(#Note_C, #Chord_7th, #Dat_Chord_1) = 48
    \Data_MIDI(#Note_C, #Chord_7th, #Dat_Chord_2) = 52
    \Data_MIDI(#Note_C, #Chord_7th, #Dat_Chord_3) = 46
    ;    Dim
    \Data_MIDI(#Note_C, #Chord_Dim, #Dat_Bass_1) = 36
    \Data_MIDI(#Note_C, #Chord_Dim, #Dat_Chord_1) = 48
    \Data_MIDI(#Note_C, #Chord_Dim, #Dat_Chord_2) = 51
    \Data_MIDI(#Note_C, #Chord_Dim, #Dat_Chord_3) = 45
    ;    Ma7
    \Data_MIDI(#Note_C, #Chord_Ma7, #Dat_Bass_1) = 36
    \Data_MIDI(#Note_C, #Chord_Ma7, #Dat_Chord_1) = 48
    \Data_MIDI(#Note_C, #Chord_Ma7, #Dat_Chord_2) = 52
    \Data_MIDI(#Note_C, #Chord_Ma7, #Dat_Chord_3) = 47
    ;    Mi7
    \Data_MIDI(#Note_C, #Chord_Mi7, #Dat_Bass_1) = 36
    \Data_MIDI(#Note_C, #Chord_Mi7, #Dat_Chord_1) = 48
    \Data_MIDI(#Note_C, #Chord_Mi7, #Dat_Chord_2) = 51
    \Data_MIDI(#Note_C, #Chord_Mi7, #Dat_Chord_3) = 46
    ;    Aug
    \Data_MIDI(#Note_C, #Chord_Aug, #Dat_Bass_1) = 36
    \Data_MIDI(#Note_C, #Chord_Aug, #Dat_Chord_1) = 48
    \Data_MIDI(#Note_C, #Chord_Aug, #Dat_Chord_2) = 52
    \Data_MIDI(#Note_C, #Chord_Aug, #Dat_Chord_3) = 44
    
    ;--G
    ;    Maj
    \Data_MIDI(#Note_G, #Chord_Maj, #Dat_Bass_1) = 31
    \Data_MIDI(#Note_G, #Chord_Maj, #Dat_Chord_1) = 43
    \Data_MIDI(#Note_G, #Chord_Maj, #Dat_Chord_2) = 47
    \Data_MIDI(#Note_G, #Chord_Maj, #Dat_Chord_3) = 50
    ;    Min
    \Data_MIDI(#Note_G, #Chord_Min, #Dat_Bass_1) = 31
    \Data_MIDI(#Note_G, #Chord_Min, #Dat_Chord_1) = 43
    \Data_MIDI(#Note_G, #Chord_Min, #Dat_Chord_2) = 46
    \Data_MIDI(#Note_G, #Chord_Min, #Dat_Chord_3) = 50
    ;    7th
    \Data_MIDI(#Note_G, #Chord_7th, #Dat_Bass_1) = 31
    \Data_MIDI(#Note_G, #Chord_7th, #Dat_Chord_1) = 43
    \Data_MIDI(#Note_G, #Chord_7th, #Dat_Chord_2) = 47
    \Data_MIDI(#Note_G, #Chord_7th, #Dat_Chord_3) = 53
    ;    Dim
    \Data_MIDI(#Note_G, #Chord_Dim, #Dat_Bass_1) = 31
    \Data_MIDI(#Note_G, #Chord_Dim, #Dat_Chord_1) = 43
    \Data_MIDI(#Note_G, #Chord_Dim, #Dat_Chord_2) = 46
    \Data_MIDI(#Note_G, #Chord_Dim, #Dat_Chord_3) = 52
    ;    Ma7
    \Data_MIDI(#Note_G, #Chord_Ma7, #Dat_Bass_1) = 31
    \Data_MIDI(#Note_G, #Chord_Ma7, #Dat_Chord_1) = 43
    \Data_MIDI(#Note_G, #Chord_Ma7, #Dat_Chord_2) = 47
    \Data_MIDI(#Note_G, #Chord_Ma7, #Dat_Chord_3) = 42
    ;    Mi7
    \Data_MIDI(#Note_G, #Chord_Mi7, #Dat_Bass_1) = 31
    \Data_MIDI(#Note_G, #Chord_Mi7, #Dat_Chord_1) = 43
    \Data_MIDI(#Note_G, #Chord_Mi7, #Dat_Chord_2) = 46
    \Data_MIDI(#Note_G, #Chord_Mi7, #Dat_Chord_3) = 53
    ;    Aug
    \Data_MIDI(#Note_G, #Chord_Aug, #Dat_Bass_1) = 31
    \Data_MIDI(#Note_G, #Chord_Aug, #Dat_Chord_1) = 43
    \Data_MIDI(#Note_G, #Chord_Aug, #Dat_Chord_2) = 47
    \Data_MIDI(#Note_G, #Chord_Aug, #Dat_Chord_3) = 51
    
    ;--D
    ;    Maj
    \Data_MIDI(#Note_D, #Chord_Maj, #Dat_Bass_1) = 38
    \Data_MIDI(#Note_D, #Chord_Maj, #Dat_Chord_1) = 50
    \Data_MIDI(#Note_D, #Chord_Maj, #Dat_Chord_2) = 42
    \Data_MIDI(#Note_D, #Chord_Maj, #Dat_Chord_3) = 45
    ;    Min
    \Data_MIDI(#Note_D, #Chord_Min, #Dat_Bass_1) = 38
    \Data_MIDI(#Note_D, #Chord_Min, #Dat_Chord_1) = 50
    \Data_MIDI(#Note_D, #Chord_Min, #Dat_Chord_2) = 53
    \Data_MIDI(#Note_D, #Chord_Min, #Dat_Chord_3) = 45
    ;    7th
    \Data_MIDI(#Note_D, #Chord_7th, #Dat_Bass_1) = 38
    \Data_MIDI(#Note_D, #Chord_7th, #Dat_Chord_1) = 50
    \Data_MIDI(#Note_D, #Chord_7th, #Dat_Chord_2) = 42
    \Data_MIDI(#Note_D, #Chord_7th, #Dat_Chord_3) = 48
    ;    Dim
    \Data_MIDI(#Note_D, #Chord_Dim, #Dat_Bass_1) = 38
    \Data_MIDI(#Note_D, #Chord_Dim, #Dat_Chord_1) = 50
    \Data_MIDI(#Note_D, #Chord_Dim, #Dat_Chord_2) = 53
    \Data_MIDI(#Note_D, #Chord_Dim, #Dat_Chord_3) = 47
    ;    Ma7
    \Data_MIDI(#Note_D, #Chord_Ma7, #Dat_Bass_1) = 38
    \Data_MIDI(#Note_D, #Chord_Ma7, #Dat_Chord_1) = 50
    \Data_MIDI(#Note_D, #Chord_Ma7, #Dat_Chord_2) = 42
    \Data_MIDI(#Note_D, #Chord_Ma7, #Dat_Chord_3) = 49
    ;    Mi7
    \Data_MIDI(#Note_D, #Chord_Mi7, #Dat_Bass_1) = 38
    \Data_MIDI(#Note_D, #Chord_Mi7, #Dat_Chord_1) = 50
    \Data_MIDI(#Note_D, #Chord_Mi7, #Dat_Chord_2) = 53
    \Data_MIDI(#Note_D, #Chord_Mi7, #Dat_Chord_3) = 48
    ;    Aug
    \Data_MIDI(#Note_D, #Chord_Aug, #Dat_Bass_1) = 38
    \Data_MIDI(#Note_D, #Chord_Aug, #Dat_Chord_1) = 50
    \Data_MIDI(#Note_D, #Chord_Aug, #Dat_Chord_2) = 42
    \Data_MIDI(#Note_D, #Chord_Aug, #Dat_Chord_3) = 46
    
    ;--A
    ;    Maj
    \Data_MIDI(#Note_A, #Chord_Maj, #Dat_Bass_1) = 33
    \Data_MIDI(#Note_A, #Chord_Maj, #Dat_Chord_1) = 45
    \Data_MIDI(#Note_A, #Chord_Maj, #Dat_Chord_2) = 49
    \Data_MIDI(#Note_A, #Chord_Maj, #Dat_Chord_3) = 52
    ;    Min
    \Data_MIDI(#Note_A, #Chord_Min, #Dat_Bass_1) = 33
    \Data_MIDI(#Note_A, #Chord_Min, #Dat_Chord_1) = 45
    \Data_MIDI(#Note_A, #Chord_Min, #Dat_Chord_2) = 48
    \Data_MIDI(#Note_A, #Chord_Min, #Dat_Chord_3) = 52
    ;    7th
    \Data_MIDI(#Note_A, #Chord_7th, #Dat_Bass_1) = 33
    \Data_MIDI(#Note_A, #Chord_7th, #Dat_Chord_1) = 45
    \Data_MIDI(#Note_A, #Chord_7th, #Dat_Chord_2) = 49
    \Data_MIDI(#Note_A, #Chord_7th, #Dat_Chord_3) = 43
    ;    Dim
    \Data_MIDI(#Note_A, #Chord_Dim, #Dat_Bass_1) = 33
    \Data_MIDI(#Note_A, #Chord_Dim, #Dat_Chord_1) = 45
    \Data_MIDI(#Note_A, #Chord_Dim, #Dat_Chord_2) = 48
    \Data_MIDI(#Note_A, #Chord_Dim, #Dat_Chord_3) = 42
    ;    Ma7
    \Data_MIDI(#Note_A, #Chord_Ma7, #Dat_Bass_1) = 33
    \Data_MIDI(#Note_A, #Chord_Ma7, #Dat_Chord_1) = 45
    \Data_MIDI(#Note_A, #Chord_Ma7, #Dat_Chord_2) = 49
    \Data_MIDI(#Note_A, #Chord_Ma7, #Dat_Chord_3) = 44
    ;    Mi7
    \Data_MIDI(#Note_A, #Chord_Mi7, #Dat_Bass_1) = 33
    \Data_MIDI(#Note_A, #Chord_Mi7, #Dat_Chord_1) = 45
    \Data_MIDI(#Note_A, #Chord_Mi7, #Dat_Chord_2) = 48
    \Data_MIDI(#Note_A, #Chord_Mi7, #Dat_Chord_3) = 43
    ;    Aug
    \Data_MIDI(#Note_A, #Chord_Aug, #Dat_Bass_1) = 33
    \Data_MIDI(#Note_A, #Chord_Aug, #Dat_Chord_1) = 45
    \Data_MIDI(#Note_A, #Chord_Aug, #Dat_Chord_2) = 49
    \Data_MIDI(#Note_A, #Chord_Aug, #Dat_Chord_3) = 53
    
    ;--E
    ;    Maj
    \Data_MIDI(#Note_E, #Chord_Maj, #Dat_Bass_1) = 40
    \Data_MIDI(#Note_E, #Chord_Maj, #Dat_Chord_1) = 52
    \Data_MIDI(#Note_E, #Chord_Maj, #Dat_Chord_2) = 44
    \Data_MIDI(#Note_E, #Chord_Maj, #Dat_Chord_3) = 47
    ;    Min
    \Data_MIDI(#Note_E, #Chord_Min, #Dat_Bass_1) = 40
    \Data_MIDI(#Note_E, #Chord_Min, #Dat_Chord_1) = 52
    \Data_MIDI(#Note_E, #Chord_Min, #Dat_Chord_2) = 43
    \Data_MIDI(#Note_E, #Chord_Min, #Dat_Chord_3) = 47
    ;    7th
    \Data_MIDI(#Note_E, #Chord_7th, #Dat_Bass_1) = 40
    \Data_MIDI(#Note_E, #Chord_7th, #Dat_Chord_1) = 52
    \Data_MIDI(#Note_E, #Chord_7th, #Dat_Chord_2) = 44
    \Data_MIDI(#Note_E, #Chord_7th, #Dat_Chord_3) = 50
    ;    Dim
    \Data_MIDI(#Note_E, #Chord_Dim, #Dat_Bass_1) = 40
    \Data_MIDI(#Note_E, #Chord_Dim, #Dat_Chord_1) = 52
    \Data_MIDI(#Note_E, #Chord_Dim, #Dat_Chord_2) = 43
    \Data_MIDI(#Note_E, #Chord_Dim, #Dat_Chord_3) = 49
    ;    Ma7
    \Data_MIDI(#Note_E, #Chord_Ma7, #Dat_Bass_1) = 40
    \Data_MIDI(#Note_E, #Chord_Ma7, #Dat_Chord_1) = 52
    \Data_MIDI(#Note_E, #Chord_Ma7, #Dat_Chord_2) = 44
    \Data_MIDI(#Note_E, #Chord_Ma7, #Dat_Chord_3) = 51
    ;    Mi7
    \Data_MIDI(#Note_E, #Chord_Mi7, #Dat_Bass_1) = 40
    \Data_MIDI(#Note_E, #Chord_Mi7, #Dat_Chord_1) = 52
    \Data_MIDI(#Note_E, #Chord_Mi7, #Dat_Chord_2) = 43
    \Data_MIDI(#Note_E, #Chord_Mi7, #Dat_Chord_3) = 50
    ;    Aug
    \Data_MIDI(#Note_E, #Chord_Aug, #Dat_Bass_1) = 40
    \Data_MIDI(#Note_E, #Chord_Aug, #Dat_Chord_1) = 52
    \Data_MIDI(#Note_E, #Chord_Aug, #Dat_Chord_2) = 44
    \Data_MIDI(#Note_E, #Chord_Aug, #Dat_Chord_3) = 48
    
    ;--B
    ;    Maj
    \Data_MIDI(#Note_B, #Chord_Maj, #Dat_Bass_1) = 35
    \Data_MIDI(#Note_B, #Chord_Maj, #Dat_Chord_1) = 47
    \Data_MIDI(#Note_B, #Chord_Maj, #Dat_Chord_2) = 51
    \Data_MIDI(#Note_B, #Chord_Maj, #Dat_Chord_3) = 42
    ;    Min
    \Data_MIDI(#Note_B, #Chord_Min, #Dat_Bass_1) = 35
    \Data_MIDI(#Note_B, #Chord_Min, #Dat_Chord_1) = 47
    \Data_MIDI(#Note_B, #Chord_Min, #Dat_Chord_2) = 50
    \Data_MIDI(#Note_B, #Chord_Min, #Dat_Chord_3) = 42
    ;    7th
    \Data_MIDI(#Note_B, #Chord_7th, #Dat_Bass_1) = 35
    \Data_MIDI(#Note_B, #Chord_7th, #Dat_Chord_1) = 47
    \Data_MIDI(#Note_B, #Chord_7th, #Dat_Chord_2) = 51
    \Data_MIDI(#Note_B, #Chord_7th, #Dat_Chord_3) = 45
    ;    Dim
    \Data_MIDI(#Note_B, #Chord_Dim, #Dat_Bass_1) = 35
    \Data_MIDI(#Note_B, #Chord_Dim, #Dat_Chord_1) = 47
    \Data_MIDI(#Note_B, #Chord_Dim, #Dat_Chord_2) = 50
    \Data_MIDI(#Note_B, #Chord_Dim, #Dat_Chord_3) = 44
    ;    Ma7
    \Data_MIDI(#Note_B, #Chord_Ma7, #Dat_Bass_1) = 35
    \Data_MIDI(#Note_B, #Chord_Ma7, #Dat_Chord_1) = 47
    \Data_MIDI(#Note_B, #Chord_Ma7, #Dat_Chord_2) = 51
    \Data_MIDI(#Note_B, #Chord_Ma7, #Dat_Chord_3) = 46
    ;    Mi7
    \Data_MIDI(#Note_B, #Chord_Mi7, #Dat_Bass_1) = 35
    \Data_MIDI(#Note_B, #Chord_Mi7, #Dat_Chord_1) = 47
    \Data_MIDI(#Note_B, #Chord_Mi7, #Dat_Chord_2) = 50
    \Data_MIDI(#Note_B, #Chord_Mi7, #Dat_Chord_3) = 45
    ;    Aug
    \Data_MIDI(#Note_B, #Chord_Aug, #Dat_Bass_1) = 35
    \Data_MIDI(#Note_B, #Chord_Aug, #Dat_Chord_1) = 47
    \Data_MIDI(#Note_B, #Chord_Aug, #Dat_Chord_2) = 51
    \Data_MIDI(#Note_B, #Chord_Aug, #Dat_Chord_3) = 43
    
    ;--F#/Gb
    ;    Maj
    \Data_MIDI(#Note_Fc, #Chord_Maj, #Dat_Bass_1) = 30
    \Data_MIDI(#Note_Fc, #Chord_Maj, #Dat_Chord_1) = 42
    \Data_MIDI(#Note_Fc, #Chord_Maj, #Dat_Chord_2) = 46
    \Data_MIDI(#Note_Fc, #Chord_Maj, #Dat_Chord_3) = 49
    ;    Min
    \Data_MIDI(#Note_Fc, #Chord_Min, #Dat_Bass_1) = 30
    \Data_MIDI(#Note_Fc, #Chord_Min, #Dat_Chord_1) = 42
    \Data_MIDI(#Note_Fc, #Chord_Min, #Dat_Chord_2) = 45
    \Data_MIDI(#Note_Fc, #Chord_Min, #Dat_Chord_3) = 49
    ;    7th
    \Data_MIDI(#Note_Fc, #Chord_7th, #Dat_Bass_1) = 30
    \Data_MIDI(#Note_Fc, #Chord_7th, #Dat_Chord_1) = 42
    \Data_MIDI(#Note_Fc, #Chord_7th, #Dat_Chord_2) = 46
    \Data_MIDI(#Note_Fc, #Chord_7th, #Dat_Chord_3) = 52
    ;    Dim
    \Data_MIDI(#Note_Fc, #Chord_Dim, #Dat_Bass_1) = 30
    \Data_MIDI(#Note_Fc, #Chord_Dim, #Dat_Chord_1) = 42
    \Data_MIDI(#Note_Fc, #Chord_Dim, #Dat_Chord_2) = 45
    \Data_MIDI(#Note_Fc, #Chord_Dim, #Dat_Chord_3) = 51
    ;    Ma7
    \Data_MIDI(#Note_Fc, #Chord_Ma7, #Dat_Bass_1) = 30
    \Data_MIDI(#Note_Fc, #Chord_Ma7, #Dat_Chord_1) = 42
    \Data_MIDI(#Note_Fc, #Chord_Ma7, #Dat_Chord_2) = 46
    \Data_MIDI(#Note_Fc, #Chord_Ma7, #Dat_Chord_3) = 53
    ;    Mi7
    \Data_MIDI(#Note_Fc, #Chord_Mi7, #Dat_Bass_1) = 30
    \Data_MIDI(#Note_Fc, #Chord_Mi7, #Dat_Chord_1) = 42
    \Data_MIDI(#Note_Fc, #Chord_Mi7, #Dat_Chord_2) = 45
    \Data_MIDI(#Note_Fc, #Chord_Mi7, #Dat_Chord_3) = 52
    ;    Aug
    \Data_MIDI(#Note_Fc, #Chord_Aug, #Dat_Bass_1) = 30
    \Data_MIDI(#Note_Fc, #Chord_Aug, #Dat_Chord_1) = 42
    \Data_MIDI(#Note_Fc, #Chord_Aug, #Dat_Chord_2) = 46
    \Data_MIDI(#Note_Fc, #Chord_Aug, #Dat_Chord_3) = 50
    
    ;--Autofill
    For i = #Note_First To #Note_Last
      For n = #Chord_First To #Chord_Last
        AutofillDerivedNotes(i, n)
      Next
    Next
    
    
    ;--Pattern Data
    ; This is used for pattern data.
    
    Global Dim Patterns.b(1, #Rhythm_Last, #Note_Last, 31, #Pattern_Last)
    
    For s = 0 To 1
      For r = #Rhythm_First To #Rhythm_Last
        For n = #Note_First To #Note_Last
          For i = 0 To 31
            For p = #Pattern_First To #Pattern_Last
              Select p
                Case #Pattern_Frequency
                  \Data_Patterns(s, r, n, i, p) = 0
                Case #Pattern_Drum_First To #Pattern_Drum_Last
                  \Data_Patterns(s, r, n, i, p) = #Curve_Ignore
                Default
                  \Data_Patterns(s, r, n, i, p) = #Curve_Release
              EndSelect
            Next
          Next
        Next
      Next
    Next
    
    ;---Rock1
    For i = #Note_First To #Note_Last
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock1, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock1, i, 6, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock1, i, 7, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock1, i, 8, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock1, i, 9, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 0+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock1, i, 1+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock1, i, 6+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock1, i, 7+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock1, i, 8+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock1, i, 9+16, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 12+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock1, i, 13+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock1, i, 14+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock1, i, 15+16, #Pattern_Bass) = #Curve_Release
      
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 6, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 12, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 6+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 6, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 6+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 6, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 14, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 0+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 2+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 6+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 8+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 14+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 14, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock1, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock1, i, 14+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      
    Next
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        Select i
          Case 8 To 15, 8+16 To 11+16, 14+16 To 15+16
            \Data_Patterns(0, #Rhythm_Rock1, n, i, #Pattern_Frequency) = 2
          Case 12+16 To 13+16
            \Data_Patterns(0, #Rhythm_Rock1, n, i, #Pattern_Frequency) = 3
          Default
            Select n
              Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                \Data_Patterns(0, #Rhythm_Rock1, n, i, #Pattern_Frequency) = 1
              Default
                \Data_Patterns(0, #Rhythm_Rock1, n, i, #Pattern_Frequency) = 0
            EndSelect
        EndSelect
      Next
    Next
    
    
    ;---Rock2
    For i = #Note_First To #Note_Last
      \Data_Patterns(0, #Rhythm_Rock2, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock2, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock2, i, 6, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock2, i, 7, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock2, i, 8, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock2, i, 9, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock2, i, 14, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock2, i, 15, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 0+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock2, i, 1+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock2, i, 6+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock2, i, 7+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock2, i, 8+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock2, i, 9+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Rock2, i, 14+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Rock2, i, 15+16, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 12, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 6, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 6+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 6, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 0+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 2+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 6+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 8+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Rock2, i, 14, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Rock2, i, 14+16, #Pattern_Drum_Ride) = #Curve_Oneshot
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        Select n
          Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
            \Data_Patterns(0, #Rhythm_Rock2, n, i, #Pattern_Frequency) = 1
          Default
            \Data_Patterns(0, #Rhythm_Rock2, n, i, #Pattern_Frequency) = 0
        EndSelect
      Next
    Next
    
    
    ;---Disco
    For i = #Note_First To #Note_Last
      \Data_Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 13, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 0+16, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 4+16, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 8+16, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 12+16, #Pattern_Bass) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 14+16, #Pattern_Bass) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Disco, i, 2, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 5, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 11, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 2+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 5+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 8+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 11+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 13+16, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 7, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 13, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 15, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 7+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Disco, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 1, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 3, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 5, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 6, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 7, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 9, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 11, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 13, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 14, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 15, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 0+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 1+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 2+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 3+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 5+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 6+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 7+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 8+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 9+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 11+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 13+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 14+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 15+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Disco, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Disco, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        Select n
          Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
            \Data_Patterns(0, #Rhythm_Disco, n, i, #Pattern_Frequency) = 1
          Default
            \Data_Patterns(0, #Rhythm_Disco, n, i, #Pattern_Frequency) = 0
        EndSelect
      Next
    Next
    
    
    ;---Latin
    For i = #Note_First To #Note_Last
      \Data_Patterns(0, #Rhythm_Latin, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Latin, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Latin, i, 8, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Latin, i, 9, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Latin, i, 12, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Latin, i, 13, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Latin, i, 0+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Latin, i, 1+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Latin, i, 6+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Latin, i, 7+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Latin, i, 8+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Latin, i, 9+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Latin, i, 14+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Latin, i, 15+16, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(0, #Rhythm_Latin, i, 0, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 10, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 14, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 2+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 6+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 10+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 12+16, #Pattern_Chords) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Latin, i, 13+16, #Pattern_Chords) = #Curve_Release
      
      \Data_Patterns(0, #Rhythm_Latin, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 14, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Latin, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 14+16, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Latin, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 3, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 6, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 11, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 14, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Latin, i, 2+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 3+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 6+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 11+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 14+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Latin, i, 6, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 6+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Latin, i, 12, #Pattern_Drum_Click) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 14, #Pattern_Drum_Click) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 12+16, #Pattern_Drum_Click) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 14+16, #Pattern_Drum_Click) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Latin, i, 0, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 8, #Pattern_Drum_Ride) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Latin, i, 0+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Latin, i, 8+16, #Pattern_Drum_Ride) = #Curve_Oneshot
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        Select i
          Case 12 To 15, 8+16 To 15+16
            \Data_Patterns(0, #Rhythm_Latin, n, i, #Pattern_Frequency) = 2
          Case 8 To 11
            \Data_Patterns(0, #Rhythm_Latin, n, i, #Pattern_Frequency) = 3
          Default
            Select n
              Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                \Data_Patterns(0, #Rhythm_Latin, n, i, #Pattern_Frequency) = 1
              Default
                \Data_Patterns(0, #Rhythm_Latin, n, i, #Pattern_Frequency) = 0
            EndSelect
        EndSelect
      Next
    Next
    
    
    ;---Country
    For i = #Note_First To #Note_Last
      \Data_Patterns(0, #Rhythm_Country, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Country, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Country, i, 8, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Country, i, 9, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Country, i, 0+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Country, i, 1+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(0, #Rhythm_Country, i, 8+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(0, #Rhythm_Country, i, 9+16, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(0, #Rhythm_Country, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Country, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Country, i, 3, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 7, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 11, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 15, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 3+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 7+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 10+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 11+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 15+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Country, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 10+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 11+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 14+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(0, #Rhythm_Country, i, 0, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 4, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 8, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 12, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 0+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 4+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 8+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 12+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(0, #Rhythm_Country, i, 14+16, #Pattern_Drum_Ride) = #Curve_Oneshot
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        Select i
          Case 8 To 15, 8+16 To 15+16
            \Data_Patterns(0, #Rhythm_Country, n, i, #Pattern_Frequency) = 2
          Default
            Select n
              Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                \Data_Patterns(0, #Rhythm_Country, n, i, #Pattern_Frequency) = 1
              Default
                \Data_Patterns(0, #Rhythm_Country, n, i, #Pattern_Frequency) = 0
            EndSelect
        EndSelect
      Next
    Next
    
    ;---March
    For i = #Note_First To #Note_Last
      \Data_Patterns(1, #Rhythm_March, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_March, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_March, i, 8, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_March, i, 9, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_March, i, 0+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_March, i, 1+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_March, i, 8+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_March, i, 9+16, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(1, #Rhythm_March, i, 0, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_March, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_March, i, 0, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 8, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 0+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 8+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_March, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 12, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 6+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 12+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 13+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 14+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 15+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_March, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_March, i, 8+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        Select i
          Case 8 To 15, 8+16 To 15+16
            \Data_Patterns(1, #Rhythm_March, n, i, #Pattern_Frequency) = 2
          Default
            Select n
              Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                \Data_Patterns(1, #Rhythm_March, n, i, #Pattern_Frequency) = 1
              Default
                \Data_Patterns(1, #Rhythm_March, n, i, #Pattern_Frequency) = 0
            EndSelect
        EndSelect
      Next
    Next
    
    
    ;---Tango
    For i = #Note_First To #Note_Last
      \Data_Patterns(1, #Rhythm_Tango, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 4, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 5, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 8, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 9, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 12, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 13, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 14, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 15, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 0+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 1+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 4+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 5+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 8+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 9+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 12+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 13+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 14+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 15+16, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(1, #Rhythm_Tango, i, 0, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 8, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 14, #Pattern_Chords) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 15, #Pattern_Chords) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Tango, i, 0+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 8+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 14+16, #Pattern_Chords) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Tango, i, 15+16, #Pattern_Chords) = #Curve_Release
      
      \Data_Patterns(1, #Rhythm_Tango, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 4, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 12, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 4+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 12+16, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Tango, i, 14, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 14+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Tango, i, 14, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 14+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Tango, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 0+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 8+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Tango, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        Select i
          Case 14 To 15, 14+16 To 15+16
            \Data_Patterns(1, #Rhythm_Tango, n, i, #Pattern_Frequency) = 2
          Default
            Select n
              Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                \Data_Patterns(1, #Rhythm_Tango, n, i, #Pattern_Frequency) = 1
              Default
                \Data_Patterns(1, #Rhythm_Tango, n, i, #Pattern_Frequency) = 0
            EndSelect
        EndSelect
      Next
    Next
    
    
    ;---Blues
    For i = #Note_First To #Note_Last
      \Data_Patterns(1, #Rhythm_Blues, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Blues, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Blues, i, 10, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Blues, i, 11, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Blues, i, 0+12, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Blues, i, 1+12, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Blues, i, 6+12, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Blues, i, 7+12, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Blues, i, 10+12, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Blues, i, 11+12, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(1, #Rhythm_Blues, i, 0, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 2, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 6, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 8, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 10, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 0+12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 2+12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 4+12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 6+12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 8+12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 10+12, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Blues, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 10, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 0+12, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Blues, i, 6, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 6+12, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Blues, i, 0, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 2, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 3, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 10, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 0+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 2+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 3+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 4+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 8+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Blues, i, 10+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 23
        Select i
          Case 0+12 To 5+12, 10+12 To 11+12
            \Data_Patterns(1, #Rhythm_Blues, n, i, #Pattern_Frequency) = 2
          Case 10 To 11, 6+12 To 9+12
            \Data_Patterns(1, #Rhythm_Blues, n, i, #Pattern_Frequency) = 3
          Default
            Select n
              Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                \Data_Patterns(1, #Rhythm_Blues, n, i, #Pattern_Frequency) = 1
              Default
                \Data_Patterns(1, #Rhythm_Blues, n, i, #Pattern_Frequency) = 0
            EndSelect
        EndSelect
      Next
    Next
    
    
    ;---Swing
    For i = #Note_First To #Note_Last
      \Data_Patterns(1, #Rhythm_Swing, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Swing, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Swing, i, 8, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Swing, i, 9, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Swing, i, 0+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Swing, i, 1+16, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Swing, i, 8+16, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Swing, i, 9+16, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(1, #Rhythm_Swing, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 7, #Pattern_Chords) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Swing, i, 8, #Pattern_Chords) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Swing, i, 12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 4+16, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 7+16, #Pattern_Chords) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Swing, i, 8+16, #Pattern_Chords) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Swing, i, 12+16, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Swing, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 8, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 0+16, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 8+16, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Swing, i, 0, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 8, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 0+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 8+16, #Pattern_Drum_Ride) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Swing, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 4+16, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Swing, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 7, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 15, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 4+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 7+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 12+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 15+16, #Pattern_Drum_HiHat) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Swing, i, 12, #Pattern_Drum_Click) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 15, #Pattern_Drum_Click) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 12+16, #Pattern_Drum_Click) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Swing, i, 15+16, #Pattern_Drum_Click) = #Curve_Oneshot
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 31
        Select i
          Case 8 To 15, 8+16 To 15+16
            \Data_Patterns(1, #Rhythm_Swing, n, i, #Pattern_Frequency) = 2
          Default
            Select n
              Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                \Data_Patterns(1, #Rhythm_Swing, n, i, #Pattern_Frequency) = 1
              Default
                \Data_Patterns(1, #Rhythm_Swing, n, i, #Pattern_Frequency) = 0
            EndSelect
        EndSelect
      Next
    Next
    
    
    ;---Waltz
    For i = #Note_First To #Note_Last
      \Data_Patterns(1, #Rhythm_Waltz, i, 0, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Waltz, i, 1, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Waltz, i, 0+12, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Waltz, i, 1+12, #Pattern_Bass) = #Curve_Release
      \Data_Patterns(1, #Rhythm_Waltz, i, 8+12, #Pattern_Bass) = #Curve_Trigger
      \Data_Patterns(1, #Rhythm_Waltz, i, 9+12, #Pattern_Bass) = #Curve_Release
      
      \Data_Patterns(1, #Rhythm_Waltz, i, 4, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 8, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 4+12, #Pattern_Chords) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 8+12, #Pattern_Chords) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Waltz, i, 0, #Pattern_Drum_BD) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 0+12, #Pattern_Drum_BD) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Waltz, i, 0, #Pattern_Drum_Ride) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 0+12, #Pattern_Drum_Ride) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Waltz, i, 4, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 8, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 3+12, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 4+12, #Pattern_Drum_Snare) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 8+12, #Pattern_Drum_Snare) = #Curve_Oneshot
      
      \Data_Patterns(1, #Rhythm_Waltz, i, 4, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 8, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 3+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 4+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
      \Data_Patterns(1, #Rhythm_Waltz, i, 8+12, #Pattern_Drum_HiHat) = #Curve_Oneshot
    Next
    
    For n = #Note_First To #Note_Last
      For i = 0 To 23
        Select i
          Case 0+12 To 7+12
            \Data_Patterns(1, #Rhythm_Waltz, n, i, #Pattern_Frequency) = 2
          Case 8+12 To 11+12
            \Data_Patterns(1, #Rhythm_Waltz, n, i, #Pattern_Frequency) = 3
          Default
            Select n
              Case #Note_Db, #Note_Eb, #Note_C, #Note_F, #Note_D, #Note_E
                \Data_Patterns(1, #Rhythm_Waltz, n, i, #Pattern_Frequency) = 1
              Default
                \Data_Patterns(1, #Rhythm_Waltz, n, i, #Pattern_Frequency) = 0
            EndSelect
        EndSelect
      Next
    Next
    
    
    ;-Knob Data
    \Value_Master_Button_Power_OnOff = 1
    \Value_Master_Knob_Volume = 0.5
    
    \Value_Level_Knob_Volume_Harp_1 = 1.0
    \Value_Level_Knob_Volume_Harp_2 = 1.0
    \Value_Level_Knob_Sustain = 0.5
    \Value_Level_Knob_Volume_Keyboard = 1.0
    \Value_Level_Knob_Volume_Chords = 1.0
    
    \Value_Rhythm_Button_Alternate_OnOff = 0
    \Value_Rhythm_Button_Alternate_OnOff_Current = 0
    \Value_Rhythm_Button_Pattern = #Rhythm_None
    \Value_Rhythm_Button_Pattern_Current = #Rhythm_None
    \Value_Rhythm_Button_AutoBassSync_OnOff = 1
    \Value_Rhythm_Knob_Tempo = 0.5
    \Value_Rhythm_Knob_Volume = 1.0
    
    \Value_Memory_Button_Memory_OnOff = 0
    \Value_Memory_Button_Playback_Record_OnOff = 1
    \Value_Memory_Button_Repeat_Delete = 0
    \Value_Memory_Button_Playback_Enter = 0
    
    \Value_Circuit_Knob_Tuning = 0.5
    
    \Value_Internal_Chord_Chord = #Chord_None
    \Value_Internal_Chord_Note = #Note_None
    
    \Value_Internal_Tick = 0.0
    
    For i = #Snd_First To #Snd_Last
      \Status_Sound(i) = #Curve_None
    Next
    
  EndWith
  
EndProcedure

Procedure MachineHandler(*Void)
  With Chordian\Machine_State
    
    Protected i.i
    
    Protected SendNewChord.i
    Protected SendNewTick.i
    
    Repeat
      WaitForSingleObject_(Chordian\Machine_Event\Semaphore_CallMachineHandler, -1)
      
      Select \Value_Rhythm_Button_Pattern_Current
        Case #Rhythm_None
          If \Value_Internal_Chord_Chord <> #Chord_None And \Value_Internal_Chord_Note <> #Note_None
            If \Value_Rhythm_Button_Pattern <> \Value_Rhythm_Button_Pattern_Current Or \Value_Rhythm_Button_Alternate_OnOff <> \Value_Rhythm_Button_Alternate_OnOff_Current
              \Value_Rhythm_Button_Alternate_OnOff_Current = \Value_Rhythm_Button_Alternate_OnOff
              \Value_Rhythm_Button_Pattern_Current = \Value_Rhythm_Button_Pattern
              \Value_Internal_Tick = 0
              \Value_Internal_Tick+(1.0/1000.0)*(4.7+Pow(\Value_Rhythm_Knob_Tempo, 2.2)*15.3)
              While \Value_Internal_Tick >= 32.0 Or (\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1)
                \Value_Internal_Tick-32.0+8.0*Bool(\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1)
              Wend
              SendNewChord = 1
              SendNewTick = 1
            EndIf
          Else
            \Value_Rhythm_Button_Alternate_OnOff_Current = \Value_Rhythm_Button_Alternate_OnOff
            \Value_Rhythm_Button_Pattern_Current = \Value_Rhythm_Button_Pattern
            \Value_Internal_Tick = 0
            \Value_Internal_Tick+(1.0/1000.0)*(4.7+Pow(\Value_Rhythm_Knob_Tempo, 2.2)*15.3)
            While \Value_Internal_Tick >= 32.0 Or (\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1)
              \Value_Internal_Tick-32.0+8.0*Bool(\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1)
            Wend
            SendNewChord = 1
            SendNewTick = 1
          EndIf
        Default
          If \Value_Internal_Chord_Chord <> #Chord_None And \Value_Internal_Chord_Note <> #Note_None
            If \Value_Rhythm_Button_Pattern = #Rhythm_None
              \Value_Rhythm_Button_Pattern_Current = \Value_Rhythm_Button_Pattern
              \Value_Internal_Tick = 0
              SendNewChord = 1
              SendNewTick = 1
            Else
              If Int(\Value_Internal_Tick+(1.0/1000.0)*(4.7+Pow(\Value_Rhythm_Knob_Tempo, 2.2)*15.3)) > Int(\Value_Internal_Tick)
                SendNewTick = 1
              EndIf
              \Value_Internal_Tick+(1.0/1000.0)*(4.7+Pow(\Value_Rhythm_Knob_Tempo, 2.2)*15.3)
              If \Value_Internal_Tick >= 32.0 Or (\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1) Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_None
                If \Value_Rhythm_Button_Pattern <> \Value_Rhythm_Button_Pattern_Current Or \Value_Rhythm_Button_Alternate_OnOff <> \Value_Rhythm_Button_Alternate_OnOff_Current
                  If (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1
                    \Value_Internal_Tick+8
                  EndIf
                  \Value_Rhythm_Button_Alternate_OnOff_Current = \Value_Rhythm_Button_Alternate_OnOff
                  \Value_Rhythm_Button_Pattern_Current = \Value_Rhythm_Button_Pattern
                  If (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1
                    \Value_Internal_Tick-8
                  EndIf
                  SendNewTick = 1
                EndIf
              EndIf
              While \Value_Internal_Tick >= 32.0 Or (\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1)
                \Value_Internal_Tick-32.0+8.0*Bool(\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1)
              Wend
            EndIf
          Else
            \Value_Rhythm_Button_Alternate_OnOff_Current = \Value_Rhythm_Button_Alternate_OnOff
            \Value_Rhythm_Button_Pattern_Current = \Value_Rhythm_Button_Pattern
            \Value_Internal_Tick = 0
            
            \Value_Internal_Tick+(1.0/1000.0)*(4.7+Pow(\Value_Rhythm_Knob_Tempo, 2.2)*15.3)
            While \Value_Internal_Tick >= 32.0 Or (\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1)
              \Value_Internal_Tick-32.0+8.0*Bool(\Value_Internal_Tick >= 24.0 And (\Value_Rhythm_Button_Pattern_Current = #Rhythm_Waltz Or \Value_Rhythm_Button_Pattern_Current = #Rhythm_Blues) And \Value_Rhythm_Button_Alternate_OnOff_Current = 1)
            Wend
            SendNewChord = 1
            SendNewTick = 1
          EndIf
          
      EndSelect
      
      If SendNewChord
        SendNewChord = 0
        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewChord, 1, 0)
      EndIf
      If SendNewTick
        SendNewTick = 0
        ReleaseSemaphore_(Chordian\Machine_Event\Semaphore_IsNewTick, 1, 0)
      EndIf
      
      
      
      
      
      
      
      
    ForEver
    
  EndWith
EndProcedure

