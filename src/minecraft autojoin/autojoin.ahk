CoordMode, Mouse, Window

Gui, Font, c2D73FF
Gui, Add, ListView, x10 y25 w450 h480 vLogbox LVS_REPORT, %A_Now%|로그
	LV_ModifyCol(1,100)
Gui, Font, cF4F4F4
Gui, Add, Text, x10 y515, + : 시작     - : 초기화     * : 종료
Gui, Color, 4E4E4E
Gui, Show, , 믿고 쓰는 김치 매크로 

updatelog(LogString)
{
 global Logbox
 rownumber := LV_Add("", A_Now, LogString) 
 LV_Modify(rownumber, "Vis") 
}

S := 0
T := 0

NumpadAdd::
{
	updatelog("MC_Autojoin Running")
	
	loop{
		if(S=0)
		{
			sleep, 1000
			updatelog("Checking Online Status_1")
			imagesearch, a, b, 809, 31, 860, 80, *30 online.png
			sleep 1000
			if (errorlevel=0)
			{
				updatelog("Player is Online")
				sleep, 10000
				
				send, {Alt down}
					sleep, 500
					send, {tab}
					sleep 500
					send, {Alt up}
					sleep 2000
			}
			if (errorlevel=1)
			{
				updatelog("Player not online.")
				T := T + 1
			}
				updatelog("Checking Crash_1")
				imagesearch, a, b, 10, 387, 853, 504, *10 ting.png
				sleep 1000
				if (errorlevel = 0)
				{
					updatelog("Crash Detected")
					sleep, 1000
					T := 0
					S := 1
					updatelog("Rejoining Server")
					sleep, 1000
					mouseclick, l, 425, 315
					sleep, 2000
					mouseclick, l, 505, 470
					sleep, 2000
					mouseclick, l, 175, 135
					sleep, 15000							
				}
		}
		
		if(S=1)
		{
			updatelog("Checking Online Status_2")
			imagesearch, a, b, 809, 31, 860, 80, *30 online.png
			sleep 1000
			if (errorlevel = 0)
				{
					updatelog("Player is Online")
					send, [
					sleep, 2000
					send, ]
					sleep, 1000
					updatelog("AkfMine On")
					S := 0
				}
			if (errorlevel = 1)
				{
					updatelog("Waiting to join")
					sleep, 1000
					updatelog("Checking Crash_2")
					imagesearch, a, b, 10, 387, 853, 504, *10 ting.png
					sleep 1000
					if (errorlevel=0)
					{
						updatelog("Failed to join. Trying Again")
						sleep, 5000
						S := 0
						T := 0
					}
				}
		}
		
		updatelog("Checking Bot Detection")
		imagesearch, a, b, 290, 51, 316, 384, *20 bot.png
		sleep, 1000
		if(errorlevel=0)
		{
			updatelog("Bot Detected")
			send, {esc}
			T:=50
		}
		
		updatelog("Debug Counter " T " /50")
		if(T>49)
		{
			updatelog("Debugging")
			send {esc}
			sleep, 2000
			imagesearch, a, b, 407, 163, 454, 203, *40 esc.png
			sleep, 1000
			if (errorlevel=0)
			{
				updatelog("Disconnecting")
				mouseclick, l, 434, 378
				sleep, 5000
				S := 0
				T := 0
			}
			if (errorlevel=1)
			{
				updatelog("Debugging Unsuccessful Trying Again")
				imagesearch, a, b, 407, 163, 454, 203, *40 esc.png
				sleep, 1000
				if (errorlevel=0)
				{
					updatelog("Disconnecting")
					mouseclick, l, 434, 378
					sleep, 5000
					S := 0
					T := 0
				}
				if (errorlevel=1)
				{
					updatelog("Debugging Unsuccessful Aborting")
				}
			}
			
			send, {Alt down}
			sleep, 500
			send, {tab}
			sleep 500
			send, {Alt up}
			sleep 2000
			
			updatelog("Debugging_2")
			send {esc}
			sleep, 2000
			imagesearch, a, b, 407, 163, 454, 203, *40 esc.png
			sleep, 1000
			if (errorlevel=0)
			{
				updatelog("Disconnecting_2")
				mouseclick, l, 434, 378
				sleep, 5000
				S := 0
				T := 0
			}
			if (errorlevel=1)
			{
				updatelog("Debugging Unsuccessful Trying Again_2")
				imagesearch, a, b, 407, 163, 454, 203, *40 esc.png
				sleep, 1000
				if (errorlevel=0)
				{
					updatelog("Disconnecting_2")
					mouseclick, l, 434, 378
					sleep, 5000
					S := 0
					T := 0
				}
				if (errorlevel=1)
				{
					updatelog("Debugging Unsuccessful Aborting_2")
				}
			}
		}
	}
}

return

NumpadSub::
{
	reload
}

NumpadMult::
{
	Exitapp
}

return