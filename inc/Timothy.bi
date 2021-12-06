'Timothy.bi
'Advanced "Timothy" associative array FreeBASIC source code 0x000
'
'Created December 22nd 2009 - June 15th 2010 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#inclib "Timothy"

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
declare sub Timothy_memory_dump(Timothy_db() as Timothy_node_type, ret() as string, label as string, byref index as uinteger, byval octet as uinteger, byref biet as uinteger)
declare sub Timothy_memory_dump_loop(Timothy_db() as Timothy_node_type, ret() as string, label as string, byref index as uinteger, byval octet as uinteger, byref biet as uinteger)
declare sub Timothy_memory_dump_load(dump() as string, filename as string)
declare sub Timothy_memory_dump_save(dump() as string, filename as string)
declare sub Timothy_memory_dump_queue(dump() as string, queue() as Timothy_queue_type)
declare sub Timothy_memory_queue(Timothy_db() as Timothy_node_type, queue() as Timothy_queue_type, label as string, byval request as uinteger, byval waccess as uinteger,byref index as uinteger, byval octet as uinteger, byref biet as uinteger, byref f as uinteger)
declare sub Timothy_memory_queue_loop(Timothy_db() as Timothy_node_type, queue() as Timothy_queue_type, label as string, byval request as uinteger, byval waccess as uinteger,byref index as uinteger, byval octet as uinteger, byref biet as uinteger, byref f as uinteger)
declare sub Timothy_memory_queue_load(queue() as Timothy_queue_type, filename as string, byval request as uinteger, byval waccess as uinteger)
declare sub Timothy_memory_queue_save(queue() as Timothy_queue_type, filename as string, byval request as uinteger, byval waccess as uinteger)
declare sub Timothy_memory_queue_exec(Timothy_db() as Timothy_node_type,queue() as Timothy_queue_type,waccess as uinteger)
declare sub Timothy_memory_queue_push(queue() as Timothy_queue_type, byval label as string, byval value as string, request as uinteger, waccess as uinteger)
declare function Timothy_codec_tag(haystack as string, direction as uinteger) as string
