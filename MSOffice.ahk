#If (MouseIsOver("ahk_exe EXCEL.EXE") && WinActive("ahk_exe EXCEL.EXE"))
; Default behavior of thumb buttons
XButton1::Send ^{PgUp}
XButton2::Send ^{PgDn}

; Hold RButton and press thumb buttons for switching between Windows
RButton::Send {RButton}
RButton & XButton1::
Send {Ctrl down}
Sleep 50
Send {Tab}{Ctrl up}
Return
RButton & XButton2::
Send {Ctrl down}
Sleep 50
Send +{Tab}{Ctrl up}
Return

; Hold MButton and press thumb buttons for switching between Windows
MButton::Send {MButton}
MButton & XButton1::
Send {Ctrl down}
Sleep 50
Send {Tab}{Ctrl up}
Return
MButton & XButton2::
Send {Ctrl down}
Sleep 50
Send +{Tab}{Ctrl up}
Return

#If
