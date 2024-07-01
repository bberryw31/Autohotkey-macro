CoordMode, Mouse, Window

Gui, Font, c2D73FF
Gui, Add, ListView, x10 y25 w450 h480 vLogbox LVS_REPORT, %A_Now%|Activity
	LV_ModifyCol(1,100)
Gui, Font, cF4F4F4
Gui, Add, Text, x10 y515, F3 : Start Macro     F4 : Stop Macro
Gui, Add, Button, gB1 x10 y540, AR_Count
Gui, Add, Button, gB2 x100 y540, Colo/Daily
Gui, Color, 4E4E4E
Gui, Show, , Evil_Hunter_Tycoon_Boss&Raid

updatelog(LogString)
{
 global Logbox
 rownumber := LV_Add("", A_Now, LogString) 
 LV_Modify(rownumber, "Vis") 
}

A := 0
B := 1
C := 0
D := 0
Q := 0
Daily := 0
Bonus := 0
Colo1 := 0
Colo2 := 0

F3::
{
	Loop
	{
		if (Daily = 1)
		{
			if (Colo1 = 0)
			{
				updatelog("Internet Connection is Required")
				updatelog("Entering Colosseum")
				mouseclick, l, 374, 175
				random, int, 3000, 3500
				sleep %int%
				mouseclick, l, 281, 349
				random, int, 3000, 3500
				sleep %int%
				
				//incomplete
				
			}
			
			
			Daily := 0
		}
		if (Daily = 0)
		{
			loop
			{
				updatelog("Checking Boss")
				mouseclick, l, 516, 824
				random, int, 2000, 2500
				sleep %int%
				mouseclickdrag, l, 520, 282, 125, 691, 10
				random, int, 300, 400
				sleep %int%
				mouseclickdrag, l, 520, 282, 125, 691, 10
				random, int, 1000, 1500
				sleep %int%
				imagesearch, vx, vy, 474, 225, 553, 253, *50 bossready.png
					if (ErrorLevel = 0)
					{
					updatelog("Boss is Ready")
					A := 0
					random, int, 2000, 2500
					sleep %int%
					}
					if (ErrorLevel = 1)
					{
						imagesearch, vx, vy, 475, 232, 503, 258, *50 bossoncool.png
						if (ErrorLevel = 0)
						{
							updatelog("Boss is on Cooldown")
							A := 2
							random, int, 2000, 2500
							sleep %int%
						}
						if (ErrorLevel = 1)
						{
							updatelog("Boss is NOT Ready")
							A := 3
							random, int, 2000, 2500
							sleep %int%
						}
					}
				
				updatelog("Checking Dungeon")
				mouseclick, l, 170, 970
				random, int, 2000, 2500
				sleep %int%
				imagesearch, vx, vy, 80, 841, 357, 898, *30 dgstart.png
				if (ErrorLevel = 0)
				{
					updatelog("Dungeon is Ready")
					D := 0
					random, int, 2000, 2500
					sleep %int%
				}
				if (ErrorLevel = 1)
				{
					imagesearch, vx, vy, 404, 786, 444, 826, *50 chest.png
					if (ErrorLevel = 0)
					{
						updatelog("Dungeon Reward Receivable")
						D := 2
					}
					if (ErrorLevel = 1)
					{
						updatelog("Dungeon is NOT Ready")
						D := 1
					}
				}
				mouseclick, l, 170, 970
				random, int, 2000, 2500
				sleep %int%
				
				updatelog("Checking Raid")
				mouseclick, l, 444, 180
				random, int, 2000, 2500
				sleep %int%
				
				imagesearch, vx, vy, 76, 158, 487, 202, *30 raid.png
				if (ErrorLevel = 0)
				{
					updatelog("Raid is Ready")
					B := 0
					mouseclick, l, 372, 854
				}
				if (ErrorLevel = 1)
				{
					updatelog("Raid is NOT Ready")
				}
				imagesearch, vx, vy, 368, 587, 426, 645, *30 raidcancel.png
				if (ErrorLevel = 0)
				{
					updatelog("Raid Ongoing")
					B := 1
					mouseclick, l, 355, 615
				}
				imagesearch, vx, vy, 194, 633, 258, 700, *30 raidcancel.png
				if (ErrorLevel = 0)
				{
					updatelog("Receiving Raid Rewards")
					mouseclick, l, 277, 660
					B := 0
				}
				random, int, 2000, 2500
				sleep %int%
				
				
				if (A=0 and B=0)
				{
					updatelog("Summoning Boss")
					mouseclick, l, 510, 170
					sleep, 60000
					A := 1
				}
				
				if (D=0)
				{
					updatelog("Entering Dungeon")
					mouseclick, l, 170, 970
					random, int, 2000, 2500
					sleep %int%
					mouseclick, l, 222, 866
					random, int, 2000, 2500
					sleep %int%
					mouseclick, l, 164, 254
					random, int, 500, 750
					sleep %int%
					mouseclick, l, 164, 285
					random, int, 2000, 2500
					sleep %int%
					mouseclick, l, 182, 880
					random, int, 2000, 2500
					sleep %int%
					mouseclick, l, 388, 526
					random, int, 2000, 2500
					sleep %int%
					
					ImageSearch, vx, vy, 114, 785, 275, 826, *30 green.png
						if (ErrorLevel = 0)
						{
						updatelog("Hunter Selected")
						mouseclick, l, 200, 820
						random, int, 2000, 2500
						sleep %int%
						mouseclick, l, 170, 970
						updatelog("Dungeon Started")
						D := 1
						}
						if (ErrorLevel = 1)
						{
						updatelog("Hunter Not Available")
						mouseclick, l, 365, 816
						random, int, 2000, 2500
						sleep %int%
						mouseclick, l, 170, 970
						}
						
					random, int, 2000, 2500
					sleep %int%
				}
					
				if (D=2)
				{
					updatelog("Receiving Dungeon Rewards")
					mouseclick, l, 160, 960
					random, int, 2000, 2100
					sleep %int%
					mouseclick, l, 430, 800
					random, int, 9000, 10000
					sleep %int%
					mouseclick, l, 250, 865
					random, int, 2000, 2100
					sleep %int%
					mouseclick, l, 160, 970
					random, int, 2000, 2100
					sleep %int%
					
					D := 0
				}
				
				if (B=0 and A=2)
				{
					if (C=0)
					{
						updatelog("Starting Raid")
						mouseclick, l, 444, 177
						random, int, 2000, 2100
						sleep %int%
						
						updatelog("Selecting Raid")
						mouseclick, l, 333, 400
						random, int, 2000, 2100
						sleep %int%
						
						updatelog("Reward Booster")
						mouseclick, l, 243, 266
						random, int, 1000, 1500
						sleep %int%
						
						ImageSearch, vx, vy, 100, 826, 275, 883, *30 green.png
						if (ErrorLevel = 1)
						{
							updatelog("Not Enough Money")
							mouseclick, l, 333, 850
							random, int, 2000, 2100
							sleep %int%
						}
						if (ErrorLevel = 0)
						{
						mouseclick, l, 200, 850
						updatelog("Raid Started")
						random, int, 2000, 2100
						sleep %int%
						}
					}
					
					if (C>0)
					{
						updatelog("Starting Alliance Raid")
						random, ARaidX, 425, 460
						random, ARaidY, 169, 190
						mouseclick, l, %ARaidX%, %ARaidY%
						
						random, int, 2000, 2500
						sleep %int%
						
						updatelog("Selecting Raid")
						random, selX, 100, 450
						random, selY, 529, 637
						mouseclick, l, %selX%, %selY%
						
						random, int, 2000, 2500
						sleep %int%
						
						ImageSearch, vx, vy, 100, 826, 275, 883, *30 green.png
						if (ErrorLevel = 1)
						{
							updatelog("Not Enough Money")
							mouseclick, l, 333, 850
							random, int, 2000, 2100
							sleep %int%
						}
						if (ErrorLevel = 0)
						{
						mouseclick, l, 200, 850
						updatelog("Alliance Raid Started")
						
						C := C - 1
						
						random, int, 2000, 2100
						sleep %int%
						}
						
					}
				}
				
				updatelog("Checking Quest")
				mouseclick, l, 477, 848
				random, int, 2000, 2100
				sleep %int%
				ImageSearch, vx, vy, 249, 257, 552, 512, *50 quest.png
				if (ErrorLevel = 1)
				{
					updatelog("Quest Center Not Found")
					random, int, 1000, 1100
					sleep %int%
				}
				if (ErrorLevel = 0)
				{
					mouseclick, l, %vx%, %vy%
					random, int, 2000, 2100
					sleep %int%
					ImageSearch, vx, vy, 197, 189, 248, 227, *40 questwindow2.png
					if (ErrorLevel = 0)
					{
						Q := 0
					}
					if (ErrorLevel = 1)
					{
						Q := 1
					}
					
					if (Q = 0)
					{
						ImageSearch, vx, vy, 348, 338, 412, 392, *50 queststatus.png
							if(ErrorLevel = 1)
							{
								mouseclick, l, 333, 433
								random, int, 2000, 2100
								sleep %int%
								mouseclick, l, 276, 511
								random, int, 2000, 2100
								sleep %int%
								mouseclickdrag, l, 282, 700, 274, 232, 10
								random, int, 500, 600
								sleep %int%
								mouseclickdrag, l, 282, 700, 274, 232, 10
								random, int, 2000, 2100
								sleep %int%
								mouseclick, l, 391, 530
								random, int, 2000, 2100
								sleep %int%
								mouseclickdrag, l, 275, 433, 274, 1000, 10
								random, int, 500, 600
								sleep %int%
								mouseclickdrag, l, 275, 433, 274, 980, 10
								random, int, 2000, 2100
								sleep %int%
								mouseclick, l, 211, 794
								updatelog("Quest Started")
								random, int, 2000, 2100
								sleep %int%
								mouseclick, l, 356, 819
								random, int, 2000, 2100
								sleep %int%
							}
							if (ErrorLevel = 0)
							{
								updatelog("Quest Ongoing")
								mouseclick, l, 371, 824
								random, int, 2000, 2100
								sleep %int%
							}
					}
					if (Q = 1)
					{
						ImageSearch, vx, vy, 280, 537, 343, 591, *40 character.png
						if (ErrorLevel = 0)
						{
							mouseclick, l, 314, 568
							random, int, 2000, 2100
							sleep %int%
						}
						if (ErrorLevel = 1)
						{
							Send, {Esc}
							ImageSearch, vx, vy, 284, 597, 441, 657, *30 exitt.png
							if (ErrorLevel = 0)
							{
								mouseclick, l, 363, 628
								random, int, 1000, 1100
								sleep %int%
							}
						}
						
					}
				}
				
				updatelog("Checking Hunters")
				mouseclick, l, 50, 718
				random, int, 2000, 2100
				sleep %int%
				ImageSearch, vx, vy, 91, 239, 470, 306, *40 hunter.png
				if (ErrorLevel = 0)
				{
					mouseclick, l, 200, 759
					random, int, 2000, 2100
					sleep %int%
					mouseclick, l, 212, 594
					random, int, 2000, 2100
					sleep %int%
				}
				
				updatelog("Debugging")
				Send, {Esc}
				random, int, 750, 1000
				sleep %int%
				Send, {Esc}
				random, int, 750, 1000
				sleep %int%
				ImageSearch, vx, vy, 284, 597, 441, 657, *30 exitt.png
				if (ErrorLevel = 0)
				{
					mouseclick, l, 363, 628
					random, int, 1000, 1100
					sleep %int%
					updatelog("Debugged")
				}
				if (ErrorLevel = 1)
				{
					ImageSearch, vx, vy, 280, 537, 343, 591, *40 character.png
					if (ErrorLevel = 0)
					{
						mouseclick, l, 314, 568
						random, int, 2000, 2100
						sleep %int%
						updatelog("Debugged")
					}
					if (ErrorLevel = 1)
					{
						updatelog("Nothing to Debug")
					}
				}
			}
		}
	}
}

