; Set the file path for the audio alarm (replace with the path of your desired audio file)
AlarmFile := "C:\Users\bberr\Downloads\Friends.mp3"
ImageFile := "C:\Users\bberr\Downloads\RED.png"

CoordMode, Mouse, Window ; Set the mouse coordinates mode to window

A := 0
RefreshCount := 0
Paused := 0 ; Add a variable to track paused state

; Create a minimal GUI
Gui, Add, Text, vMacroStatus, Macro Status: Off
Gui, Add, Button, gExitApp, Exit
Gui, Add, Text, vRefreshCount, Refreshes: %RefreshCount%
Gui, +AlwaysOnTop
Gui, Show, w190 h110, Macro Control

; Set up Pushover API token and user key
PushoverAPIToken := "amrc12smtj4mapqemrrqw3cx8varwg"
UserKey := "uzzi45mjj5gnp3p1pojwg1nb9ybmxq"

F2::
    if (Paused = 1) {
        Paused := 0
        GuiControl,, MacroStatus, Macro Status: On
    } else {
        Paused := 0
        GuiControl,, MacroStatus, Macro Status: On
        Sleep, 2000 ; Wait for 2 seconds before starting the macro
    }

    Loop
    {
        if (Paused = 1) {
            Break
        }

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

            ; Send a push notification using Pushover 10 consecutive times
            Loop, 10
            {
                SendPushover(PushoverAPIToken, UserKey, "Button Found and Clicked", "The button with the desired color has been found and clicked.")
                Sleep, 1000 ; Wait for 1 second before sending the next notification
            }

            ; Play the audio alarm and exit the loop
            SoundPlay, %AlarmFile%, Wait

            Break
        }
        else
        {
            ; Switch between tabs using ControlTab
            if (A mod 2 = 0)
            {
                Send, ^{Tab}
                Sleep, 200 ; Wait for 0.2 second before searching again
            }
            else
            {
                Send, ^{Tab}
                Sleep, 200 ; Wait for 0.2 second before searching again
            }
        }
    }
    GuiControl,, MacroStatus, Macro Status: Off
return

ESC::
{
    if (Paused = 1) {
        Paused := 0
        GuiControl,, MacroStatus, Macro Status: On
    } else {
        Paused := 1
        GuiControl,, MacroStatus, Macro Status: Paused
    }
}
return

ExitApp:
    GuiClose:
    ExitApp

; Function to send push notification using Pushover
SendPushover(APIToken, UserKey, Title, Message)
{
    HTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    URL := "https://api.pushover.net/1/messages.json"

    HTTP.Open("POST", URL)
    HTTP.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
    HTTP.Send("token=" . APIToken . "&user=" . UserKey . "&title=" . Title . "&message=" . Message)
	Response := HTTP.ResponseText

; Optional: Log the response to check if the message was sent successfully
; FileAppend, %Response%`n, PushoverLog.txt

; You can add error handling here if needed, based on the response received
}
