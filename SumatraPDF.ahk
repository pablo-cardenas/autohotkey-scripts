#If (MouseIsOver("ahk_exe SumatraPDF.exe") && WinActive("ahk_exe SumatraPDF.exe"))

; Hold MButton and press thumb buttons for switching between Windows
~MButton::Return
MButton & XButton1::Send ^{Tab}
MButton & XButton2::Send ^+{Tab}

; Hold RButton and press thumb buttons for switching between Windows
~RButton::Return
RButton & XButton1::Send ^{Tab}
RButton & XButton2::Send ^+{Tab}
