'Advanced freeBASIC Database Routines 0x001
'Created August 8th - November 21st 2009 by Timothy Robert Keal alias jargon
'Released under the Gnu Public License 2.0
'
'http://retromachineshop.com/
'irc://chat.freenode.net/puzzlum
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html
#inclib "db001"

type DB_Cell
    lbl as string                   'label      string
    dat as string                   'data       string
    format as uinteger              'mask       uinteger
    uint8 as ubyte                  '1          mask 1<<0
    sint8 as byte                   '2          mask 1<<1
    uint16 as ushort                '4          mask 1<<2
    sint16 as short                 '8          mask 1<<3
    uint32 as uinteger              '16         mask 1<<4
    sint32 as integer               '32         mask 1<<5
    float32 as single               '64         mask 1<<6
    float64 as double               '128        mask 1<<7
    binstr as string                '256        mask 1<<8
    charstr as zstring ptr          '512        mask 1<<9
    widestr as wstring ptr          '1024       mask 1<<10
end type

    const DB_HeaderSz=16
    const DB_Count=0
    const DB_Index_Dat=0
    const DB_Label=0
    const DB_Format=1
    const DB_Value=2
    const DB_Addr=3
    const DB_Blank=""
    const DB_Error=&H80000000
    const DB_Valid=0

    declare sub DB_Ini(DB() as DB_Cell)

    declare sub DB_Insert(DB() as DB_Cell, byref Best as integer)
    declare sub DB_Remove(DB() as DB_Cell, byref Best as integer)
    declare sub DB_Poke(DB() as DB_Cell, Dat() as DB_Cell)
    declare sub DB_Peek(DB() as DB_Cell, Dat() as DB_Cell)
    declare sub DB_Pop(DB() as DB_Cell, Dat() as DB_Cell)
    declare function DB_Seek(DB() as DB_Cell, byref Label as string, byref Best as integer) as integer

    declare sub DB_Save(DB() as DB_Cell, byref Filename as string)
    declare sub DB_Load(DB() as DB_Cell, byref Filename as string)

    declare sub DB_Save_Text(DB() as DB_Cell, byref Filename as string)
    declare sub DB_Load_Text(DB() as DB_Cell, byref Filename as string)
    
    declare sub DB_Get (DB() as DB_Cell, DB_Dat() as DB_Cell, Label as string)
    declare sub DB_Set (DB() as DB_Cell, Label as string, Value as string)

    declare function DB_URI_Encode(Value as string) as string
    declare function DB_URI_Decode(Value as string) as string
    declare sub DB_Text_Decode(ln as string, Dat() as DB_Cell)

    declare function DB_Str2Hex (Value as string) as string
    declare function DB_Hex2Str (Value as string) as string
    declare function DB_Str_Compare(Label_This as string, Label_That as string, Span as integer) as integer

    declare sub DB_Dict_Get (DB() as DB_Cell, byref Label as string, byref Value as string, Default as string)
    declare function DB_Dict_Get_Fast (DB() as DB_Cell, Label as string) as string

    declare function DB_Resize(New_Ct as uinteger) as uinteger

    dim shared as integer DB_Debug=0
    redim shared as DB_Cell DB_Dat(0 to 3)
    dim shared as integer DB_T, DB_Index, DB_Best, DB_Cur, DB_Index_First, DB_Index_Last
    redim shared as DB_Cell DB(0 to 0)
