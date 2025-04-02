; Alt + T will run the script.
; Alt + X will exit the script and play exit sound.

; --- Initialization ---
#Persistent
SetTitleMatchMode, 2
PinnedWindows := []  ; Stores a list of window IDs
SoundPath := A_ScriptDir "\nintendoDSXL.wav"
ExitSoundPath := A_ScriptDir "\exit.wav"
UnpinSoundPath := ExitSoundPath  ; Use same sound for unpin

; --- Alt + T to Toggle Pin ---
!t::
WinGet, id, ID, A
if (PinnedWindows.HasKey(id)) {
    WinSet, AlwaysOnTop, Off, ahk_id %id%
    SoundPlay, %UnpinSoundPath%
    TrayTip, Window Unpinned, % "Unpinned: " GetWindowTitle(id), , 1
    PinnedWindows.Delete(id)
} else {
    WinSet, AlwaysOnTop, On, ahk_id %id%
    SoundPlay, %SoundPath%
    TrayTip, Window Pinned, % "Pinned: " GetWindowTitle(id), , 1
    PinnedWindows[id] := true
}
return

; --- Alt + X to Exit Script ---
!x::
SoundPlay, %ExitSoundPath%
ExitApp
return

; --- Function to Get Window Title from ID ---
GetWindowTitle(winID) {
    WinGetTitle, title, ahk_id %winID%
    return title
}

; --- Optional: Exit App Unpins All ---
OnExit("CleanupPinned")

CleanupPinned() {
    global PinnedWindows
    for id in PinnedWindows {
        WinSet, AlwaysOnTop, Off, ahk_id %id%
    }
}
