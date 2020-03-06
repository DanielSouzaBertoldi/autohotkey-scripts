#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, ahk_class ConsoleWindowClass
^s::
SendInput IF NOT EXIST C:\Windows\System32\telnet.exe pkgmgr /iu:"TelnetClient"{Enter}
Sleep 1000
SendInput Telnet Towel.blinkenlights.nl{Enter}
return