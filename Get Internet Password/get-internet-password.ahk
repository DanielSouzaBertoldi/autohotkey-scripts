#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, ahk_class ConsoleWindowClass
^p::
SendInput {Text}for /f "tokens=2 delims=:" %i in ('netsh wlan show interfaces ^| find "Profile"') do netsh wlan show profile %i key=clear | find "Key"{Enter}
return