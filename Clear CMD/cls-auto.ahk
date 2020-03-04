#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, ahk_class ConsoleWindowClass
^l::
Clipboard=
SendInput !{space}es{Enter}
ClipWait, 1
Clipboard := RegExReplace(Clipboard,"s).+>")
SendInput {Esc}cls{Enter}%Clipboard%
return