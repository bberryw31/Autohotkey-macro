
TC := 0

Gui, Add, ListView, x10 y25 w450 h120 vLogbox LVS_REPORT, %A_Now%|Activity
	LV_ModifyCol(1,100)
Gui, Color, 4E4E4E
Gui, Show, , counttest


updatelog(LogString)
{
 global Logbox
 rownumber := LV_Add("", A_Now, LogString) 
 LV_Modify(rownumber, "Vis") 
}


CoordMode, Mouse, Window

F3::

{
	loop
	{
		
		
		
		TC := TC + 0.5
		
		updatelog("Bot Running for " TC " hours")
			
			
		sleep 1000
	
	}
}

ESC::ExitApp
return
