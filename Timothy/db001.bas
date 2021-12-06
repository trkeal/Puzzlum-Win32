'Advanced freeBASIC Database Routines 0x001
'Created August 8th - November 21st 2009 by Timothy Robert Keal alias jargon
'Released under the Gnu Public License 2.0
'
'http://retromachineshop.com/
'irc://chat.freenode.net/puzzlum
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

    const Timothy_Read=TIMOTHY_ACCESS_RESET or TIMOTHY_ACCESS_READ or TIMOTHY_ACCESS_DEBUG
    const Timothy_Write=TIMOTHY_ACCESS_RESET or TIMOTHY_ACCESS_READ or TIMOTHY_ACCESS_ALLOCATION or TIMOTHY_ACCESS_WRITE or TIMOTHY_ACCESS_OVERWRITE or TIMOTHY_ACCESS_DEBUG
    const Timothy_Delete=TIMOTHY_ACCESS_RESET or TIMOTHY_ACCESS_READ or TIMOTHY_ACCESS_DELETE or TIMOTHY_ACCESS_DEBUG

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
    const DB_Error=&HFFFFFFFF
    const DB_Valid=0

    declare sub DB_Ini(DB() as DB_Cell)

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

sub DB_Ini(DB() as Timothy_node_type)
    Timothy_memory_ini DB(), Timothy_Delete
end sub

sub DB_Save(DB() as Timothy_node_type, byref Filename as string)
    dim as uinteger DB_Ct, Cur, Length, Mode, Reserved_Cell_Ct, Valid_Cell_Ct
    DB_Ct=DB(DB_Count).uint32
    Reserved_Cell_Ct=4
    Valid_Cell_Ct=3
    Mode=freefile
    open Filename for output as #Mode
    close #Mode
    open Filename for binary as #Mode
    put #Mode, seek(Mode), DB_Ct
    put #Mode, seek(Mode), Reserved_Cell_Ct
    put #Mode, seek(Mode), Valid_Cell_Ct
    for Cur=0 to DB_Ct-1
        put #Mode, seek(Mode), Cur

        Length=len(DB(Cur+DB_HeaderSz).lbl)
        put #Mode, seek(Mode), Length
        put #Mode, seek(Mode), DB(Cur+DB_HeaderSz).lbl
        
        Length=4
        put #Mode, seek(Mode), Length
        put #Mode, seek(Mode), DB(Cur+DB_HeaderSz).format
        
        Length=len(DB(Cur+DB_HeaderSz).dat)
        put #Mode, seek(Mode), Length
        put #Mode, seek(Mode), DB(Cur+DB_HeaderSz).dat
    next
    close #Mode
end sub

sub DB_Load(DB() as Timothy_node_type, byref Filename as string)
    dim as uinteger DB_Ct, Cur, Length, Mode, Reserved_Cell_Ct, Valid_Cell_Ct
    DB_Ct=DB(DB_Count).uint32
    Reserved_Cell_Ct=4
    Valid_Cell_Ct=3
    Mode=freefile
    open Filename for binary as #Mode
    get #Mode, seek(Mode), DB_Ct
    redim DB(0 to DB_HeaderSz+DB_Resize(DB_Ct)-1)
    get #Mode, seek(Mode), Reserved_Cell_Ct
    get #Mode, seek(Mode), Valid_Cell_Ct
    do while not(eof(Mode))
        get #Mode, seek(Mode), Cur

        get #Mode, seek(Mode), Length
        DB(Cur+DB_HeaderSz).lbl=space(Length)
        get #Mode, seek(Mode), DB(Cur+DB_HeaderSz).lbl

        get #Mode, seek(Mode), Length
        get #Mode, seek(Mode), DB(Cur+DB_HeaderSz).format

        get #Mode, seek(Mode), Length
        DB(Cur+DB_HeaderSz).dat=space(Length)
        get #Mode, seek(Mode), DB(Cur+DB_HeaderSz).dat
    loop
    close #Mode
    DB(DB_Count).uint32=DB_Ct
end sub

sub DB_Save_Text(DB() as Timothy_node_type, byref Filename as string)
    dim as uinteger DB_Ct, Cur, Mode
    dim as string ln
    DB_Ct=DB(DB_Count).uint32
    Mode=freefile
    open Filename for output as #Mode
    for Cur=0 to DB_Ct-1
        ln=space(0)
        ln=ln+chr(34)+DB_URI_Encode(DB(Cur+DB_HeaderSz).lbl)+chr(34)
        ln=ln+"="
        ln=ln+chr(34)+DB_URI_Encode(DB(Cur+DB_HeaderSz).dat)+chr(34)
        print #Mode,ln
    next
    close #Mode
end sub

sub DB_Load_Text(DB() as Timothy_node_type, byref Filename as string)
    dim as integer DB_Ct, Mode
    dim as string ln
    redim as DB_Cell Dat(0 to 3)
    DB_Ct=0
    redim DB(DB_HeaderSz+DB_Resize(DB_Ct)-1)
    Mode=freefile
    open Filename for input as #Mode
    do while not(eof(Mode))
        line input #Mode, ln
        DB_Text_Decode ln, Dat()
        if not((Dat(DB_Index_Dat).format and DB_Error)=DB_Error) then
            DB_Poke DB(), Dat()
        end if
    loop
    close #Mode
