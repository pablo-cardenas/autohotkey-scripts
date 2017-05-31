#If (MouseIsOver("ahk_exe ETABS.exe") && WinActive("ahk_exe ETABS.exe"))
    || (MouseIsOver("ahk_exe SAP2000.exe") && WinActive("ahk_exe SAP2000.exe"))
    || (MouseIsOver("ahk_exe SAFE.exe") && WinActive("ahk_exe SAFE.exe"))
; Default behavior of thumb buttons
XButton1::Send {Esc}
XButton2::Send {Enter}

; Hold MButton and press thumb buttons for switching between Windows
~MButton::Return
MButton & XButton1::Send {MButton up}^{Tab}{MButton Down}
MButton & XButton2::Send {MButton up}^+{Tab}{MButton Down}

; Hold RButton and press thumb buttons for switching between Windows
RButton::Send {RButton}
RButton & XButton1::Send ^{Tab}
RButton & XButton2::Send ^+{Tab}

; Hold XButton1 to orbit
XButton1 & MButton::
Send {Shift down}{MButton down}
KeyWait MButton
Send {Shift up}{MButton up}
Return
#If
