#NoEnv
#NoTrayIcon
#SingleInstance force
;#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

;Created by Daniel Walsh
;========================================================================

Gui, Font, underline s20,
Gui, Add, Text,, Computer Name:
Gui, Font, norm s15 cGreen,
Gui, Add, Text,, %A_ComputerName%
Gui, Font, underline cBlack s20, 
Gui, Add, Text,, Your IP Address is:
Gui, Font, norm s15,

if A_IPAddress1 contains 192.168.,10.,172.
{
	address1 = %A_IPAddress1%
	Gui, Add, Text, cGreen, %address1%
}

if A_IPAddress2 contains 192.168.,10.,172.
{
	address2 = %A_IPAddress2%
	Gui, Add, Text, cGreen, %address2%
}

if A_IPAddress3 contains 192.168.,10.,172.
{
	address3 = %A_IPAddress3%
	Gui, Add, Text, cGreen, %address3%
}

if A_IPAddress4 contains 192.168.,10.,172.
{
	address4 = %A_IPAddress4%
	Gui, Add, Text, cGreen, %address4%
}

Gui, Add, Button, h50 w100, Close
Gui, Show,, VNC Number
Return

GuiClose:
ExitApp

ButtonClose:
ExitApp

