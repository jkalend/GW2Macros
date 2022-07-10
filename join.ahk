#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^e::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton1X, botton1Y
return
^r::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton2X, botton2Y
return
^t::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton3X, botton3Y
return

F7::
    Loop
    {

	Click Right, %botton1X%, %botton1Y%
	Sleep, 700
	Click Left, %botton2X%, %botton2Y%
	Sleep, 700
	Click Left, %botton3X%, %botton3Y%
	Sleep, 700

    }
 
return

^p:: ExitApp

F8::
	Pause
return 