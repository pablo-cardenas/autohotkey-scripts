; Launch Double Commander
#+e::Run, "C:\Program Files\Double Commander\doublecmd.exe"

; Launch Qutebrowser
#+w::Run, "C:\Program Files\qutebrowser\qutebrowser.exe"

; Like i3wm
#+q::Send !{F4}
#j::Send ^#{Left}
#ñ::Send ^#{Right}

; CapsLock shows an alert when pressed
*CapsLock::
If !GetKeyState("capslock","T") {
    SetCapsLockState, On
    Progress, B2 W350 H50 ZH0 FS30 WS900 x0 y0 CWFFC7CE CT9C0006, CAPS LOCK ON
} Else {
    SetCapsLockState, Off
    Progress, off
}
Return

+Ins::
clipboard = %clipboard%
Return

#If WinActive("ahk_class MultitaskingViewFrame")
    || MouseIsOver("ahk_class Shell_TrayWnd", "MSTaskListWClass1")
; Cycle through virtual desktops
WheelUp::Send ^#{Left}
WheelDown::Send ^#{Right}

#If WinActive("ahk_class MultitaskingViewFrame")
XButton1::Send {Right}
XButton2::Send {Left}
MButton::Send {Enter}

#If MouseIsOver("ahk_class Shell_TrayWnd", "MSTaskListWClass1")
XButton1::Send !+{Esc}
XButton2::Send !{Esc}
MButton::Send #{Tab}

#If MouseIsOver("ahk_class Shell_TrayWnd", "ToolbarWindow323")
; Change volume by scrolling
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
#If
