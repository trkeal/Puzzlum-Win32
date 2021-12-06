'Timothy.bas
'Advanced "Timothy" associative array FreeBASIC source code 0x000
'
'Created December 22nd 2009 - May 6th 2010 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

const TIMOTHY_ACCESS_RESET=1         'bit 0, yes reset error
const TIMOTHY_ACCESS_READ=2          'bit 1, yes read
const TIMOTHY_ACCESS_ALLOCATION=4    'bit 2, yes allocation
const TIMOTHY_ACCESS_WRITE=8         'bit 3, yes write
const TIMOTHY_ACCESS_OVERWRITE=16    'bit 4, yes overwrite
const TIMOTHY_ACCESS_DELETE=32       'bit 5, yes delete
const TIMOTHY_ACCESS_DEBUG=64        'bit 6, yes debug
const TIMOTHY_ACCESS_TRACE=128       'bit 7, yes trace
'const TIMOTHY_ACCESS_DUMP=256        'bit 8, yes dump

const TIMOTHY_MEMORY_BASELINE=8      'lower limit of node doubling as power of two
const TIMOTHY_MEMORY_PREFIX=chr(1)   'label prefiX

const TIMOTHY_VALIDATE_ZERO=1        'bit 0, zero capacity
const TIMOTHY_VALIDATE_ALLOCATION=2  'bit 1, within allocated capacity
const TIMOTHY_VALIDATE_WRITTEN=4     'bit 2, within used capacity
const TIMOTHY_VALIDATE_CAPACITY=8    'bit 4, equal to used capacity

const TIMOTHY_FORK_WRITTEN=15        'bits 0..3, fork is-written states
const TIMOTHY_FORK_ADDRESS=240       'bits 4..7, forked address is-valid states

const TIMOTHY_IS_WRITTEN=1           'bit 0, is-written state
const TIMOTHY_IS_VALID=2             'bit 1, is-valid state (by address)

const TIMOTHY_VALUE_WRITTEN=4        'bit 2, value is-written state

const TIMOTHY_DEFAULT_ORIGIN=0       '(default) fork of origination address
const TIMOTHY_DEFAULT_WRITTEN=0      '(default) is-written state
const TIMOTHY_DEFAULT_ADDRESS=0      '(default) address
const TIMOTHY_DEFAULT_VALUE=""       '(default) cell value
const TIMOTHY_DEFAULT_RESET=0        '(default) access failmask as masked after reset
const TIMOTHY_DEFAULT_INDEX=1        '(default) index for memory seek

const TIMOTHY_CODEC_DECODE=0
const TIMOTHY_CODEC_ENCODE=1

type Timothy_fork_type
    origin as uinteger
    written as uinteger
    address as uinteger
end type

type Timothy_cell_type
    written as uinteger
    value as string
end type

type Timothy_node_type
    parent as Timothy_fork_type
    child as Timothy_fork_type
    sibling(0 to 1) as Timothy_fork_type
    fork(0 to 3) as Timothy_fork_type
    cell as Timothy_cell_type
end type

type Timothy_queue_type
    label as string
    value as string
    request as uinteger
    waccess as uinteger
    fail as uinteger
    index as uinteger
    octet as uinteger
    biet as uinteger
    ret as string
end type

declare function Timothy_check_allocation(Timothy_db() as Timothy_node_type, byval i as uinteger, byval waccess as uinteger) as uinteger
declare function Timothy_check_validate(Timothy_db() as Timothy_node_type, byval i as uinteger) as uinteger
declare function Timothy_check_fork(node as Timothy_node_type) as uinteger
declare sub Timothy_memory_ini(Timothy_db() as Timothy_node_type, byval waccess as uinteger)
declare sub Timothy_memory_cpy(Timothy_db() as Timothy_node_type, src as uinteger, dst as uinteger)
declare sub Timothy_memory_mov(Timothy_db() as Timothy_node_type, src as uinteger, dst as uinteger)
declare function Timothy_memory_pop(Timothy_db() as Timothy_node_type, byval i as uinteger) as Timothy_node_type
declare function Timothy_memory(Timothy_db() as Timothy_node_type, byval label as string, byval value as string, byval request as uinteger, byval waccess as uinteger, byref fail as uinteger, byref index as uinteger, byref octet as uinteger, byref biet as uinteger) as string
declare sub Timothy_memory_save(dat() as string, filename as string)
declare sub Timothy_memory_load(queue() as Timothy_queue_type, filename as string, byval request as uinteger, byval waccess as uinteger)
declare sub Timothy_memory_dump(Timothy_db() as Timothy_node_type, ret() as string, label as string, byref i as uinteger, byval oo as uinteger, byref bo as uinteger)
declare sub Timothy_memory_dump_loop(Timothy_db() as Timothy_node_type, ret() as string, label as string, byref index as uinteger, byval octet as uinteger, byref biet as uinteger)
declare sub Timothy_memory_dump_save(dump() as string, filename as string)
declare sub Timothy_memory_dump_load(dump() as string, filename as string)
declare sub Timothy_memory_dump_queue(dump() as string, queue() as Timothy_queue_type)
declare sub Timothy_memory_queue(Timothy_db() as Timothy_node_type,queue() as Timothy_queue_type,waccess as uinteger)
declare function Timothy_codec_tag(haystack as string, direction as uinteger) as string

