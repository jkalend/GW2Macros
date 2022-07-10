#MaxThreadsPerHotkey, 2



F7::
    Loop
    {
	Send +{F10}
	Sleep, 400
	Send "^O"
        Sleep, 300
        Send +{F11}
        Sleep, 400
        Send "^O"
        Sleep, 500
	Send +{F}
        Sleep, 2450

    }
 
return
^p:: ExitApp
