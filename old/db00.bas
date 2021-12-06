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

sub DB_Ini(DB() as string)
    redim DB(0 to 0)
    DB(0)=mkl(0)
end sub

sub DB_Insert(DB() as string, byref Best as integer)
    dim as integer DB_Ct, Cur, Index
    DB_Ct=cvl(DB(0))
    'if DB_Debug then print "DB_Insert(DB(), "+str(DB_Ct)+", "+str(Best)+")"
    if DB_Ct<0 then DB_Ct=0
    if Best<0 then return
    DB_Ct=DB_Ct+1
    redim preserve DB(0 to (DB_Ct shl 2)+1) as string
    for Cur=DB_Ct-2 to Best step -1
        for Index=0 to 2
            DB((((Cur+1) shl 2) or Index)+1)=DB((((Cur) shl 2) or Index)+1)
        next
    next
    DB(0)=mkl(DB_Ct)
    return
end sub

sub DB_Remove(DB() as string, byref Best as integer)
    dim as integer DB_Ct, Cur, Index
    DB_Ct=cvl(DB(0))
    'if DB_Debug then print "DB_Remove(DB(), "+str(DB_Ct)+", "+str(Best)+")"
    if DB_Ct<=0 then return
    if Best<0 or Best>DB_Ct-1 then return
    for Cur=Best to DB_Ct-2 step 1
        for Index=0 to 2
            DB(((Cur shl 2) or Index)+1)=DB((((Cur+1) shl 2) or Index)+1)
        next
    next
    DB_Ct=DB_Ct-1
    if DB_Ct>=0 then
        redim preserve DB(0 to (DB_Ct shl 2)+1) as string
    end if
    DB(0)=mkl(DB_Ct)
    return
end sub

sub DB_Poke(DB() as string, Dat() as string)
    'if DB_Debug then print "DB_Poke(DB(), "+str(DB_Ct)+", Dat)"
    'if DB_Debug then print "Dat.Label:"+chr(34)+Dat(DB_Label)+chr(34)
    'if DB_Debug then print "Dat.Format:"+chr(34)+Dat(DB_Format)+chr(34)
    'if DB_Debug then print "Dat.Value:"+chr(34)+Dat(DB_Value)+chr(34)
    dim as integer DB_Ct, Best, Cur, Index
    dim as string Label
    DB_Ct=cvl(DB(0))
    Label=Dat(DB_Label)
    Cur=DB_Seek(DB(), Label, Best)
    'if DB_Debug then print "Best:"+str(Best)
    'if DB_Debug then print "Cur:"+str(Cur)
    select case Best
    case -1
        for Index=0 to 2
            DB(((Cur shl 2) or Index)+1)=Dat(Index)
        next
    case else
        DB_Insert DB(), Best
        DB_Ct=cvl(DB(0))
        for Index=0 to 2
            DB(((Best shl 2) or Index)+1)=Dat(Index)
        next
    end select
    'if DB_Debug then print "Dat.Label:"+chr(34)+Dat(DB_Label)+chr(34)
    'if DB_Debug then print "Dat.Format:"+chr(34)+Dat(DB_Format)+chr(34)
    'if DB_Debug then print "Dat.Value:"+chr(34)+Dat(DB_Value)+chr(34)
    DB(0)=mkl(DB_Ct)
    return
    'DB_Peek DB(), Dat()
end sub

sub DB_Peek(DB() as string, Dat() as string)
    'if DB_Debug then print "DB_Peek(DB(), "+str(DB_Ct)+", Dat)"
    'if DB_Debug then print "Dat.Label:"+chr(34)+Dat(DB_Label)+chr(34)
    'if DB_Debug then print "Dat.Format:"+chr(34)+Dat(DB_Format)+chr(34)
    'if DB_Debug then print "Dat.Value:"+chr(34)+Dat(DB_Value)+chr(34)
    dim as integer DB_Ct, Best, Cur, Index
    dim as string Label
    Db_Ct=cvl(DB(0))
    Label=Dat(DB_Label)
    Cur=DB_Seek(DB(), Label, Best)
    'if DB_Debug then print "Best:"+str(Best)
    'if DB_Debug then print "Cur:"+str(Cur)
    select case Cur
    case -1
        for Index=1 to 2
            Dat(Index)=space(0)
        next
    case else
        for Index=0 to 2
            Dat(Index)=DB(((Cur shl 2) or Index)+1)
        next
    end select
    'if DB_Debug then print "Dat.Label:"+chr(34)+Dat(DB_Label)+chr(34)
    'if DB_Debug then print "Dat.Format:"+chr(34)+Dat(DB_Format)+chr(34)
    'if DB_Debug then print "Dat.Value:"+chr(34)+Dat(DB_Value)+chr(34)
    DB(0)=mkl(DB_Ct)
    return
