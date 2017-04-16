#If (MouseIsOver("ahk_exe acad.exe") && WinActive("ahk_exe acad.exe"))
     || (MouseIsOver("ahk_exe Revit.exe") && WinActive("ahk_exe Revit.exe"))
; Default behavior of thumb buttons
XButton1::Esc
XButton2::Enter

; Hold MButton and press thumb buttons for switching between Windows
~MButton::Return
MButton & XButton1::Send {MButton up}^{Tab}{MButton Down}
MButton & XButton2::Send {MButton up}^+{Tab}{MButton Down}

; Hold RButton and press thumb buttons for switching between Windows
RButton::Send {RButton}
RButton & XButton1::Send ^{Tab}
RButton & XButton2::Send ^+{Tab}

#If MouseIsOver("ahk_exe Revit.exe") && WinActive("ahk_exe Revit.exe")
; Hold XButton1 to orbit
XButton1 & ~MButton::
Send {Shift down}
KeyWait XButton1
Send {Shift up}
Return

; Hold XButton2 to select and unselect
XButton2 & ~LButton::
SendEvent {Ctrl down}{Shift down}
KeyWait XButton2
SendEvent {Ctrl up}{Shift up}
Return

; Press check or cross on edit mode
!XButton1::Send {Alt}mxm
!XButton2::Send {Alt}mfm
#If
