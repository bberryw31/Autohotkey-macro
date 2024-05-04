CoordMode, Mouse, Window

Gui, Font, c2D73FF
Gui, Add, ListView, x10 y25 w450 h480 vLogbox LVS_REPORT, %A_Now%|Activity
	LV_ModifyCol(1,100)
Gui, Font, cF4F4F4
Gui, Add, Text, x10 y515, F3 : Start Macro     ESC : Stop Macro
Gui, Add, Button, gA1 x10 y530, Boss
Gui, Add, Button, gA2 x100 y530, Raid
Gui, Add, Button, gB1 x190 y530, AR_Count
Gui, Color, 4E4E4E
Gui, Show, , Evil_Hunter_Tycoon_Boss&Raid

updatelog(LogString)
{
 global Logbox
 rownumber := LV_Add("", A_Now, LogString) 
 LV_Modify(rownumber, "Vis") 
}

TC := 0
BC := 0
RC := 0
A := 1
B := 0
D := 0

F3::
{
	loop
	{
		if(A=1)
		{
		
		random, BossX, 500, 525
		random, BossY, 169, 190
		mouseclick, l, %BossX%, %BossY%
		updatelog("Boss Spawned")
		updatelog("Time Remaining: 11 minutes")
		
		random, int, 2000, 2500
		sleep %int%
		
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
			updatelog("Hunter Not Selected")
			mouseclick, l, 360, 815
			random, int, 2000, 2500
			sleep %int%
			mouseclick, l, 170, 970
			updatelog("Trying Again in a Few Seconds...")
			
			random, int, 5000, 6000
			sleep %int%
			
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
				updatelog("Hunter Not Selected")
				mouseclick, l, 360, 815
				random, int, 2000, 2500
				sleep %int%
				mouseclick, l, 170, 970
				updatelog("Skipping Dungeon")
				}
			}
			
		random, int, 30000, 31000
		sleep %int%
		updatelog("Time Remaining: 10 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 9 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 8 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 7 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 6 minutes")
		
			if (D = 1)
			{
			updatelog("Receiving Dungeon Rewards")
			mouseclick, l, 160, 960
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 430, 800
			random, int, 10000, 11000
			sleep %int%
			mouseclick, l, 250, 865
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 160, 970
			
			random, int, 15000, 17500
			sleep %int%
			
			D := 0
			
			}
		
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
			updatelog("Hunter Not Selected")
			mouseclick, l, 360, 815
			random, int, 2000, 2500
			sleep %int%
			mouseclick, l, 170, 970
			updatelog("Trying Again in a Few Seconds...")
			
			random, int, 5000, 6000
			sleep %int%
			
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
				updatelog("Hunter Not Selected")
				mouseclick, l, 360, 815
				random, int, 2000, 2500
				sleep %int%
				mouseclick, l, 170, 970
				updatelog("Skipping Dungeon")
				}
			}
		
		random, int, 35000, 36000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 5 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 4 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 3 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 2 minutes")
		random, int, 60000, 61000
		sleep %int%
		
		updatelog("Time Remaining: 1 minute")
		random, int, 30000, 31000
		sleep %int%
		
		if (D = 1)
			{
			updatelog("Receiving Dungeon Rewards")
			mouseclick, l, 160, 960
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 430, 800
			random, int, 10000, 11000
			sleep %int%
			mouseclick, l, 250, 865
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 160, 970
			
			random, int, 15000, 17500
			sleep %int%
			
			D := 0
			
			}
		
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
			updatelog("Hunter Not Selected")
			mouseclick, l, 360, 815
			random, int, 2000, 2500
			sleep %int%
			mouseclick, l, 170, 970
			updatelog("Trying Again in a Few Seconds...")
			
			random, int, 5000, 6000
			sleep %int%
			
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
				updatelog("Hunter Not Selected")
				mouseclick, l, 360, 815
				random, int, 2000, 2500
				sleep %int%
				mouseclick, l, 170, 970
				updatelog("Skipping Dungeon")
				}
			}
		
		A := 2
		
		}
		
		if(A=2)
		{
		updatelog("Starting Raid")
		random, RaidX, 425, 460
		random, RaidY, 169, 190
		mouseclick, l, %RaidX%, %RaidY%
		
		random, int, 3000, 3500
		sleep %int%
		
		updatelog("Selecting Raid")
		random, selX, 115, 445
		random, selY, 313, 425
		mouseclick, l, %selX%, %selY%
		
		random, int, 3000, 3500
		sleep %int%
		
		random, startX, 115, 254
		random, startY, 834, 873
		mouseclick, l, %startX%, %startY%
		updatelog("Raid Started")
		updatelog("Time Remaining: 11 minutes")
		
		random, int, 45000, 46000
		sleep %int%
		updatelog("Time Remaining: 10 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 9 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 8 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		
		updatelog("Time Remaining: 7 minutes")
		
		random, int, 30000, 31000
		sleep %int%
		
		if (D = 1)
			{
			updatelog("Receiving Dungeon Rewards")
			mouseclick, l, 160, 960
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 430, 800
			random, int, 10000, 11000
			sleep %int%
			mouseclick, l, 250, 865
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 160, 970
			
			random, int, 15000, 17500
			sleep %int%
			
			D := 0
			
			}
		
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
			updatelog("Hunter Not Selected")
			mouseclick, l, 360, 815
			random, int, 2000, 2500
			sleep %int%
			mouseclick, l, 170, 970
			updatelog("Trying Again in a Few Seconds...")
			
			random, int, 5000, 6000
			sleep %int%
			
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
				updatelog("Hunter Not Selected")
				mouseclick, l, 360, 815
				random, int, 2000, 2500
				sleep %int%
				mouseclick, l, 170, 970
				updatelog("Skipping Dungeon")
				}
			}
		
		updatelog("Time Remaining: 6 minutes")
		
		random, int, 30000, 31000
		sleep %int%
		
		updatelog("Time Remaining: 5 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 4 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 3 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 2 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 1 minute")
		
		random, int, 60000, 61000
		sleep %int%
		
			if (D = 1)
			{
			updatelog("Receiving Dungeon Rewards")
			mouseclick, l, 160, 960
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 430, 800
			random, int, 10000, 11000
			sleep %int%
			mouseclick, l, 250, 865
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 160, 970
			
			random, int, 15000, 17500
			sleep %int%
			
			D := 0
			
			}
		
		updatelog("Checking Raid Results")
		random, RaidX, 425, 460
		random, RaidY, 175, 185
		mouseclick, l, %RaidX%, %RaidY%
		
		random, int, 3000, 3500
		sleep %int%
		
		updatelog("Receiving Raid Rewards")
		random, doneX, 220, 330
		random, doneY, 660, 670
		mouseclick, l, %doneX%, %doneY%
		
		random, int, 3000, 3500
		sleep %int%
		
		A := 1
		}
		
		if(B=8)
		{
		updatelog("Waiting for Boss Regen")
		updatelog("Time Remaining: 6 minutes")
		
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
			updatelog("Hunter Not Selected")
			mouseclick, l, 360, 815
			random, int, 2000, 2500
			sleep %int%
			mouseclick, l, 170, 970
			updatelog("Trying Again in a Few Seconds...")
			
			random, int, 5000, 6000
			sleep %int%
			
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
				updatelog("Hunter Not Selected")
				mouseclick, l, 360, 815
				random, int, 2000, 2500
				sleep %int%
				mouseclick, l, 170, 970
				updatelog("Skipping Dungeon")
				}
			}
		
		random, int, 30000, 31000
		sleep %int%
		updatelog("Time Remaining: 5 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 4 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 3 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 2 minute")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 1 minute")
		
		random, int, 30000, 31000
		sleep %int%
		
		if (D = 1)
			{
			updatelog("Receiving Dungeon Rewards")
			mouseclick, l, 160, 960
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 430, 800
			random, int, 10000, 11000
			sleep %int%
			mouseclick, l, 250, 865
			random, int, 2000, 2100
			sleep %int%
			mouseclick, l, 160, 970
			
			random, int, 15000, 17500
			sleep %int%
			
			D := 0
			
			}
		
		random, int, 15000, 16000
		sleep %int%
		
		}
		
		if(B<8)
		{
		updatelog("Starting A_Raid")
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
		
		random, startX, 115, 254
		random, startY, 834, 873
		mouseclick, l, %startX%, %startY%
		updatelog("Raid Started")
		updatelog("Time Remaining: 11 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 10 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 9 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 8 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 7 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 6 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 5 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 4 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 3 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Preventing Screen Saver")
		random, chatX, 427, 530
		random, chatY, 852, 883
		mouseclick, l, %chatX%, %chatY%
		
		updatelog("Time Remaining: 2 minutes")
		
		random, int, 60000, 61000
		sleep %int%
		updatelog("Time Remaining: 1 minute")
		
		random, int, 70000, 71000
		sleep %int%
		
		updatelog("Checking Raid Results")
		random, RaidX, 425, 460
		random, RaidY, 169, 190
		mouseclick, l, %RaidX%, %RaidY%
		
		random, int, 3000, 3500
		sleep %int%
		
		updatelog("Receiving Raid Rewards")
		random, doneX, 200, 350
		random, doneY, 640, 680
		mouseclick, l, %doneX%, %doneY%
		
		random, int, 3000, 3500
		sleep %int%
		
		B := B + 1
		TC := TC + 0.25
		
		}
		
		
		TC := TC + 0.5
		BC := BC + 1
		RC := RC + 1
		
		updatelog("Macro has been running for " TC " hours")
		updatelog("Boss Count: " BC)
		updatelog("Raid Count: " RC)
	}
	
}

