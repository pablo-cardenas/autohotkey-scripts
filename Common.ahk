MouseIsOver(WinTitle, ClassNN = "") {
    MouseGetPos,,, Win, _ClassNN
    Return WinExist(WinTitle . " ahk_id" . Win) && (ClassNN = "" || RegExMatch(_ClassNN, ClassNN) = 1)
}
