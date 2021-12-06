'Advanced freeBASIC Circle Routine 0x00
'Created August 15th 2009 by Timothy Robert Keal alias jargon
'Released under the Gnu Public License 2.0
'
'http://puzzlum.retromachineshop.com/
'irc://chat.freenode.net/puzzlum
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#include once "fbgfx.bi"

const Pi = 3.141592653589793#

declare sub circle2(Buffer as fb.image ptr, X1 as double, Y1 as double, X2 as double, Y2 as double, A1 as double, A2 as double, R1 as double, R2 as double, Colors as uinteger)
declare function vector2decimal (X1 as double, Y1 as double, X2 as double, Y2 as double) as double

screen 13
dim as fb.image ptr Buffer=imagecreate(320,200)
do
    circle2 Buffer, fix(rnd(1)*320), fix(rnd(1)*200), fix(rnd(1)*320), fix(rnd(1)*200), rnd(1),rnd(1),rnd(1),rnd(1),fix(rnd(1)*248)
    wait &h3DA, 8
    put(0,0), Buffer, pset
    if len(inkey) then exit do
loop
end

sub circle2(Buffer as fb.image ptr, X1 as double, Y1 as double, X2 as double, Y2 as double, A1 as double, A2 as double, R1 as double, R2 as double, Colors as uinteger)
    dim as double X, Y, RX, RY, CX, CY, X0, Y0, R, A
    if X1 > X2 then swap X1, X2
    if Y1 > Y2 then swap Y1, Y2
    CX = (X2 + X1) / 2
    CY = (Y2 + Y1) / 2
    RX = (X2 - X1) / 2
    RY = (Y2 - Y1) / 2
    for Y = Y1 to Y2
        for X = X1 to X2
            X0 = (X - CX) / RX
            Y0 = (Y - CY) / RY
            A = vector2decimal(0, 0, X0, Y0)
            if (A1 < A2 and A >= A1 and A <= A2) or (A1 >= A2 and (A >= A1 or A <= A2)) then
                R = X0 * X0 + Y0 * Y0
                if R > 0 then R = sqr(R)
                if (R1 < R2 and R >= R1 and R <= R2) or (R1 >= R2 and (R >= R1 or R <= R2)) then
                    pset Buffer, (X, Y), Colors
                endif
            endif
        next
    next
end sub

function vector2decimal (X1 as double, Y1 as double, X2 as double, Y2 as double) as double
    dim as double X3,Y3,R1a,R1b,R2a,R2b
    X3 = X2 - X1
    Y3 = Y2 - Y1
    if Y3 <> 0 then
        R1a = (X3 / Y3)
        if R1a > 0 then R1a = R1a ^ (-1)
        R1b = atn(R1a) / (Pi / 2) * .25
        if R1b < 0 then R1b = abs(R1b) + .25
        if Y3 > 0 then R1b = R1b + .5
    endif
    select case X3
    case is < 0
        if Y3 = 0 then R1b = 0
    case 0
        select case Y3
        case is < 0
            R1b = .25
        case is > 0
            R1b = .75
        end select
    case is > 0
        if Y3 = 0 then R1b = .5
    end select
    if X3 <> 0 then
        R2a = (Y3 / X3)
        if R2a > 0 then R2a = R2a ^ (-1)
        R2b = atn(R2a) / (Pi / 2) * .25
        select case Y3
        case is <0
            select case R2b
            case is < 0
                R2b = ABS(R2b)
            case is > 0
                R2b = R2b + .75
            end select
        case is > 0
            select case R2b
            case is < 0
                R2b = ABS(R2b) + .5
            case is > 0
                R2b = ABS(R2b) + .25
            end select
        end select
    endif
    select case X3
    case is < 0
        if Y3 = 0 then R2b = 1
    case 0
        select case Y3
        case is < 0
            R2b = .75
        case is > 0
            R2b = .25
        end select
    case is > 0
        if Y3 = 0 then R2b = .5
    end select
    R2b = 1 - R2b
    return (R1b + R2b) / 2
end function