function Timothy_check_allocation(Timothy_db() as Timothy_node_type, byval i as uinteger, byval waccess as uinteger) as uinteger
    dim as uinteger tmp=(1 shl (fix(log(cdbl(i+(1 shl TIMOTHY_MEMORY_BASELINE)))/log(2))+1))-1
    if waccess and TIMOTHY_ACCESS_ALLOCATION then
        if ubound(Timothy_db,1)<>tmp then
            redim preserve Timothy_db(0 to tmp)
        endif
    endif
    return tmp
end function

function Timothy_check_validate(Timothy_db() as Timothy_node_type, byval i as uinteger) as uinteger
    dim as uinteger ret=0
    ret=ret or (TIMOTHY_VALIDATE_ZERO and (ubound(Timothy_db,1)=0))
    ret=ret or (TIMOTHY_VALIDATE_ALLOCATION and (i<=ubound(Timothy_db,1)))
    ret=ret or (TIMOTHY_VALIDATE_WRITTEN and (i<=Timothy_db(0).parent.written))
    ret=ret or (TIMOTHY_VALIDATE_CAPACITY and (i=Timothy_db(0).parent.written))
    return ret
end function

function Timothy_check_fork(node as Timothy_node_type) as uinteger
    dim as uinteger bi=0,ret=0
    for bi=0 to 3
        ret=ret or ((((node.fork(bi).written>0) and 1) shl bi) and TIMOTHY_FORK_WRITTEN)
        ret=ret or ((((node.fork(bi).address>0) and 1) shl (bi or 4)) and TIMOTHY_FORK_ADDRESS)
    next
    return ret
end function

sub Timothy_memory_ini(Timothy_db() as Timothy_node_type, byval waccess as uinteger)
    dim as uinteger biet=0,i=0
    if TIMOTHY_ACCESS_ALLOCATION=(waccess and TIMOTHY_ACCESS_ALLOCATION) then
        redim Timothy_db(0 to 0) as Timothy_node_type
        Timothy_db(0).parent.origin=TIMOTHY_DEFAULT_ORIGIN
        Timothy_db(0).parent.written=TIMOTHY_DEFAULT_WRITTEN
        Timothy_db(0).parent.address=TIMOTHY_DEFAULT_ADDRESS
        for biet=0 to 3
            Timothy_db(0).fork(biet).written=TIMOTHY_DEFAULT_WRITTEN
            Timothy_db(0).fork(biet).address=TIMOTHY_DEFAULT_ADDRESS
        next
        Timothy_db(0).cell.written=TIMOTHY_DEFAULT_WRITTEN
        Timothy_db(0).cell.value=TIMOTHY_DEFAULT_VALUE
    endif
    i=Timothy_check_allocation(Timothy_db(), 0, waccess)
end sub

sub Timothy_memory_cpy(Timothy_db() as Timothy_node_type, src as uinteger, dst as uinteger)
    dim as uinteger biet=0
    Timothy_db(dst).parent.origin=Timothy_db(src).parent.origin
    Timothy_db(dst).parent.written=Timothy_db(src).parent.written
    Timothy_db(dst).parent.address=Timothy_db(src).parent.address
    for biet=0 to 3
        Timothy_db(dst).fork(biet).written=Timothy_db(src).fork(biet).written
        Timothy_db(dst).fork(biet).address=Timothy_db(src).fork(biet).address
    next
    Timothy_db(dst).cell.written=Timothy_db(src).cell.written
    Timothy_db(dst).cell.value=Timothy_db(src).cell.value
end sub

