
#include "ztk.bi"

declare function savepng(byref filename as string = "screenshot.png") as integer
declare function loadpng(byref filename as string = "screenshot.png") as any ptr
declare function bswap(byval n as uinteger) as uinteger

const pngheader as string = chr(&h89) & "PNG" & chr(&hd, &ha, &h1a, &ha)
const ihdrcrc as uinteger = &ha8a1ae0a 'crc32(0, @"IHDR", 4)
const pltecrc as uinteger = &h4ba88955 'crc32(0, @"PLTE", 4)
const idatcrc as uinteger = &h35af061e 'crc32(0, @"IDAT", 4)
const iendcrc as uinteger = &hae426082 'crc32(0, @"IEND", 4)

type struct_ihdr field = 1
    width as uinteger
    height as uinteger
    bitdepth as ubyte
    colortype as ubyte
    compression as ubyte
    filter as ubyte
    interlace as ubyte
end type

function bswap(byval n as uinteger) as uinteger
   
    dim p as ubyte ptr = cptr(ubyte ptr, @n)
    return cuint(p[0]) shl 24 or _
           cuint(p[1]) shl 16 or _
           cuint(p[2]) shl  8 or _
           cuint(p[3])
   
end function

function savepng(byref filename as string = "screenshot.png") as integer
   
    dim as uinteger w, h, depth
    screeninfo w, h, depth
   
    select case as const depth
   
    case 1 to 8
       
        scope
           
            dim f as integer
            dim ihdr as struct_ihdr = (bswap(w), bswap(h), 8, 3, 0, 0, 0)
            dim as uinteger ihdr_crc32 = crc32(ihdrcrc, cptr(ubyte ptr, @ihdr), sizeof(ihdr))
           
            dim palsize as uinteger = (1 shl depth)
            dim pltesize as uinteger = palsize * 3
            dim plte(0 to 767) as ubyte
            dim plte_crc32 as uinteger
           
            dim as uinteger l = w + 1
            dim as uinteger imgsize = l * h
            dim as uinteger idatsize = imgsize + 11 + 5 * (imgsize \ 16383)
            dim imgdata(0 to imgsize - 1) as ubyte
            dim idat(0 to idatsize - 1) as ubyte
            dim as uinteger idat_crc32
            dim as uinteger x, y, col, r, g, b
           
            for col = 0 to palsize - 1
                palette get col, r, g, b
                plte(col * 3)     = r
                plte(col * 3 + 1) = g
                plte(col * 3 + 2) = b
            next col
           
            plte_crc32 = crc32(pltecrc, @plte(0), pltesize)
           
            screenlock
            for y = 0 to h - 1
                imgdata(y * l) = 0
                for x = 0 to w - 1
                    col = point(x, y)
                    imgdata(y * l + x + 1) = col
                next w
            next y
            screenunlock
           
            if compress2(@idat(0), @idatsize, @imgdata(0), imgsize, 9) then return -1
            idat_crc32 = crc32(idatcrc, @idat(0), idatsize)
           
            f = freefile
            if open (filename for output as #f) then return -1
           
            put #f, , pngheader
           
            put #f, , bswap(13)
            put #f, , "IHDR"
            put #f, , ihdr
            put #f, , bswap(ihdr_crc32)
           
            put #f, , bswap(pltesize)
            put #f, , "PLTE"
            put #f, , plte(0), 3 * (1 shl depth)
            put #f, , bswap(plte_crc32)
           
            put #f, , bswap(idatsize)
            put #f, , "IDAT"
            put #f, , idat(0), idatsize
            put #f, , bswap(idat_crc32)
           
            put #f, , bswap(0)
            put #f, , "IEND"
            put #f, , bswap(iendcrc)
           
            close #f
           
        end scope
       
    case 9 to 32
       
        scope
           
            dim f as integer
            dim ihdr as struct_ihdr = (bswap(w), bswap(h), 8, 2, 0, 0, 0)
            dim as uinteger ihdr_crc32 = crc32(ihdrcrc, cptr(ubyte ptr, @ihdr), sizeof(ihdr))
           
            dim as uinteger l = (w * 3) + 1
            dim as uinteger imgsize = l * h
            dim as uinteger idatsize = imgsize + 11 + 5 * (imgsize \ 16383)
            dim imgdata(0 to imgsize - 1) as ubyte
            dim idat(0 to idatsize - 1) as ubyte
            dim as uinteger idat_crc32
            dim as uinteger x, y, col, r, g, b
           
            screenlock
            for y = 0 to h - 1
                imgdata(y * l) = 0
                for x = 0 to w - 1
                    col = point(x, y)
                    r = col shr 16
                    g = col shr 8
                    b = col
                    imgdata(y * l + x * 3 + 1) = r
                    imgdata(y * l + x * 3 + 2) = g
                    imgdata(y * l + x * 3 + 3) = b
                next w
            next y
            screenunlock
           
            if compress2(@idat(0), @idatsize, @imgdata(0), imgsize, 9) then return -1
            idat_crc32 = crc32(idatcrc, @idat(0), idatsize)
           
            f = freefile
            if open (filename for output as #f) then return -1
           
            put #f, , pngheader
           
            put #f, , bswap(13)
            put #f, , "IHDR"
            put #f, , ihdr
            put #f, , bswap(ihdr_crc32)
           
            put #f, , bswap(idatsize)
            put #f, , "IDAT"
            put #f, , idat(0), idatsize
            put #f, , bswap(idat_crc32)
           
            put #f, , bswap(0)
            put #f, , "IEND"
            put #f, , bswap(iendcrc)
           
            close #f
           
        end scope
       
    case else
       
        return -1
       
    end select
   
end function

function loadpng(byref filename as string = "screenshot.png") as any ptr
   
    #define goto_loadpng_end print __line__: goto loadpng__end
    dim ret as any ptr = 0
   
    dim f as integer
    dim ihdr as struct_ihdr
    dim as integer l, w, h, bypp, size
    dim header as string * 8
    dim chunkname as string * 4, chunklength as integer, chunkcrc as uinteger
   
    f = freefile
    if open (filename for binary access read as #f) then return 0
   
    get #f, 1, header
    if header <> pngheader then goto_loadpng_end
   
   
    get #f, , chunklength: chunklength = bswap(chunklength)
    get #f, , chunkname: if chunkname <> "IHDR" then goto_loadpng_end
    get #f, , ihdr
    w = bswap(ihdr.width)
    h = bswap(ihdr.height)
    if w <= 0 or h <= 0 then goto_loadpng_end
    select case ihdr.colortype
        case 0, 3:  bypp = 1
        case 2:     bypp = 3
        case 4:     bypp = 2
        case 6:     bypp = 4
        case else: goto_loadpng_end
    end select
    l = w * bypp + 1
    size = l * h
    if size <= 1 then goto_loadpng_end
    seek #f, seek(f) + 4
   
   
    do
       
        get #f, , chunklength: chunklength = bswap(chunklength)
        get #f, , chunkname
       
        if chunkname = "IDAT" then
           
            dim idat(0 to chunklength - 1) as ubyte
            get #f, , idat()
           
            dim image(0 to size - 1) as ubyte
           
            uncompress(@image(0), @size, @idat(0), chunklength)
           
            dim buf as any ptr = imagecreate(w, h, 0)
           
            dim i as integer = 0
            dim as integer x, y
            dim as ubyte r, g, b, a
            dim as uinteger c
           
            for y = 0 to h - 1
               
                i += 1
               
                for x = 0 to w - 1
                   
                    select case as const bypp
                       
                        case 1
                            r = image(i)
                            c = rgb(r, r, r)
                            i += 1
                        case 2
                            r = image(i)
                            c = rgba(r, r, r, a)
                            i += 2
                        case 3
                            r = image(i)
                            g = image(i + 1)
                            b = image(i + 2)
                            c = rgb(r, g, b)
                            i += 3
                        case 4
                            r = image(i)
                            g = image(i + 1)
                            b = image(i + 2)
                            a = image(i + 3)
                            c = rgba(r, g, b, a)
                            i += 4
                    end select
                   
                    pset buf, (x, y), c
                   
                   
                next x
               
            next y
           
            ret = buf
            exit do
           
        else
           
            seek #f, seek(f) + chunklength + 4
           
        end if
       
    loop until eof(f) or chunkname = "IEND"
   
    loadpng__end:
   
    close #f
   
    function = ret
   
end function