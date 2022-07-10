#MaxThreadsPerHotkey, 2

^g::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton1X, botton1Y
return

^k::
    $stop := 0
    Loop,
    {

        Click, %botton1X%, %botton1Y%
        Click, %botton1X%, %botton1Y%
        Sleep, 5000 
        if ($stop)
        {
            return
        }
    }
 
return
^p:: ExitApp