sub Timothy_memory_mov(Timothy_db() as Timothy_node_type, src as uinteger, dst as uinteger)
    dim as uinteger fp=0,fi=0
    dim as Timothy_node_type dummy
    if Timothy_db(src).parent.address then
        Timothy_db(Timothy_db(src).parent.address).fork(Timothy_db(src).parent.origin).address=dst
    endif
    Timothy_memory_cpy Timothy_db(),src,dst
    dummy=Timothy_memory_pop(Timothy_db(),src)
end sub

function Timothy_memory_pop(Timothy_db() as Timothy_node_type, byval i as uinteger) as Timothy_node_type
    dim as uinteger biet=0
    dim as Timothy_node_type ret,dummy
    ret=Timothy_db(i)
    Timothy_db(i).parent.origin=TIMOTHY_DEFAULT_ORIGIN
    Timothy_db(i).parent.written=TIMOTHY_DEFAULT_WRITTEN
    Timothy_db(i).parent.address=TIMOTHY_DEFAULT_ADDRESS
    for biet=0 to 3
        Timothy_db(i).fork(biet).written=TIMOTHY_DEFAULT_WRITTEN
        Timothy_db(i).fork(biet).address=TIMOTHY_DEFAULT_ADDRESS
    next
    Timothy_db(i).cell.written=TIMOTHY_DEFAULT_WRITTEN
    Timothy_db(i).cell.value=TIMOTHY_DEFAULT_VALUE
    if TIMOTHY_VALIDATE_CAPACITY=(TIMOTHY_VALIDATE_CAPACITY and Timothy_check_validate(Timothy_db(),i)) then
        if Timothy_db(0).parent.written then
            Timothy_db(0).parent.written=Timothy_db(0).parent.written-1
        endif
    else
        Timothy_memory_mov Timothy_db(),Timothy_db(0).parent.written,i
    endif    
    if ret.parent.address<>i then
        if (TIMOTHY_FORK_WRITTEN and Timothy_check_fork(Timothy_db(ret.parent.address)))=0 then
            dummy=Timothy_memory_pop(Timothy_db(),ret.parent.address)
        endif
    endif
    return ret
end function

sub Timothy_memory_push(Timothy_db() as Timothy_node_type, byval i as uinteger, byval value as string)
    'if TIMOTHY_DEFAULT_WRITTEN=(TIMOTHY_VALUE_WRITTEN and Timothy_db(i).cell.written) then
    'endif
    Timothy_db(i).cell.written=(Timothy_db(i).cell.written or TIMOTHY_VALUE_WRITTEN)
    Timothy_db(i).cell.value=value
end sub

