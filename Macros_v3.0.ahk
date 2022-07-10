#SingleInstance
#NoEnv
SendMode Input

; press F12 to begin a macro
; press ESC to cancel

F12::
Send, {enter}
Input, UserInput, L10 T5 V, {esc}, smol,vet,map,ad,voice,pre,meta,ley,bosses,kill,port,champ,sw,mist,ext,bridge,escort,grif,fail,sele,desc, ad2
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

      case "smol","vet":  Send Tag once and follow, 1 hit on 1 mob is enough for a key{!} Last 5 people finish the event, ty.
      case "map":         Send This map is organized by the [fast] farming community. Follow my tag for keyfarm, meta and champtrain{!}
      case "ad":          Send The EU Farming Community [fast] is looking for new farmers and commanders{!} Join our discord server for daily farmtrains: discord.gg/PTCp2tC
      case "voice":       Send We're on voice, join us: discord.gg/PTCp2tC If you have any questions, feel free to ask on Discord or in squad chat.
      case "pre":         Send Pre-meta time, split up and tag as many events as you can, each gives one key: [{&}BOYLAAA=][{&}BNELAAA=][{&}BNILAAA=]
      case "meta":        Send Follow my tag during meta, split only for bosses. Use Dragonblood Spears off-cooldown on weakpoints and bosses. Shrines are free waypoints even in combat, don't wait to be revived{!}
      case "ley":         Send Don't use this ley-line, follow tag{!}
      case "bosses":      Send Split for the bosses now, Matri SW shrine | Hydra SE shrine | Wrath NW shrine 
      case "kill","port": Send KILL and port to SE shrine (Melandru), use portal, skyscale or tornado
      case "champ":       Send Follow my tag for champtrain, we will kill all of them. Use embers or EMP on breakbars.
      case "sw":          Send Beetle uphill or SW shrine if you have griffon
      case "mist":        Send Mistborn farm now, use shrines and follow markers, NW motes are already harvested{!}
      case "ext":         Send Extended mistborn farm, go to NW shrine again and follow new markers
      case "bridge":      Send Do first bridge events in BF and Melandru, then stack on tag. Hand in 1 part = key
      case "escort":      Send Please do not start any escort events, we will do them one by one. Follow the squad and get loot from all three{!}
      case "grif":        Send Don't have a griffon? You can still reach all champs in time with this guide: https://youtu.be/9iUlzRGW6xU (copy from squad message)
      case "fail":	  Send Sick of failed metas, slow champtrains and never having enough keys? Join the EU Farming Community for smooth Dragonfall runs and more: discord.gg/PTCp2tC
      case "sele":	  Send [{&}BOYLAAA=] if you have tube mastery from LWS3, otherwise NW shrine
      case "desc":	  Send Welcome to the DF farmtrain. We focus on maximizing our profit, so sit back and enjoy{!} {enter}{enter}Sick of failed metas, slow champtrains and never having enough keys? Join the EU Farming Community for smooth Dragonfall runs and more: discord.gg/PTCp2tC
      case "ad2":	  Send Interested in efficient gold-farming? Join our [fast] discord server for regular farmtrains: https://discord.gg/PTCp2tC
    }
  Sleep 50 
  Send {enter}
  return
}