A1:
{
	A:=1
	updatelog("Starting with Boss")
}

return

A2:
{
	A:=2
	updatelog("Starting with Raid")
}

return

B1:
{
	if(B=8)
	{
		updatelog("Remaining A_Raid Count Set to 8")
		B := 0
	return
	}
	
	if(B=7)
	{
		updatelog("Remaining A_Raid Count Set to 0")
		B := 8
	return
	}
	
	if(B=6)
	{
		updatelog("Remaining A_Raid Count Set to 1")
		B := 7
	return
	}
	
	if(B=5)
	{
		updatelog("Remaining A_Raid Count Set to 2")
		B := 6
	return
	}
	
	if(B=4)
	{
		updatelog("Remaining A_Raid Count Set to 3")
		B := 5
	return
	}
	
	if(B=3)
	{
		updatelog("Remaining A_Raid Count Set to 4")
		B := 4
	return
	}
	
	if(B=2)
	{
		updatelog("Remaining A_Raid Count Set to 5")
		B := 3
	return
	}
	
	if(B=1)
	{
		updatelog("Remaining A_Raid Count Set to 6")
		B := 2
	return
	}
	
	if(B=0)
	{
		updatelog("Remaining A_Raid Count Set to 7")
		B := 1
	return
	}
	
}

return