function Timothy_memory(Timothy_db() as Timothy_node_type, byval label as string, byval value as string, byval request as uinteger, byval waccess as uinteger, byref fail as uinteger, _
    byref index as uinteger, byref octet as uinteger, byref biet as uinteger) as string
    dim as string label2=TIMOTHY_MEMORY_PREFIX+label,value2=value
    dim as string ret=TIMOTHY_DEFAULT_VALUE     'return value
    dim as ubyte bo=0,bv=0,bx=3                 'biet offset,   biet value,     max biet
    dim as uinteger oo=0,ov=0,ox=len(label2)-1  'octet offset,  octet value,    max octet
    dim as uinteger i=TIMOTHY_DEFAULT_INDEX     'node address
    dim as uinteger pa=0,po=0                   '               parent address, parent origin
    dim as uinteger t=0                         'node target
    dim as uinteger si(0 to 1)                  'sibling index
    dim as uinteger so(0 to 1)                  'sibling octet
    dim as uinteger sb(0 to 1)      '           'sibling biet
    dim as Timothy_node_type node,dummy         'node cache,    node dummy
    if TIMOTHY_ACCESS_RESET=(TIMOTHY_ACCESS_RESET and waccess) then
        fail=(TIMOTHY_DEFAULT_RESET and fail)
    endif
    ov=0
    oo=0
    while (fail=0) and (oo<=ox)
        ov=asc(mid(label2,oo+1,1))
        bv=0
        bo=0
        while (fail=0) and (bo<=bx)
            bv=(ov shr (bo shl 1)) and 3
            if TIMOTHY_VALIDATE_WRITTEN=(TIMOTHY_VALIDATE_WRITTEN and Timothy_check_validate(Timothy_db(),i)) then
                if Timothy_db(i).fork(po).written=TIMOTHY_DEFAULT_WRITTEN then
                    if TIMOTHY_ACCESS_WRITE=(TIMOTHY_ACCESS_WRITE and request and waccess) then
                        t=Timothy_db(0).parent.written+1
                        Timothy_db(i).fork(po).written=TIMOTHY_IS_WRITTEN
                        Timothy_db(i).fork(po).address=t                    
                    else
                        if not(TIMOTHY_ACCESS_WRITE=(TIMOTHY_ACCESS_WRITE and waccess)) then
                            fail=(TIMOTHY_ACCESS_WRITE or fail)
                        endif
                    endif
                else
                    t=Timothy_db(0).fork(po).address
                endif
            else
                if TIMOTHY_ACCESS_ALLOCATION=(TIMOTHY_ACCESS_ALLOCATION and request and waccess) then
                    Timothy_db(0).parent.written=i
                    Timothy_check_allocation Timothy_db(),Timothy_db(0).parent.written,waccess
                    Timothy_db(i).parent.address=pa
                    Timothy_db(i).parent.origin=po
                    Timothy_db(pa).fork(po).written=TIMOTHY_IS_WRITTEN
                    Timothy_db(pa).fork(po).address=i
                    t=i+1
                else
                    if not(TIMOTHY_ACCESS_ALLOCATION=(TIMOTHY_ACCESS_ALLOCATION and waccess)) then
                        fail=(TIMOTHY_ACCESS_ALLOCATION or fail)
                    endif
                endif
            endif
            if (fail=0) then
                pa=i
                po=bv
                i=t
                if (bo>=bx) then
                    exit while
                else
                    bo=bo+1
                endif
            else
                exit while
            endif
        wend
        if (fail=0) then
            if (oo>=ox) then
                exit while
            else
                oo=oo+1
            endif
        else
            exit while
        endif
    wend
    if (TIMOTHY_ACCESS_WRITE=(TIMOTHY_ACCESS_WRITE and request and waccess)) and (fail=0) then
        if TIMOTHY_VALUE_WRITTEN=(TIMOTHY_VALUE_WRITTEN and Timothy_db(i).cell.written) then
            if (TIMOTHY_ACCESS_OVERWRITE=(TIMOTHY_ACCESS_OVERWRITE and request and waccess)) and (fail=0) then
                Timothy_db(i).cell.written=(TIMOTHY_VALUE_WRITTEN or Timothy_db(i).cell.written)
                Timothy_db(i).cell.value=value2
            else
                fail=(TIMOTHY_ACCESS_OVERWRITE or fail)
            endif
        else
            Timothy_memory_push Timothy_db(),i,value2
        endif
    else
        if not(TIMOTHY_ACCESS_WRITE=(TIMOTHY_ACCESS_WRITE and waccess)) then
            fail=(TIMOTHY_ACCESS_WRITE or fail)
        endif
    endif        
    if (TIMOTHY_ACCESS_DELETE=(TIMOTHY_ACCESS_DELETE and request and waccess)) and (fail=0) then
        node=Timothy_memory_pop(Timothy_db(),i)
    else
        if not(TIMOTHY_ACCESS_DELETE=(TIMOTHY_ACCESS_DELETE and waccess)) then
            fail=(TIMOTHY_ACCESS_DELETE or fail)
        endif    
    endif
    if (TIMOTHY_ACCESS_READ=(TIMOTHY_ACCESS_READ and waccess)) and (fail=0) then
        if (TIMOTHY_ACCESS_DELETE=(TIMOTHY_ACCESS_DELETE and request and waccess)) then
            ret=node.cell.value
        else
            ret=Timothy_db(i).cell.value
        endif
    else
        if not(TIMOTHY_ACCESS_READ=(TIMOTHY_ACCESS_READ and waccess)) then
            fail=(TIMOTHY_ACCESS_READ or fail)
        endif
    endif
    if TIMOTHY_ACCESS_TRACE=(TIMOTHY_ACCESS_TRACE and request) then
        if TIMOTHY_ACCESS_TRACE=(TIMOTHY_ACCESS_TRACE and waccess) then
            index=i
            octet=oo
            biet=bo        
        else
            fail=(TIMOTHY_ACCESS_TRACE or fail)
        endif
    endif
    if not(TIMOTHY_ACCESS_DEBUG=(TIMOTHY_ACCESS_DEBUG and waccess)) and (fail>0) then
        if (TIMOTHY_ACCESS_DEBUG=(TIMOTHY_ACCESS_DEBUG and request)) then
            fail=TIMOTHY_ACCESS_DEBUG
        else
            fail=0
        endif
    endif
    return ret