end sub

sub DB_Get (DB() as Timothy_node_type, Dat() as DB_Cell, Label as string)
    DB_Dat(DB_Index_Dat).format=DB_Valid
    DB_Dat(DB_Index_Dat).dat=Timothy_memory(DB(),Label,space(0),Timothy_Read,Timothy_Read,DB_Dat(DB_Index_Dat).format)
    DB_Dat(DB_Index_Dat).uint32=0
    DB_Dat(DB_Index_Dat).format=DB_Dat(DB_Index_Dat).format and DB_Error
end sub

sub DB_Set (DB() as Timothy_node_type, Label as string, Value as string)
    DB_Dat(DB_Index_Dat).format=DB_Valid
    Dat(DB_Index_Dat).dat=Timothy_memory(DB(),Label,Value,Timothy_Write,Timothy_Write,Dat(DB_Index_Dat).format)
    Dat(DB_Index_Dat).uint32=0
    DB_Dat(DB_Index_Dat).lbl=Label
    DB_Dat(DB_Index_Dat).dat=Value
    DB_Dat(DB_Index_Dat).uint32=0
    DB_Dat(DB_Index_Dat).format=DB_Dat(DB_Index_Dat).format and DB_Error
end sub

function DB_URI_Encode(Value as string) as string
    dim as string Ret, Tmp
    dim as integer O
    for O=1 to len(Value)
        Tmp=mid(Value,O,1)
        if asc(Tmp)<=32 or asc(Tmp)>=127 or Tmp="=" or Tmp=chr(34) then Tmp="%"+right(string(2,"0")+hex(asc(Tmp)),2)
        Ret=Ret+Tmp
    next
    return Ret
end function

function DB_URI_Decode(Value as string) as string
    dim as string Ret, Tmp
    dim as integer O
    Tmp=Value
    do while len(Tmp)>0
        if left(Tmp,1)="%" then
            if len(Tmp)>=3 then
                Ret=Ret+DB_Hex2Str(mid(Tmp,2,2))
            end if
            Tmp=mid(Tmp,4)
        else
            Ret=Ret+left(Tmp,1)
            Tmp=mid(Tmp,2)
        endif
    loop
    return Ret
end function

sub DB_Text_Decode(ln as string, Dat() as DB_Cell)
    dim as integer O
    dim as string Label, Value
    Dat(DB_Index_Dat).lbl=space(0)
    Dat(DB_Index_Dat).dat=space(0)
    Dat(DB_Index_Dat).format=DB_Error
    Dat(DB_Index_Dat).uint32=0
    O=instr(1,ln,"=")
    if O=0 then exit sub
    Label=mid(ln,1,O-1)
    Value=mid(ln,O+1,len(ln)-o)
    if left(Label,1)<>chr(34) or right(Label,1)<>chr(34) or left(Value,1)<>chr(34) or right(Value,1)<>chr(34) then exit sub
    Label=mid(Label,2,len(Label)-2)
    Value=mid(Value,2,len(Value)-2)
    if instr(1,Label,chr(34))>0 or instr(1,Value,chr(34))>0 then exit sub
    Dat(DB_Index_Dat).lbl=DB_URI_Decode(Label)
    Dat(DB_Index_Dat).dat=DB_URI_Decode(Value)
    Dat(DB_Index_Dat).format=DB_Format=DB_Valid
end sub

function DB_Str2Hex (Value as string) as string
    dim as string Ret
    dim as integer O
    for O=1 to len(Value)
        Ret=Ret+right(string(2,"0")+hex(asc(mid(Value,o,1))),2)
    next
    return Ret
end function

function DB_Hex2Str (Value as string) as string
    dim as string Ret
    dim as integer O
    for O=1 to (len(Value) shr 1)
        Ret=Ret+chr(val("&H"+mid(Value,(o shl 1)-1,2)))
    next
    return Ret
end function

function DB_Str_Compare(Label_This as string, Label_That as string, Span as integer) as integer
    dim as integer Offset=0, Max=len(Label_This)+1
    dim as string String_That    
    if Span<1 then Span=4
    do while Offset<Max
        String_That=mid(Label_That,Offset+1,Span)
        select case mid(Label_This,Offset+1,Span)
        case is < String_That
            return -1
        case is > String_That
            return 1
        end select
        Offset=Offset+Span
    loop
    return 0
end function

sub DB_Dict_Get (DB() as Timothy_node_type, byref Label as string, byref Value as string, Default as string)
    redim Dat(0 to 0) as DB_Cell
    DB_Get DB(), Dat(), Label
    if Dat(DB_Index_Dat).format=DB_Valid then
        Value=Dat(DB_Index_Dat).dat
    else
        Value=Default
    end if
end sub

function DB_Dict_Get_Fast (DB() as Timothy_node_type, Label as string) as string
    dim as string Value, Default=space(0)
    DB_Dict_Get DB(), Label, Value, Default
    return Value
end function
