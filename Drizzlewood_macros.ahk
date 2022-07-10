#SingleInstance
#NoEnv
SendMode Input

/*[How-To]
To use: The trigger key is F6, when you press it AHK will start parsing what you type. 
Press enter in-game and type whatever keyword, the script will then replace it with the appropriate text. 
You can change the keywords to something shorter if you want, but try not to mess with the actual script unless you know what you're doing or youll break it.
The ESC key is your cancel key.

Made by Arkaria
*/

F6::
SEND, {enter}
Input, UserInput, L10 T25 V, {esc}, tag,emp,charge,loot,follow,bull,orga,discord,stack,wait,base,vloxen,petraj,defiance,cascadia,leadfoot,lighthouse
if (ErrorLevel = "Max")
{	
	MsgBox, You have entered a variable the exceeds the maximum length of text and does not match anything on the list of triggers thus terminating the input.
	return
}
if (ErrorLevel = "Timeout")
{
	MsgBox, You have entered %UserInput%, at which point the input timed out.
	return
}
if (ErrorLevel = "NewInput")
	return
If InStr(ErrorLevel, "EndKey:")
{
	MsgBox, You entered "%UserInput%" and terminated the input with %ErrorLevel%.
	return
}


if (UserInput = "tag")
{
	Send, {backspace 3}
	Sleep, 50
	SEND, Go easy on damage, mobs are way too squishy. Basic attacks and light AoE are sufficient. DO NOT use mount engage skills.
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "emp")
{
	Send, {backspace 3}
	Sleep, 50
	SEND, Waystation on marker - refresh your EMPs
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "charge")
{
	Send, {backspace 6}
	Sleep, 50
	SEND, Waystation on marker - take remote charges and use on structures
	Sleep, 50 
	SEND, {enter}
}


else if (UserInput = "loot")
{
	Send, {backspace 4}
	Sleep, 50
	SEND, Make sure to loot the Keep Lord's chest
	Sleep, 50
	SEND, {enter}
}

else if (UserInput = "follow")
{
	Send, {backspace 6}
	Sleep, 50
	SEND, Stick to the tag. Splitting makes you and everyone else lose loot.
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "bull")
{
	Send, {backspace 4}
	Sleep, 50
	SEND, Stack tightly with the bull at all times to ensure proper scaling
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "orga")
{
	Send, {backspace 4}
	Sleep, 50
	SEND, The [fast] farming community is doing an organized farm on this map. If you're planning on doing events yourself, please join us so we all get to tag them{!}
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "discord")
{
	Send, {backspace 7}
	Sleep, 50
	SEND, The [fast] Farming Community is looking for new farmers and commanders{!} Join our discord server for daily farmtrains, loot spreadsheets and more{:} discord.gg/PTCp2tC
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "stack")
{
	Send, {backspace 5}
	Sleep, 50
	SEND, Stack on the arrow marker. Don't stand near me, I'm giving swiftness{/}superspeed to the NPC{;} if you're nearby, the boons prioritize you and slow the event down.
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "wait")
{
	Send, {backspace 4}
	Sleep, 50
	SEND, Do NOT kill, wait for everyone to come and scale the event.
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "base")
{
	Send, {backspace 4}
	Sleep, 50
	SEND, [{&}BGQMAAA=]
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "vloxen")
{
	Send, {backspace 6}
	Sleep, 50
	SEND, Paradrop to [{&}BF4MAAA=] (click on blue{/}red icon and select the camp name)
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "petraj")
{
	Send, {backspace 6}
	Sleep, 50
	SEND, Paradrop to [{&}BFcMAAA=] (click on blue{/}red icon and select the camp name)
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "defiance")
{
	Send, {backspace 8}
	Sleep, 50
	SEND, Paradrop to [{&}BE8MAAA=] (click on blue{/}red icon and select the camp name)
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "cascadia")
{
	Send, {backspace 8}
	Sleep, 50
	SEND, Paradrop to [{&}BFYMAAA=] (click on blue{/}red icon and select the camp name)
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "leadfoot")
{
	Send, {backspace 8}
	Sleep, 50
	SEND, Paradrop to [{&}BFIMAAA=] (click on blue{/}red icon and select the camp name)
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "lighthouse")
{
	Send, {backspace 10}
	Sleep, 50
	SEND, Paradrop to [{&}BGMMAAA=] (click on blue{/}red icon and select the camp name)
	Sleep, 50 
	SEND, {enter}
}
Return