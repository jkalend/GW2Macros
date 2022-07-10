#SingleInstance
#NoEnv
SendMode Input

; press F12 to begin a macro
; press ESC to cancel


F12::
	SetMouseDelay,1
	Loop 500{
		Click
		}
	SetMouseDelay,10
	return
F11::
	SetMouseDelay,10 
	ExitApp