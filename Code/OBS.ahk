; run the script as admin 
#SingleInstance Force
SetWorkingDir C:\Users\ahm_e\Documents\PROJECTs-other\videos_youtube\Code\
if not A_IsAdmin
    Run *RunAs "C:\Users\ahm_e\Documents\PROJECTs-other\videos_youtube\Code\OBS.ahk"

F1::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F1}, ahk_exe obs64.exe ; Press F1 to trigger Ctrl+Alt+Shift+F1
}
return

F2::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F2}, ahk_exe obs64.exe ; Press F2 to trigger Ctrl+Alt+Shift+F2
}
return

F3::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F3}, ahk_exe obs64.exe ; Press F3 to trigger Ctrl+Alt+Shift+F3
}
return

F4::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F4}, ahk_exe obs64.exe ; Press F4 to trigger Ctrl+Alt+Shift+F4
}
return

F5::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F5}, ahk_exe obs64.exe ; Press F5 to trigger Ctrl+Alt+Shift+F5
}
return

F6::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F6}, ahk_exe obs64.exe ; Press F6 to trigger Ctrl+Alt+Shift+F6
}
return

F7::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F7}, ahk_exe obs64.exe ; Press F7 to trigger Ctrl+Alt+Shift+F7
}
return

F8::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F8}, ahk_exe obs64.exe ; Press F8 to trigger Ctrl+Alt+Shift+F8
}
return

F9::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F9}, ahk_exe obs64.exe ; Press F9 to trigger Ctrl+Alt+Shift+F9
}
return

F10::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F10}, ahk_exe obs64.exe ; Press F10 to trigger Ctrl+Alt+Shift+F10
}
return

F11::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F11}, ahk_exe obs64.exe ; Press F11 to trigger Ctrl+Alt+Shift+F11
}
return

F12::
IfWinExist, ahk_exe obs64.exe
{
 ControlSend,, ^!+{F12}, ahk_exe obs64.exe ; Press F12 to trigger Ctrl+Alt+Shift+F12
}
return

