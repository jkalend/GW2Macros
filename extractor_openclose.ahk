#MaxThreadsPerHotkey, 2


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

F8::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton1X, botton1Y
    Loop 1
    {

        MouseClickDrag, left, %botton1X%, %botton1Y%, %botton3X%, %botton3Y%, 0
        Sleep, 2 
        Click, %botton4X%, %botton4Y%
        Sleep, 2
        Click, %botton2X%, %botton2Y%
        Click, %botton2X%, %botton2Y%
        Sleep, 2
	MouseMove, %botton1X%, %botton1Y%, 0
	Click, %botton1X%, %botton1Y%
	Sleep, 2 
        Click, %botton5X%, %botton5Y%
        Sleep, 2
	MouseMove, %botton1X%, %botton1Y%, 0
	Click, %botton1X%, %botton1Y%

    }
 
return
^p:: ExitApp
