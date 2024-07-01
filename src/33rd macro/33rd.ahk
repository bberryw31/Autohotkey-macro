CoordMode, Mouse, Window

Gui, Font, c2D73FF
Gui, Add, ListView, x10 y25 w450 h480 vLogbox LVS_REPORT, %A_Now%|Activity
	LV_ModifyCol(1,100)
Gui, Font, cF4F4F4
Gui, Add, Text, x10 y515, F3 : Start Macro     ESC : Stop Macro
Gui, Color, 4E4E4E
Gui, Show, , Beta

updatelog(LogString)
{
 global Logbox
 rownumber := LV_Add("", A_Now, LogString) 
 LV_Modify(rownumber, "Vis") 
}

F3::
{
	loop
	{
		random, startX, 300, 450
		random, startY, 710, 770
		mouseclick, l, %startX%, %startY%
		updatelog("Round Started")
		
		random, int, 5000, 8000
		sleep %int%
		
		random, fastX, 80, 100
		random, fastY, 66, 86
		mouseclick, l, %fastX%, %fastY%
		updatelog("Speed Fast")
		
		random, int, 1000, 2000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning1")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning2")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning3")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning4")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning5")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning6")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning7")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning8")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning9")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning10")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning11")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning12")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning13")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning14")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning15")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning16")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning17")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning18")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning19")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning20")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning21")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning22")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning23")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning24")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning25")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning26")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning27")
		
		random, int, 3000, 5000
		sleep %int%
		
		random, smmnX, 417, 517
		random, smmnY, 800, 850
		mouseclick, l, %smmnX%, %smmnY%
		updatelog("Summoning28")
		
		random, int, 3000, 5000
		sleep %int%
		
		updatelog("upgrading")
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		random, upX, 240, 310
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 350, 420
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		random, upX, 460, 520
		random, upY, 925, 980
		mouseclick, l, %upX%, %upY%
		random, int, 500, 1000
		sleep %int%
		
		updatelog("Waiting for the game")
		
		random, int, 60000, 70000
		sleep %int%
		
		random, ffX, 215, 333
		random, ffY, 850, 900
		mouseclick, l, %ffX%, %ffY%
		updatelog("Finishing")
		
		random, int, 4000, 6000
		sleep %int%
	}
}

return

ESC::ExitApp

return