end sub

sub DB_Pop(DB() as string, Dat() as string)
    'if DB_Debug then print "DB_Pop(DB(), "+str(DB_Ct)+", Dat)"
    'if DB_Debug then print "Dat.Label:"+chr(34)+Dat(DB_Label)+chr(34)
    'if DB_Debug then print "Dat.Format:"+chr(34)+Dat(DB_Format)+chr(34)
    'if DB_Debug then print "Dat.Value:"+chr(34)+Dat(DB_Value)+chr(34)
    dim as integer DB_Ct, Best, Cur, Index
    dim as string Label
    DB_Ct=cvl(DB(0))
    Label=Dat(DB_Label)
    Cur=DB_Seek(DB(), Label, Best)
    'if DB_Debug then print "Best:"+str(Best)
    'if DB_Debug then print "Cur:"+str(Cur)
    select case Cur
    case -1
        for Index=1 to 2
            Dat(Index)=space(0)
        next
    case else
        for Index=0 to 2
            Dat(Index)=DB(((Cur shl 2) or Index)+1)
        next
        DB_Remove DB(), Cur
        DB_Ct=cvl(DB(0))
    end select
    'if DB_Debug then print "Dat.Label:"+chr(34)+Dat(DB_Label)+chr(34)
    'if DB_Debug then print "Dat.Format:"+chr(34)+Dat(DB_Format)+chr(34)
    'if DB_Debug then print "Dat.Value:"+chr(34)+Dat(DB_Value)+chr(34)
    DB(0)=mkl(DB_Ct)
    return
end sub

function DB_Seek(DB() as string, byref Label as string, byref Best as integer) as integer
    dim as integer DB_Ct, Min, Max, Cur, Lo, Hi, Flag, Ret
    'if DB_Debug then print "DB_Seek(DB(), "+str(DB_Ct)+", Label, "+str(Best)+")"
    'if DB_Debug then print "Label:"+chr(34)+Label+chr(34)
    DB_Ct=cvl(DB(0))
    Flag=0
    Min=0
    Max=DB_Ct-1
    if Max<Min then
        Best=Min
        Ret=-1
    else
        Cur=(Max-Min shr 1)+Min
        if Cur<Min then Cur=Min
        if Cur>Max then Cur=Max
        do
            'if DB_Debug then print str(Min)+"/"+str(Cur)+"/"+str(Max)+":"+chr(34)+Label+chr(34)+"Vs"+chr(34)+DB((Cur shl 2) or DB_Label)+chr(34)
            Cur=(Max-Min shr 1)+Min
            if Cur<Min then Cur=Min
            if Cur>Max then Cur=Max
            if Max<Min then
                Best=Min
                Ret=-1
                exit do
            end if
            select case DB_Str_Compare(Label, DB(((Cur shl 2) or DB_Label)+1), 4)
            case -1
                if Min=Max then
                    Best=Min
                    Ret=-1
                    exit do
                end if
                if Cur=Min then
                    Best=Cur
                    Ret=-1
                    exit do
                else
                    Max=Cur-1
                end if
            case 1
                if Min=Max then
                    Best=Min+1
                    Ret=-1
                    exit do
                end if
                if Cur=Max then
                    Best=Cur+1
                    Ret=-1
                    exit do
                else
                    Min=Cur+1
                end if
            case else
                Best=-1
                Ret=Cur
                exit do
            end select
        loop
    end if 
    if Cur=0 and DB_Ct=0 then
        Ret=-1
        Best=0
    end if
    DB(0)=mkl(DB_Ct)
    return Ret
end function

sub DB_Save(DB() as string, byref Filename as string)
    dim as integer DB_Ct, Cur, Length, Mode, Reserved_Cell_Ct, Valid_Cell_Ct
    DB_Ct=cvl(DB(0))
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

        Length=len(DB(((Cur shl 2) or DB_Label)+1))
        put #Mode, seek(Mode), Length
        put #Mode, seek(Mode), DB((Cur shl 2) or DB_Label)        
        
        Length=len(DB(((Cur shl 2) or DB_Format)+1))
        put #Mode, seek(Mode), Length
        put #Mode, seek(Mode), DB((Cur shl 2) or DB_Format)        
        
        Length=len(DB(((Cur shl 2) or DB_Value)+1))
        put #Mode, seek(Mode), Length
        put #Mode, seek(Mode), DB(((Cur shl 2) or DB_Value)+1)
    next
    close #Mode
end sub

