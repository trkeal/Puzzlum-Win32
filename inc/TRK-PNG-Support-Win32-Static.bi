
'TRK FreeBASIC PNG Support
'Copyright 2021 Timothy Robert Keal
'Released by Timothy Robert Keal under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )

''' Refer to: http://Puzzlum.Net/
''' TRK-PNG-Support-Win32-Static (.bi .bas)

''

#define __TRK_PNG_Direct__
#define __TRK_PNG_Alias__

#pragma once
#inclib "TRK-PNG-Support-Win32-Static"

#include once "fbgfx.bi"
#include once ".\inc\FBImage.bi"

#ifdef __TRK_PNG_Direct__

Declare Function TRK_PNG_Load( Filename As String = "Screenshot.png" ) As FB.Image Ptr

Declare Function TRK_PNG_Save( Image As FB.Image Ptr, Filename As String = "Screenshot.png", saveAlpha As Boolean = false ) As Boolean

Declare Sub TRK_PNG_Destroy( Image As FB.Image Ptr )

#endif

#ifdef __TRK_PNG_Alias__

Declare Function PNG_Load( Filename As String = "Screenshot.png" ) As FB.Image ptr

Declare Function PNG_Save( Image As FB.Image ptr, Filename As String = "Screenshot.png", saveAlpha As Boolean = False ) As Boolean
	
Declare Sub PNG_Destroy( Image As FB.Image ptr )

#endif