end function

sub Timothy_memory_save(dat() as string, filename as string)
    dim as uinteger fileslot=freefile, oo=0, index=0, o2=0
    dim as string label=space(0), value=space(0)
    open filename for output as #fileslot
    for index=lbound(dat(1)) to ubound(dat(1))
        o2=val("&h"+mid(dat(index,0),8))
        if o2<len(label) then
            label=left(label,o2)
        else
            label=label+mid(dat(index,0),9)
        endif
        print #fileslot, chr(34)+Timothy_codec_tag(label,TIMOTHY_CODEC_ENCODE)+chr(34)+"="+chr(34)+Timothy_codec_tag(dat(index,1),TIMOTHY_CODEC_ENCODE)+chr(34)
    next
    close #fileslot
end sub

sub Timothy_memory_load(queue() as Timothy_queue_type, filename as string, byval request as uinteger, byval waccess as uinteger)
    dim as uinteger fileslot=freefile, tmp=0, ct=0
    dim as string label=space(0), value=space(0), dat=space(0)
    open filename for input as #fileslot
    while not eof(fileslot)
        line input #fileslot, dat
        tmp=instr(dat,"=")
        if tmp>0 then
            ct=ct+1
            label=left(dat,tmp-1)
            value=mid(dat,tmp+1)
            if left(label,1)=chr(34) and right(label,1)=chr(34) then
                label=Timothy_codec_tag(mid(label,2,len(label)-2),TIMOTHY_CODEC_DECODE)
            endif
            if left(value,1)=chr(34) and right(value,1)=chr(34) then
                value=Timothy_codec_tag(mid(value,2,len(value)-2),TIMOTHY_CODEC_DECODE)
            endif
            redim preserve queue(0 to ct-1) as Timothy_queue_type
            queue(ubound(queue,1)).label=label
            queue(ubound(queue,1)).value=value
            queue(ubound(queue,1)).request=request
            queue(ubound(queue,1)).waccess=waccess
            queue(ubound(queue,1)).fail=0
            queue(ubound(queue,1)).index=0
            queue(ubound(queue,1)).octet=0
            queue(ubound(queue,1)).biet=0
        endif
    wend
    close #fileslot
end sub

sub Timothy_memory_dump(Timothy_db() as Timothy_node_type, ret() as string, label as string, byref index as uinteger, byval octet as uinteger, byref biet as uinteger)
    dim as uinteger octet2=0
    dim as string label2=hex(octet2)+label
    redim dump(0 to 0,0 to 1) as string
    Timothy_memory_dump_loop Timothy_db(), ret(), label2, index, octet, biet
end sub

sub Timothy_memory_dump_loop(Timothy_db() as Timothy_node_type, ret() as string, label as string, byref index as uinteger, byval octet as uinteger, byref biet as uinteger)
    dim as uinteger f=0
    dim as uinteger nextindex=0,nextoctet=0,nextbiet=0
    dim as string nextlabel=space(0)
    dim as string label2=mid(label,9)
    dim as uinteger octet2=val("&h"+left(label2,8))+octet
    if biet=3 then
        nextoctet=nextoctet+1
        nextbiet=0
        nextlabel=hex(octet2)+mid(nextlabel,9)+chr(0)
    else
        nextoctet=octet
        nextbiet=biet+1
        nextlabel=label
    endif
    if Timothy_db(index).cell.written and biet=0 and len(label2)>0 then
        redim preserve ret(lbound(ret,1) to ubound(ret,1)+1,0 to 1) as string
        ret(ubound(ret,1),0)=hex(octet)+left(label2,len(label2)-1)
        ret(ubound(ret,1),1)=Timothy_db(index).cell.value
        nextoctet=0
        nextlabel=hex(octet2+1)+chr(0)
    endif
    for f=0 to 3
        if Timothy_db(index).fork(f).written then
            nextindex=Timothy_db(index).fork(f).address
            nextlabel=left(label,len(label)-1)+chr((((asc(right(label,1)) shl (biet shl 1)) and &hff) shr (biet shl 1)) or (f shl (biet shl 1)))
            Timothy_memory_dump_loop Timothy_db(),ret(),nextlabel,nextindex,nextoctet,nextbiet
        endif
    next
end sub

