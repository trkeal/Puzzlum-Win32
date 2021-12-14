
'TRK FreeBASIC PNG Support
'Copyright 2021 Timothy Robert Keal
'Released by Timothy Robert Keal under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )

''' Refer to: http://Puzzlum.Net/
''' TRK-PNG-Support-Win32-Static (.bi .bas)

#inclib "TRK-PNG-Support-Win32-Static"

#include once "fbgfx.bi"
#inclib "fbimage"
#inclib "fbpng"
''#include once ".\inc\FBImage.bi"

''#define __TRK_PNG_Direct__
''#define __TRK_PNG_Alias__

'''#include once ".\inc\TRK-PNG-Support-Win32-Static.bi"

#ifdef __TRK_PNG_Direct__

Function TRK_PNG_Load( Filename As String = "Screenshot.png" ) As FB.Image ptr

	TRK_PNG_Load = LoadRGBAFile( Filename )
	
End Function

Function TRK_PNG_Save( Image As FB.Image ptr, Filename As String = "Screenshot.png", saveAlpha As Boolean = False ) As Boolean
	
	TRK_PNG_Save = SavePNGFile ( Image, Filename, saveAlpha )

End Function

Sub TRK_PNG_Destroy( Image As FB.Image ptr )
	ImageDestroy( Image )
End Sub

#endif