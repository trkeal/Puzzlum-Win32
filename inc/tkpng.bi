
#inclib "tkpng"

#include once ".\inc\tkpng.bi"
#include once ".\inc\fbimage.bi"
#include once "fbgfx.bi"

'''#include once "crt\math.bi"
#include once ".\inc\zlib.bi"

	#ifdef __none__
	
	declare function png_load( filename as string ) as fb.image ptr

	declare sub png_destroy( image as fb.image ptr )
	
	#endif