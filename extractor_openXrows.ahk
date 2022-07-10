#SingleInstance
#NoEnv
SendMode Input



; #MaxThreadsPerHotkey, 2



; e for salvage bot
; r for extractor field
; t for extract
; z for salvage




^e::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton2X, botton2Y
return
^r::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton3X, botton3Y
return
^t::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton4X, botton4Y
return
^z::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton5X, botton5Y
return



F7::
    $stop := 0
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton6X, botton6Y
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
        		MouseGetPos, botton1X, botton1Y
        		; MouseClickDrag, left, %botton1X%, %botton1Y%, %botton3X%, %botton3Y%, 0
        		Sleep, 50

				CLick, Down
				MouseMove, %botton3X%, %botton3Y%
				Sleep, 50
				Click, Up
				Sleep, 50

	        	Click, %botton4X%, %botton4Y%
        		Sleep, 50
        		Click, %botton2X%, %botton2Y%
	        	Click, %botton2X%, %botton2Y%
        		Sleep, 50
				; MouseMove, %botton1X%, %botton1Y%, 0
				Click, %botton1X%, %botton1Y%
				Sleep, 50
        		Click, %botton5X%, %botton5Y%
	        	Sleep, 50
			; MouseMove, %botton1X%, %botton1Y%, 0
			Click, %botton1X%, %botton1Y%
			MouseMove, 59, 0, 0, R
			}
    			}
		}
	MouseMove, %botton6X%, %botton6Y%, 0	
	MouseMove, 0, 59, 0, R
	CoordMode, ToolTip, Screen  
        MouseGetPos, botton6X, botton6Y
	}
 
return
^p:: ExitApp
^i::
	$stop := 1
return
F8::
	Pause
return 

