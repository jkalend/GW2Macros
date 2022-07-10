#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
outt := 0
x := 0
y := 0
dir    := A_ScriptDir
script  = python %dir%\pokus.py
; python %dir%\pokus.py %x% %y%


; 1 for salvage bot blues
; 2 for salvage bot greens
; 3 for salvage bot rares
; r for extractor field
; t for extract
; z for salvage



^1::
    CoordMode, ToolTip, Screen  
    MouseGetPos, button1X, button1Y
return
^2::
    CoordMode, ToolTip, Screen  
    MouseGetPos, button2X, button2Y
return
^3::
    CoordMode, ToolTip, Screen  
    MouseGetPos, button3X, button3Y
return
^r::
    CoordMode, ToolTip, Screen  
    MouseGetPos, button4X, button4Y
return
^t::
    CoordMode, ToolTip, Screen  
    MouseGetPos, button5X, button5Y
return
^z::
    CoordMode, ToolTip, Screen  
    MouseGetPos, button6X, button6Y
return

F7::
    $stop := 0
    CoordMode, ToolTip, Screen  
    MouseGetPos, button8X, button8Y
    Loop 11
	{
	if $stop = 1
		break
	else{
		Loop 25
    		{
			if $stop = 1
				break
			else{

                CoordMode, ToolTip, Screen  
                MouseGetPos, button7X, button7Y

                ; x := %button7X%
                ; y := %button7Y%

                DetectHiddenWindows On
                Run %ComSpec%,, Hide, pid
                WinWait ahk_pid %pid%
                DllCall("AttachConsole", "UInt", pid)
                shell := ComObjCreate("WScript.Shell")
                exec := shell.Exec(script)
                outt := exec.StdOut.ReadLine()
                DllCall("FreeConsole")
                Process Close, %pid%
                if outt = 1
                {
                    outt := 0
                    Click, %button1X%, %button1Y%
	        	    Click, %button1X%, %button1Y%
        		    Sleep, 2
                }
                else if outt = 2
                {
                    outt := 0
                    Click, %button2X%, %button2Y%
                    Click, %button2X%, %button2Y%
                    Sleep, 2
                }
                else if outt = 3
                {
                    outt := 0
                    ; CoordMode, ToolTip, Screen  
                    ; MouseGetPos, button11X, button11Y
                    ; MouseClickDrag, left, %button11X%, %button11Y%, %button4X%, %button4Y%, 0
                    ; Sleep, 2 
                    Click, %button5X%, %button5Y%
                    Sleep, 2
                    Click, %button3X%, %button3Y%
                    Click, %button3X%, %button3Y%
                    Sleep, 2
                }
                else if outt = 4
                {
                    outt := 0
                    Sleep, 2
                    CoordMode, ToolTip, Screen  
                    MouseGetPos, A, B
                    CLick, Down
                    MouseMove, %button4X%, %button4Y%
                    Sleep, 5
                    Click, Up
                    Sleep, 2
                    Click, %button5X%, %button5Y%
                    Sleep, 2
                    Click, %button5X%, %button5Y%
                    Sleep, 2
                    Click, %button2X%, %button2Y%
                    Click, %button2X%, %button2Y%
                    Sleep, 2
                }
                else if outt = 5
                {
                    outt := 0
                    Sleep, 2
                    CoordMode, ToolTip, Screen  
                    MouseGetPos, A, B
                    CLick, Down
                    MouseMove, %button4X%, %button4Y%
                    Sleep, 5
                    Click, Up
                    Sleep, 2
                    Click, %button5X%, %button5Y%
                    Sleep, 2
                    Click, %button3X%, %button3Y%
                    Click, %button3X%, %button3Y%
                    Sleep, 2
                }
                else
                {
                    Goto, jump
                }

                ; MouseMove, %button7X%, %button7Y%, 0 ; not needed?
                Click, %button7X%, %button7Y%
                Sleep, 2 
        		Click, %button6X%, %button6Y%
	        	Sleep, 2
                Goto, jump
                jump:
                ; MouseMove, %button7X%, %button7Y%, 0 ; not needed?
                Click, %button8X%, %button8Y%
                Click, %button7X%, %button7Y%
                MouseMove, 59, 0, 0, R
			}
    	}
	}
	MouseMove, %button8X%, %button8Y%, 0	
	MouseMove, 0, 59, 0, R
	CoordMode, ToolTip, Screen  
    MouseGetPos, button8X, button8Y 
            
	}
 
return

F8::
	Pause
return 

^p::
    ExitApp

^d::
    DetectHiddenWindows On
    Run %ComSpec%,, Hide, pid
    WinWait ahk_pid %pid%
    DllCall("AttachConsole", "UInt", pid)
    shell := ComObjCreate("WScript.Shell")
    exec := shell.Exec(script)
    outt := exec.StdOut.ReadLine()
    DllCall("FreeConsole")
    Process Close, %pid%
    send %outt%
return