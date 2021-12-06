#inclib "db00"

    const DB_Label=0
    const DB_Format=1
    const DB_Value=2
    const DB_Addr=3
    const DB_Blank=""
    
    declare sub DB_Ini(DB() as string)

    declare sub DB_Insert(DB() as string, byref Best as integer)
    declare sub DB_Remove(DB() as string, byref Best as integer)
    declare sub DB_Poke(DB() as string, Dat() as string)
    declare sub DB_Peek(DB() as string, Dat() as string)
    declare sub DB_Pop(DB() as string, Dat() as string)
    declare function DB_Seek(DB() as string, byref Label as string, byref Best as integer) as integer

    declare sub DB_Save(DB() as string, byref Filename as string)
    declare sub DB_Load(DB() as string, byref Filename as string)

    declare sub DB_Save_Text(DB() as string, byref Filename as string)
    declare sub DB_Load_Text(DB() as string, byref Filename as string)
    
    declare sub DB_Get (DB() as string, DB_Dat() as string, Label as string)
    declare sub DB_Set (DB() as string, Label as string, Value as string)

    declare function DB_URI_Encode(Value as string) as string
    declare function DB_URI_Decode(Value as string) as string
    declare sub DB_Text_Decode(ln as string, Dat() as string)

    declare function DB_Str2Hex (Value as string) as string
    declare function DB_Hex2Str (Value as string) as string
    declare function DB_Str_Compare(Label_This as string, Label_That as string, Span as integer) as integer

    declare sub DB_Dict_Get (DB() as string, byref Label as string, byref Value as string, Default as string)
    declare function DB_Dict_Get_Fast (DB() as string, Label as string) as string

    dim shared as integer DB_Debug=0
    redim shared as string DB_Dat(0 to 3)
    dim shared as integer DB_T, DB_Index, DB_Best, DB_Cur, DB_Index_First, DB_Index_Last
    redim shared as string DB(0 to 0)
