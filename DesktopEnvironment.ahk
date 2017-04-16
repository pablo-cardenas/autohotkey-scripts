; Launch Double Commander
^#e::Run, "C:\Program Files\Double Commander\doublecmd.exe"

; Launch Qutebrowser
^#w::Run, "C:\Program Files\qutebrowser\qutebrowser.exe"

; CapsLock shows an alert when pressed
CapsLock::
If !GetKeyState("capslock","T") {
    SetCapsLockState, On
    Progress, B2 W350 H50 ZH0 FS30 WS900 x0 y0 CWFFC7CE CT9C0006, CAPS LOCK ON
} Else {
    SetCapsLockState, Off
    Progress, off
}
Return

#If MouseIsOver("ahk_class MultitaskingViewFrame") || MouseIsOver("ahk_class Shell_TrayWnd", "MSTaskListWClass1")
; Cycle through virtual desktops
WheelUp::Send ^#{Right}
WheelDown::Send ^#{Left}
MButton::Send #{Tab}

#If MouseIsOver("ahk_class Shell_TrayWnd", "ToolbarWindow323")
; Change volume by scrolling
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
#If
