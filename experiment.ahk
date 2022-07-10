#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

outt := 0
x := 0
y := 0
dir    := A_ScriptDir
script  = python %dir%\stuff.py %x% %y%
F8::
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
        send yay
    }
    Else
    {
        send %outt%
    }
    ExitApp
return


^1::
    Goto, hello
    send yay
    hello:
    send Nope
    ExitApp
^p::
    ExitApp
