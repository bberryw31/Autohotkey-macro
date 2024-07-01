; Set the file path for the audio alarm (replace with the path of your desired audio file)
AlarmFile := "C:\Users\bberr\Downloads\Friends.mp3"
ImageFile := "C:\Users\bberr\Downloads\RED.png"

CoordMode, Mouse, Window ; Set the mouse coordinates mode to window

A := 0
RefreshCount := 0

; Create a minimal GUI
Gui, Add, Text, vMacroStatus, Macro Status: Off
Gui, Add, Button, gExitApp, Exit
Gui, Add, Text, vRefreshCount, Refreshes: %RefreshCount%
Gui, +AlwaysOnTop
Gui, Show, w190 h110, Macro Control

F2::
    GuiControl,, MacroStatus, Macro Status: On
    Sleep, 2000 ; Wait for 2 seconds before starting the macro

    Loop
    {
        ; Refresh the page by sending F5 key
        Send, {F5}
        RefreshCount := RefreshCount + 1
        GuiControl,, RefreshCount, Refreshes: %RefreshCount%
        Sleep, 3000 ; Wait for 3 seconds for the page to refresh

        ; Search for the RED.png image in the search area
        ImageSearch, FoundX, FoundY, 700, 550, 1200, 600, %ImageFile%

        A := A + 1

        ; If the image is found
        if (ErrorLevel = 0)
        {
            ; Click the button
            MouseClick, left, %FoundX%, %FoundY%

            ; Play the audio alarm and exit the loop
            SoundPlay, %AlarmFile%
            Break
        }
        else
        {
            ; Switch between tabs using ControlTab
            if (A mod 2 = 0)
            {
                Send, ^{Tab}
                Sleep, 500 ; Wait for 1/2 second before searching again
            }
            else
            {
                Send, ^{Tab}
                Sleep, 500 ; Wait for 1/2 second before searching again
            }
        }
    }
    GuiControl,, MacroStatus, Macro Status: Off
return

ESC::
{
Exitapp
}

ExitApp:
    GuiClose:
    ExitApp
