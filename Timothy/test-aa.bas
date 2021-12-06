#include once "./inc/Timothy.bi"

redim as Timothy_node_type aa(0)
dim as uinteger Timothy_fail=0,index=0,octet=0,biet=0
dim as uinteger Timothy_waccess=TIMOTHY_ACCESS_RESET or TIMOTHY_ACCESS_READ or TIMOTHY_ACCESS_ALLOCATION or TIMOTHY_ACCESS_WRITE or TIMOTHY_ACCESS_OVERWRITE or TIMOTHY_ACCESS_DELETE or TIMOTHY_ACCESS_DEBUG
dim as uinteger Timothy_request=TIMOTHY_ACCESS_RESET or TIMOTHY_ACCESS_READ or TIMOTHY_ACCESS_ALLOCATION or TIMOTHY_ACCESS_WRITE or TIMOTHY_ACCESS_OVERWRITE
dim as string label="",value="",ret=""

do
    input "label:",label
    if label="exit" then
        exit do
    endif
    input "value:",value
    ret=Timothy_memory(aa(), label, value, Timothy_request, Timothy_waccess, Timothy_fail, index, octet, biet)
    print "fail:"+str(Timothy_fail)
    print "["+label+"]=["+ret+"]"
loop
end
