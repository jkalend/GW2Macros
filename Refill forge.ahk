#MaxThreadsPerHotkey, 2

(only r and t needed)
^q::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton1X, botton1Y
return
^w::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton2X, botton2Y
return
^e::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton3X, botton3Y
return


^r::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton4X, botton4Y
return
^t::
    CoordMode, ToolTip, Screen  
    MouseGetPos, botton5X, botton5Y
return
^k::
    $stop := 0
    	Loop,
    	   {


        	Click, %botton4X%, %botton4Y%
        	Click, %botton4X%, %botton4Y%
        	Sleep, 100 
        	Click, %botton5X%, %botton5Y%
        	Sleep, 2000
        	if ($stop)
        	{
            	break
        	}
    	    }
 
return
^p:: ExitApp
F8::
	$stop := 1
F7:: Pause
