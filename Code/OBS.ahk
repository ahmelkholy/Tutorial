; run the script as admin
#SingleInstance Force
SetWorkingDir %A_ScriptDir% ; Set the working directory to the script's directory
if not A_IsAdmin
    Run *RunAs "%A_ScriptFullPath%" ; Use relative path for running as admin

; Array of function keys
FKeys := ["F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12"]

; Loop through function keys and create hotkeys
Loop, % FKeys.Length()
{
    key := FKeys[A_Index]
    Hotkey, %key%, SendHotkey
}

; Function to send hotkey
SendHotkey:
    if WinExist("ahk_exe obs64.exe")
    {
        StringTrimLeft, key, A_ThisHotkey, 0
        ControlSend,, ^!+{%key%}, ahk_exe obs64.exe
    }
return