ESC::ExitApp

return


updatelog("Changing Difficulty Level to T3B3")
		random, DiffX, 30, 70
		random, DiffY, 70, 105
		mouseclick, l, %DiffX%, %DiffY%
		
		random, int, 3000, 3500
		sleep %int%
		
		random, LevelX, 369, 465
		random, LevelY, 632, 647
		mouseclick, l, %LevelX%, %LevelY%
		
		random, int, 3000, 3500
		sleep %int%
		
		random, ModeX, 111, 444										----
		random, ModeY, 505, 530
		mouseclick, l, %ModeX%, %ModeY%
		
		random, int, 3000, 3500
		sleep %int%
		
		random, ConfX, 125, 265
		random, ConfY, 808, 855
		mouseclick, l, %ConfX%, %ConfY%
		
		random, int, 3000, 3500
		sleep %int%
		
		random, ConffX, 140, 250
		random, ConffY, 606, 645
		mouseclick, l, %ConffX%, %ConffY%
		updatelog("Difficulty Set to T3B2")
		
		random, int, 3000, 3500
		sleep %int%
		
		
		
updatelog("Checking Raid Boost")
		random, boostX, 235, 248
		random, boostY, 260, 272
		mouseclick, l, %boostX%, %boostY%
		
		random, int, 3000, 3500
		sleep %int%
		

