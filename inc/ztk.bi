
#inclib "ztk"

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
