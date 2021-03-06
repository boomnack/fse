local _, _, runOnLoad = ...

local kingAthens, kingAthensNum = getEntity("kingathens")
local player = getEntity('player')

if runOnLoad then
  if vars.SOKevent == 1 then
    addEventFromFile('throneroom.lua')
  else
    return
  end
end

if vars.SOKevent == 0 then
  removeEntity(kingAthensNum) --Make a similar function to disable the character from the game
  
elseif vars.SOKevent == 2 then
  player.input = false -- Prevent the player from moving.
  talk("King: What!")
  talk("King: ...")
  talk("King: So, you survived after all I see.")
  talk("King: We were unsure of what happened after the burst of light.")
  talk("King: You just seemed to vanish into thin air.")
  talk("Player: I don't know what happened either.")
  talk("King: Interesting, so there is more to you than I thought.")
  talk("King: You could be useful.")
  talk("King: I have an idea.")
  talk("King: This crown I am wearing is not, in fact, my normal crown.")
  talk("King: The crown that had been in my family for generations has been stolen by an evil wizard.")
  talk("King: Every man I have sent out to retrieve it has failed.")
  talk("King: You, however, may just be able to accomplish this.")
  talk("King: If you are successful in obtaining my crown, I'll excuse you of your crime.")
  talk("Player: Well, if the alternative is execution, I might as well try.")
  talk("King: That's the spirit. Now, go and see commander Alexander in the guardhouse behind me for the details.")
  vars.SOKevent = 3
  player.input = true

elseif vars.SOKevent == 3 then
  talk("King: Alexander is the head of the guards here at our castle.")

elseif vars.gotCrown then
  -- If the player has retrieved the crown, they won the game.
  player.input = false
  talk("King: Do you have my crown?")
  talk("Player: It wasn't easy, but I managed to get it.")
  talk("King: Splendid! Now, for your act of service to the nation, you are hearby pardoned of all crimes.")
  sleep(0.1)
  wonGame()

elseif vars.SOKevent > 3 then
  talk("King: Get me my crown!")

--[[
elseif vars.SOKevent == 8 then
  talk("King: Lets get going shall we!")
  teleport("H'atahaCastle", x/4, y/4)
  talk("Announcer: King Taha of H'ataha")
  talk("Announcer: King Vad of Deves") 
  talk("Announcer: King Fowlin of Irsil")
  talk("Announcer: and King Athens of Adoom have all arrived")
  talk("Announcer: And so begins the 34th Summit of Kings!")
  talk("King Taha: Gentlemen! I shall start this evening with my opening remarks.")
  talk("King Taha: As you all know, our great kingdoms have now been at peace for a long time.")
  talk("King Taha: With this peace, we have managed to grow as kingdoms and now we sit here today as comrads.")
  fadeout(0.1)
  sleep(0.1)
  fadein(0.1)
  --Masked figure appears on round table
  talk("King Taha: We....") --Taha falls down and is persumed dead alongside his royal guards
  fadeout(0.1)
  sleep(0.1)
  fadein(0.1)
  --Masked figure disappears
  --H'ataha Castle guards run in
  local _, kingVadNum = getEntity("KingVad")
  local _, kingFowlin = getEntity("KingFowlin")
  
  talk("H'ataha Guard: What is the meaning of this?")
  talk("King Fowlin: A masked figure appeared out of no where and assassinated King Taha!")
  talk("H'ataha Guard: You expect us to believe that!")
  talk("H'ataha Guard: That a man appeared out of no where in the worlds most secured meeting and murdered our king.")
  talk("H'ataha Guard: I see now, this was a organized attack by all of your kingdoms against ours!")
  talk("H'ataha Guard: By the honour of king Taha, you are all uder arrest!")
  talk("King Vad: How disrespectful, you should all know your place.")
  talk("King Vad: This meeting was a bore anyway.")
  removeEntity(kingVadNum)
  talk("King Fowlin: Athens! you and your men should leave while you can, this situation is about to get messy.")
  removeEntity(kingFowlinNum)
  talk("King: Show me what you can do and get us out of here.")
  --player escorts king athens back to Adoom
  talk("King: Good work, I knew I could count on you.")
  talk("King: Now go and try and find out more about this masked figure while we start defensive preparations.")
  talk("King: Report your finding back to Alexander.")
  talk("Quest Received: Find out more about masked man.")
  SOKevent = 9
elseif vars.SOKevent == 9 then
  talk("King: How goes your findings?")
  --during this event you get ambushed by the masked figure at any time and the screen fades out and when it fades back in your at the cemetery.
  --where you find Fatal.
elseif vars.SOKevent == 12 then
  removeEntity(kingAthensNum)
--]]
end
