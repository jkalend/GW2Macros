#SingleInstance
#NoEnv
SendMode Input

; press F12 to begin a macro
; press ESC to cancel

F12::
Send, {enter}
Input, UserInput, L10 T5 V, {esc}, smol,vet,map,ad,voice,emp,pre,meta,bosses,kill,champ,sw,ext,bridge,escort,sick,ass,tube,new,se,bull,boom,orga,car,claw,guide,split,breath,mid,pull,dead,phal,cannons,skrim,base,vlox,petr,fort,defi,port,casc,lead,light,mela,uwu,bf,handin,desc
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

	; general
      case "ad":          Send Interested in [fast] & efficient gold-farming? Visit fast.farming-community.eu for guides, tons of data and quality farmtrains. Discord: PTCp2tC
      case "voice":       Send We're on voice, join us: discord.gg/PTCp2tC If you have any questions, feel free to ask on Discord or in squad chat.
      case "new":         Send Did you come here just for achievements? Clueless? Broke af? Check out fast.farming-community.eu for guides and high-end farmtrains!
      case "orga":        Send The [fast] farming community is doing an organized farm on this map. If you're planning on doing events yourself, please join us so we all get to tag them{!}
      case "tag":         Send Go easy on damage, mobs are way too squishy. Basic attacks and light AoE are sufficient. DO NOT use mount engage skills
      case "emp":         Send Waystation on marker - refresh your EMPs

	; dragonfall

      case "mela":        Send [{&}BNILAAA=]
      case "uwu":         Send [{&}BNELAAA=]
      case "bf":          Send [{&}BOYLAAA=]
      case "smol","vet":  Send Tag once and follow, 1 hit on 1 mob is enough for a key{!} Last 5 people finish the event, ty.
      case "handin":      Send Go back to camp and hand in. Try to be as fast as possible to have as few people in the event area to not upscale it so that we can finish it quickly in one go.
      case "map":         Send This map is organized by the [fast] farming community. Follow my tag for keyfarm, meta and champtrain{!}
      case "pre":         Send Pre-meta time, split up evenly across the 12 events please. Do not follow tag. 
      case "meta":        Send Follow my tag during meta, split only for bosses. Use [{&}BlbZAAA=] off-cooldown on weakpoints and bosses (PLEASE). Shrines are free waypoints even in combat, don't wait to be revived{!}
      case "bosses":      Send If you have CC, go Wrath (NW), if you can dodge, go Hydra (SE), if you have brain go Matri (SW). THEY NEED TO DIE AT THE SAME TIME{!}
      case "kill":        Send KILL and port FAST to SE shrine (Melandru), use portal, skyscale or tornado
      case "champ":       Send Follow my tag for champtrain, we will kill all of them. Use 5 EMPs on the first 5 bosses, then unload leftover [{&}BlbZAAA=]
      case "sw":          Send SW shrine even if you dont have griffon its faster than beetling.     
      case "ext":         Send Extended mistborn farm, go to NW shrine again and follow new markers.
      case "bridge":      Send Do first bridge events in BF and Melandru, then go to melandru escort. Hand in 1 part = participation = key.
      case "escort":      Send When ready please trigger All escorts.
      case "sick":	  Send Sick of pug metas? Runs too slow? Want to become a master farmer? Never enough keys? Join the EU Farming Community for smooth Dragonfall runs and more: discord.gg/PTCp2tC
      case "se":          Send SE shrine, take oakhearts essence and jump up or follow the crowd to a jackal portal behind the rock.
      case "ass":         Send Take embers in camp and if you know the rotation please detour a bit between events to destroy assemblers/turrets, ty.
      case "tube":        Send If you have tube mastery go to [{&}BOYLAAA=] or NW shrine if you dont.
      case "desc":	  Send Welcome to the DF farmtrain. We focus on maximizing our profit, so sit back and enjoy{!} {enter}{enter}Sick of failed metas, slow champtrains and never having enough keys? Join the EU Farming Community for smooth Dragonfall runs and more: discord.gg/PTCp2tC

	; drizzlewood

      case "base":        Send Go base [{&}BGQMAAA=]
      case "vlox":        Send Paradrop to [{&}BF4MAAA=] (click on blue{/}red icon and select the camp name)
      case "petr":        Send Paradrop to [{&}BFcMAAA=] (click on blue{/}red icon and select the camp name)
      case "fort","defi": Send Paradrop to [{&}BE8MAAA=] (click on blue{/}red icon and select the camp name)       
      case "port","casc": Send Paradrop to [{&}BFYMAAA=] (click on blue{/}red icon and select the camp name)
      case "lead":        Send Paradrop to [{&}BFIMAAA=] (click on blue{/}red icon and select the camp name)
      case "light":       Send Paradrop to [{&}BGMMAAA=] (click on blue{/}red icon and select the camp name)

      case "guide":       Send There is an amazing Drizzlewood guide at fast.farming-community.eu Make sure to watch it if you havent yet
      case "bull":        Send Stack tightly with the bull at all times to ensure proper scaling
      case "skirm":       Send Split for skirmishes, dont rely on sword markers. Dont follow me for this event
      case "cannons":     Send DON'T BURST CANNONS, DO ONE AT A TIME. Large mob waves spawn periodically - lots of claws and commendations
      case "boom":        Send Waystation on marker - take remote charges and use on structures
      case "split":       Send Split evenly across the 4 territories and complete the events in them. Kill the tribune and then loot remaining chests. 
      case "phal":        Send Go around and behind the phalanx - attacking from behind does normal damage and doesn't CC you
      case "car":         Send Interact with a Charr car but DO NOT enter it yet. Wait until enough people get to them and then enter them. If you can give quickness to people in cars please do so.
      case "pull":        Send Pull the 2 other champs to the middle one for cleave. When they come, stack on the shaman as it's ranged and the others are melee
      case "claw":        Send A few competent people please go down to prepare to CC Claw of Jormag while it is downscaled. The rest will wait up here with me and come down when its CCd
      case "mid":         Send Stack in the middle. This way your AoEs hit the chest and cleave both its claws, doubling or tripling your damage. Use your dodges, you always have enough
      case "dead":        Send DO NOT LIE AROUND BEING FULL DEAD. Paradrop and come in at [{&}BHsMAAA=] 
      case "breath":      Send Standing under chest during breath {=} you don't get pushed back






  

	
    }
  Sleep 50 
  Send {enter}
  return
}