sub DB_Load(DB() as string, byref Filename as string)
    dim as integer DB_Ct, Cur, Length, Mode, Reserved_Cell_Ct, Valid_Cell_Ct
    DB_Ct=cvl(DB(0))
    Reserved_Cell_Ct=4
    Valid_Cell_Ct=3
    Mode=freefile
    open Filename for binary as #Mode
    get #Mode, seek(Mode), DB_Ct
    redim DB(0 to (DB_Ct shl 2)+1)
    get #Mode, seek(Mode), Reserved_Cell_Ct
    get #Mode, seek(Mode), Valid_Cell_Ct
    do while not(eof(Mode))
        get #Mode, seek(Mode), Cur

        get #Mode, seek(Mode), Length
        DB(((Cur shl 2) or DB_Label)+1)=space(Length)
        get #Mode, seek(Mode), DB(((Cur shl 2) or DB_Label)+1)

        get #Mode, seek(Mode), Length
        DB((Cur shl 2) or DB_Format)=space(Length)
        get #Mode, seek(Mode), DB(((Cur shl 2) or DB_Format)+1)

        get #Mode, seek(Mode), Length
        DB((Cur shl 2) or DB_Value)=space(Length)
        get #Mode, seek(Mode), DB(((Cur shl 2) or DB_Value)+1)
    loop
    close #Mode
    DB(0)=mkl(DB_Ct)
end sub

sub DB_Save_Text(DB() as string, byref Filename as string)
    dim as integer DB_Ct, Cur, Mode
    dim as string ln
    DB_Ct=cvl(DB(0))
    Mode=freefile
    open Filename for output as #Mode
    for Cur=0 to DB_Ct-1
        ln=space(0)
        ln=ln+chr(34)+DB_URI_Encode(DB(((Cur shl 2) or DB_Label)+1))+chr(34)
        ln=ln+"="
        ln=ln+chr(34)+DB_URI_Encode(DB(((Cur shl 2) or DB_Value)+1))+chr(34)
        print #Mode,ln
    next
    close #Mode
end sub

sub DB_Load_Text(DB() as string, byref Filename as string)
    dim as integer DB_Ct, Mode
    dim as string ln
    redim as string Dat(0 to 3)
    DB_Ct=0
    redim DB((DB_Ct shl 2)+1)
    Mode=freefile
    open Filename for input as #Mode
    do while not(eof(Mode))
        line input #Mode, ln
        DB_Text_Decode ln, Dat()
        if Dat(DB_Format)<>"error" then
            DB_Poke DB(), Dat()
        end if
    loop
    close #Mode
end sub

sub DB_Get (DB() as string, DB_Dat() as string, Label as string)
    DB_Dat(DB_Label)=Label
    DB_Dat(DB_Value)=DB_Blank
    DB_Dat(DB_Format)=DB_Blank
    DB_Peek DB(), DB_Dat()
end sub

sub DB_Set (DB() as string, Label as string, Value as string)
    DB_Dat(DB_Label)=Label
    DB_Dat(DB_Value)=Value
    DB_Dat(DB_Format)="string"
    DB_Poke DB(), DB_Dat()
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
                    Ret=Ret+chr(val("&H"+mid(Tmp,2,2)))
                end if
                Tmp=mid(Tmp,4)
            else
                Ret=Ret+left(Tmp,1)
                Tmp=mid(Tmp,2)
            endif
        loop
        return Ret
end function

sub DB_Text_Decode(ln as string, Dat() as string)
    dim as integer O
    dim as string Label, Value
    Dat(DB_Label)=space(0)
    Dat(DB_Format)=space(0)
    Dat(DB_Value)="error"
    O=instr(1,ln,"=")
    if O=0 then exit sub
    Label=mid(ln,1,O-1)
    Value=mid(ln,O+1,len(ln)-o)
    if left(Label,1)<>chr(34) or right(Label,1)<>chr(34) or left(Value,1)<>chr(34) or right(Value,1)<>chr(34) then exit sub
    Label=mid(Label,2,len(Label)-2)
    Value=mid(Value,2,len(Value)-2)
    if instr(1,Label,chr(34))>0 or instr(1,Value,chr(34))>0 then exit sub
    Dat(DB_Label)=DB_URI_Decode(Label)
    Dat(DB_Value)=DB_URI_Decode(Value)
    Dat(DB_Format)="string"
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

sub DB_Dict_Get (DB() as string, byref Label as string, byref Value as string, Default as string)
    dim DB_Dat(0 to 3) as string
    DB_Get DB(), DB_Dat(), Label
    if lcase(DB_Dat(DB_Format))="string" then
        Value=DB_Dat(DB_Value)
    else
        Value=Default
    end if
end sub

function DB_Dict_Get_Fast (DB() as string, Label as string) as string
    dim as string Value, Default=space(0)
    DB_Dict_Get DB(), Label, Value, Default
    return Value
end function
