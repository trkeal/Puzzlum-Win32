
#inclib "tkpng"

#include once ".\inc\fbimage.bi"
#include once "fbgfx.bi"
	
	#ifdef __none__
	
	function png_load( filename as string ) as fb.image ptr
		png_load = LoadRGBAFile( filename )
	end function

	sub png_destroy( image as fb.image ptr )
		imagedestroy ( image )
	end sub

	#endif