B1:
{
	if(C=0)
	{
		updatelog("Remaining A_Raid Count Set to 1")
		C := 1
	return
	}
	
	if(C=1)
	{
		updatelog("Remaining A_Raid Count Set to 2")
		C := 2
	return
	}
	
	if(C=2)
	{
		updatelog("Remaining A_Raid Count Set to 3")
		C := 3
	return
	}
	
	if(C=3)
	{
		updatelog("Remaining A_Raid Count Set to 4")
		C := 4
	return
	}
	
	if(C=4)
	{
		updatelog("Remaining A_Raid Count Set to 5")
		C := 5
	return
	}
	
	if(C=5)
	{
		updatelog("Remaining A_Raid Count Set to 6")
		C := 6
	return
	}
	
	if(C=6)
	{
		updatelog("Remaining A_Raid Count Set to 7")
		C := 7
	return
	}
	
	if(C=7)
	{
		updatelog("Remaining A_Raid Count Set to 8")
		C := 8
	return
	}
	
	if(C=8)
	{
		updatelog("Remaining A_Raid Count Set to 0")
		C := 0
	return
	}
	
}

return

B2:
{
	if (Daily = 0)
	{
		updatelog("Colo/Daily ON")
		Daily := 1
	return
	}
	
	if (Daily = 1)
	{
		updatelog("Colo/Daily OFF")
		Daily := 0
	return
	}
}

return

F4::ExitApp

return

F5::Pause

return