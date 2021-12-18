
#pragma once
#ifndef fbimage_lib
#inclib "fbimage"
#endif

#ifndef __FBImage_bi__
#define __FBImage_bi__

#ifdef __FB_WIN32__
  #libpath "lib/win"
#else
  #libpath "lib/lin"
#endif

#if 0
#ifndef __FB_64BIT__
  #inclib "FBImage-32-static"
#else
  #inclib "FBImage-64-static"
#endif
#endif

#include once "fbgfx.bi"
' Load BMP, PNG, JPG, TGA, DDS from file or memory as FBImage

' screenres 640,480,32 ' <--- RGBA
' var jpg = LoadRGBAFile("test_rgb.jpg")
' put (0,0),jpg,PSET
'
' var png = LoadRGBAFile("test_rgba.png")
' put (256,0),png,ALPHA

' var img = LoadRGBAFile("filenotfound.xxx")
' if img=0 then
'   print "error: loading filenotfound.xxx " & *GetLastResult()
' end if

' Save RGB image as PNG
' var ok = SavePNGFile(img,"test_rgb.png")

' Save RGBA image as PNG
' var ok = SavePNGFile(img,"test_rgba.png",true)

extern "C"

declare function LoadRGBAFile(byval filename as const zstring ptr) as any ptr

declare function LoadRGBAMemory(byval buffer as const any ptr, byval buffersize as long) as any ptr

declare function GetLastResult() as const zstring ptr

declare function SavePNGFile (byval img as any ptr, byval filename as const zstring ptr,byval saveAlpha as boolean=false) as boolean

end extern

' load (32bit) RGBA image and convert it for 16 bit RGB mode
declare function Load16BitRGB(filename as const zstring ptr) as any ptr

namespace Base64
  static as string*64 B64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" _
                          & "abcdefghijklmnopqrstuvwxyz" _
                          & "0123456789+/"

declare   Function EncodeMemory(buffer as any ptr,size as long) As String
    
declare   Function DecodeMemory(s As String,byref nBytes as integer) As any ptr

end namespace  

#endif ' __FBImage_bi__
