#MaxThreadsPerHotkey, 2



^r::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton3X, botton3Y
return
^t::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton4X, botton4Y
return


F7::
	MouseMove, %botton5X%, %botton5Y%
return
F8::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton1X, botton1Y
    Loop 1
    {

        MouseClickDrag, left, %botton1X%, %botton1Y%, %botton3X%, %botton3Y%, 0
        Sleep, 5 
        Click, %botton4X%, %botton4Y%
        Sleep, 5
	MouseMove, %botton1X%, %botton1Y%, 0

    }
 
return
^p:: ExitApp
