#SingleInstance
#NoEnv
SendMode Input

; press F12 to begin a macro
; press ESC to cancel

F12::
Send, {enter}
Input, UserInput, L10 T5 V, {esc}, north,east,west,south,chak,tarir,meta,ad,desc,map,voice
if (ErrorLevel = "Max")			; cancel if input is longer than L characters
{
  Send {esc}
  return
}
else if (ErrorLevel = "Timeout")	; cancel if inactive for T seconds
{
  Send {esc}
  return
}
else if (ErrorLevel = "NewInput")	; stops the macro if it's interrupted by another script
{
  return
}
else if InStr(ErrorLevel, "EndKey:")  	; makes ESC actually work as an end key
{
  Send {esc}
  return
}
else {
  Send {backspace 10}
  Sleep 50
  switch UserInput
    {

; here you can change the actual text of the macro and create new ones, just copy the lines
; you can as many keywords as you want for the same message, separated by a comma
; if you change a keyword, don't forget to also change it in the matchlist on line 10!
; certain symbols like ! or & need to be enclosed in {} otherwise they can fuck up the script!


      case "map":         Send This map is organized by the [fast] farming community. Follow my tag for keyfarm, meta and champtrain{!}
      case "ad":          Send The EU Farming Community [fast] is looking for new farmers{!} Join our discord server for daily farmtrains: discord.gg/PTCp2tC
      case "voice":       Send We're on voice, join us: discord.gg/PTCp2tC If you have any questions, feel free to ask on Discord or in squad chat.
      case "meta":        Send Split somewhat equally across the 4 octovines and as usual kill them all at once{!}
      case "desc":	  Send Welcome to the AB farmtrain. We focus on maximizing our profit, so sit back and enjoy{!} {enter}{enter}The EU Farming Community [fast] is looking for new farmers{!} Join our discord server for daily farmtrains: discord.gg/PTCp2tC
      case "north":	  Send [{&}BN0HAAA=]oopsienorthsie
      case "south":	  Send [{&}BAIIAAA=]=UwU=
      case "west":	  Send [{&}BAYIAAA=]woaaaah
      case "east":	  Send [{&}BGwIAAA=]weeeeeeeeee
      case "tarir":	  Send [{&}BMYHAAA=]shiny looties
      case "chak":	  Send [{&}BEkIAAA=]rooooaaaar
    }
  Sleep 50 
  Send {enter}
  return
}