sub Timothy_memory_dump_save(dump() as string, filename as string)
    dim as uinteger mode=freefile,t=0
    open filename for output as mode
    for t=lbound(dump,1) to ubound(dump,1)
        if len(dump(t,0))>0 then
            print #mode,chr(34)+Timothy_codec_tag(dump(t,0),TIMOTHY_CODEC_ENCODE)+chr(34)+"="+chr(34)+Timothy_codec_tag(dump(t,1),TIMOTHY_CODEC_ENCODE)+chr(34)
        endif
    next
    close mode
end sub

sub Timothy_memory_dump_load(dump() as string, filename as string)
    dim as uinteger mode=freefile,t=0,o=0,octet=0,octet2=0
    dim as string i=space(0),label=space(0),value=space(0),label2=space(0)
    redim dump(0 to 0,0 to 1)
    open filename for input as mode
    do while not(eof(mode))
        line input #mode,i
        if len(i)>0 then
            o=instr(i,chr(34)+"="+chr(34))
            if left(i,1)=chr(34) and right(i,1)=chr(34) and o>1 and o<len(i)-3 then
                label=mid(i,2,instr(2,i,chr(34))-2)
                value=mid(i,instr(2,i,chr(34)+"="+chr(34))+3)
                value=mid(value,1,len(value)-1)
                label=Timothy_codec_tag(label,TIMOTHY_CODEC_DECODE)
                value=Timothy_codec_tag(value,TIMOTHY_CODEC_DECODE)
                'octet=val("&h"+left(label,8))
                'label=mid(label,9)
                'label2=left(label2,octet+1)+label
                redim preserve dump(lbound(dump,1) to ubound(dump,1)+1,0 to 1)
                dump(ubound(dump,1),0)=label                
                dump(ubound(dump,1),1)=value
            endif
        endif
    loop
    close mode
end sub

sub Timothy_memory_dump_queue(dump() as string, queue() as Timothy_queue_type)
    dim as uinteger i=0,o=0,octet=0,octet2=0
    dim as string label=space(0),value=space(0),label2=space(0)
    for i=lbound(dump,1) to ubound(dump,1)
        if len(dump(i,0))>0 then
            label=dump(i,0)
            value=dump(i,1)
            octet=val("&h"+left(label,8))
            label=mid(label,9)
            label2=left(label2,octet+1)+label
            redim preserve queue(lbound(queue,0) to ubound(queue,1))
            queue(ubound(queue,1)).label=label2
            queue(ubound(queue,1)).value=value
            queue(ubound(queue,1)).request=(TIMOTHY_ACCESS_ALLOCATION or TIMOTHY_ACCESS_WRITE or TIMOTHY_ACCESS_OVERWRITE)
            queue(ubound(queue,1)).waccess=(TIMOTHY_ACCESS_ALLOCATION or TIMOTHY_ACCESS_WRITE or TIMOTHY_ACCESS_OVERWRITE)
            queue(ubound(queue,1)).fail=0
            queue(ubound(queue,1)).index=0
            queue(ubound(queue,1)).octet=0
            queue(ubound(queue,1)).biet=0
            queue(ubound(queue,1)).ret=space(0)
        endif
    next
end sub

sub Timothy_memory_queue(Timothy_db() as Timothy_node_type,queue() as Timothy_queue_type,waccess as uinteger)
    dim as uinteger index=0
    for index=lbound(queue,1) to ubound(queue,1)
        queue(index).ret=Timothy_memory(Timothy_db(),queue(index).label,queue(index).value,queue(index).request,waccess and queue(index).waccess,queue(index).fail,queue(index).index,queue(index).octet,queue(index).biet)
    next
end sub

function Timothy_codec_tag(haystack as string, direction as uinteger) as string
    dim as string tmp=haystack,cur=space(0),ret=space(0)
    dim as string hesc="%"
    do
        if len(tmp)=0 then exit do
        cur=left(tmp,1)
        tmp=mid(tmp,2)
        select case direction
        case TIMOTHY_CODEC_ENCODE
            if (asc(cur)<48) or (asc(cur)>122) or ((asc(cur)>90) and (asc(cur)<97)) then
                ret=ret+hesc+right(hex(asc(cur)),2)
            else
                ret=ret+cur
            endif
        case TIMOTHY_CODEC_DECODE
            if cur=hesc then
                cur=cur+left(tmp,2)
                tmp=mid(tmp,3)
                ret=ret+chr(val("&h"+mid(cur,2)))
            else
                ret=ret+cur
            endif
        end select
    loop
    return ret
end function
