CoordMode, Mouse, Window

Alt::
{
	looping := true
    while looping {
        if GetKeyState("LCtrl") {
            looping := false
        }
		;Loopww
		{
			random, int, 120, 130
			sleep %int%
			send {RButton}
		}
	}
}

return
