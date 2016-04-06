-- Name: Online RPG
-- Description: Online Scenario, Not for regular play - No Victory/No End. For use with role playing. Best for HTTPServer & Dedicated Server. 

function init()
    -- Player ships will be spawned by httpserver. Do not spawn in this script.
    
    -- Human Navy
    SpaceStation():setTemplate("Huge Station"):setFaction("Human Navy"):setCallSign("HN-DS7"):setPosition(169718, 89695)
    SpaceStation():setTemplate("Huge Station"):setFaction("Human Navy"):setCallSign("HN-DS8"):setPosition(2315, -10410)
    SpaceStation():setTemplate("Small Station"):setFaction("Human Navy"):setCallSign("HN-DS60"):setPosition(102210, -17981)
    SpaceStation():setTemplate("Small Station"):setFaction("Human Navy"):setCallSign("HN-DS61"):setPosition(79497, 29758)
    SpaceStation():setTemplate("Small Station"):setFaction("Human Navy"):setCallSign("HN-DS62"):setPosition(18508, 77287)
    
    WarpJammer():setFaction("Human Navy"):setPosition(-38905, -21346)
    WarpJammer():setFaction("Human Navy"):setPosition(-37433, -27865)
    WarpJammer():setFaction("Human Navy"):setPosition(-34068, -33333)
    WarpJammer():setFaction("Human Navy"):setPosition(-28810, -37960)
    WarpJammer():setFaction("Human Navy"):setPosition(-23342, -40904)
    WarpJammer():setFaction("Human Navy"):setPosition(-16823, -43218)
    WarpJammer():setFaction("Human Navy"):setPosition(-9673, -43218)
    WarpJammer():setFaction("Human Navy"):setPosition(-37854, -11882)
    WarpJammer():setFaction("Human Navy"):setPosition(161726, 76656)
    WarpJammer():setFaction("Human Navy"):setPosition(157940, 80862)
    WarpJammer():setFaction("Human Navy"):setPosition(156258, 85910)
    WarpJammer():setFaction("Human Navy"):setPosition(155837, 89905)
    WarpJammer():setFaction("Human Navy"):setPosition(166142, 73712)
    WarpJammer():setFaction("Human Navy"):setPosition(155837, 95163)
    
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX017"):setPosition(3997, -12303):orderDefendLocation(3787, -19874)
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX022"):setPosition(1, -9359):orderDefendLocation(-209, -16930)
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX054"):setPosition(104733, -17771):orderDefendLocation(104733, -17771)
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX028"):setPosition(81810, 28917):orderDefendLocation(81810, 28917)
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX210"):setPosition(173082, 84017):orderDefendLocation(173082, 84017)
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX067"):setPosition(166563, 85699):orderDefendLocation(166563, 85699)
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX006"):setPosition(164880, 92429):orderDefendLocation(164880, 92429)
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX112"):setPosition(173713, 94111):orderDefendLocation(173713, 94111)
    CpuShip():setFaction("Human Navy"):setTemplate("Fighter"):setCallSign("FX287"):setPosition(15985, 74553):orderDefendLocation(15985, 74553)
    
    -- Nebuli
    Nebula():setPosition(-89378, -76025)
    Nebula():setPosition(-94215, -68665)
    Nebula():setPosition(-100735, -64038)
    Nebula():setPosition(-105572, -55415)
    Nebula():setPosition(-97790, -56677)
    Nebula():setPosition(-92322, -62355)
    Nebula():setPosition(-87696, -69085)
    Nebula():setPosition(-166981, -32282)
    Nebula():setPosition(-161092, -37119)
    Nebula():setPosition(-154152, -42166)
    Nebula():setPosition(-148895, -49317)
    Nebula():setPosition(-156466, -49527)
    Nebula():setPosition(-162985, -42797)
    Nebula():setPosition(-170766, -38381)
    Nebula():setPosition(-171187, -47634)
    Nebula():setPosition(-163826, -52050)
    Nebula():setPosition(-27338, -16088)
    Nebula():setPosition(-30703, -8728)
    Nebula():setPosition(90222, 27234)
    Nebula():setPosition(-132070, 67613)
    Nebula():setPosition(-124079, 70978)
    Nebula():setPosition(-126392, 64248)
    Nebula():setPosition(-142165, 64458)
    Nebula():setPosition(-134804, 60252)
    Nebula():setPosition(-108095, 21977)
    Nebula():setPosition(72767, -44480)
    Nebula():setPosition(7783, -86751)
    Nebula():setPosition(27131, 84017)
    Nebula():setPosition(-2733, -35647)
    
    -- Mines
    Mine():setPosition(-17664, -21346)
    Mine():setPosition(-17664, -19874)
    Mine():setPosition(-17664, -18191)
    Mine():setPosition(-17664, -16719)
    Mine():setPosition(-17664, -15037)
    Mine():setPosition(-19767, -21977)
    Mine():setPosition(-19978, -20505)
    Mine():setPosition(-19978, -19033)
    Mine():setPosition(-20188, -16930)
    Mine():setPosition(-20188, -15457)
    Mine():setPosition(-20188, -17771)
    Mine():setPosition(-14930, -30389)
    Mine():setPosition(-12407, -30179)
    Mine():setPosition(-9883, -30179)
    Mine():setPosition(-7570, -30179)
    Mine():setPosition(-131229, -52892)
    Mine():setPosition(-129757, -54364)
    Mine():setPosition(-127864, -55415)
    Mine():setPosition(-125761, -55836)
    
    --Blackholes & Wormholes
    BlackHole():setPosition(-106623, -1157)
    WormHole():setPosition(-10724, -15878):setTargetPosition(137120, 63197)
    WormHole():setPosition(137331, 55626):setTargetPosition(-2733, -22187)


    -- Independent
    SpaceStation():setTemplate("Medium Station"):setFaction("Independent"):setCallSign("IS86"):setPosition(147425, -86540)
    SpaceStation():setTemplate("Medium Station"):setFaction("Independent"):setCallSign("IS87"):setPosition(72557, -93270)
    CpuShip():setFaction("Independent"):setTemplate("Transport4x4"):setCallSign("ET21"):setPosition(72557, -89695):orderRoaming()
    CpuShip():setFaction("Independent"):setTemplate("Transport5x5"):setCallSign("CV12"):setPosition(153734, -86330):orderRoaming()

    -- Helper scripts
    
    
    
    
    -- Setup variables
    
      --Keep Track of what's happened/happening
      currentmission=-1
      lastmission=-1
      missioncomplete=-1
      currenttime=0
      lastmissionstarttime=0
      
      
    
    -- Constants, do not change except to add new features
    maxmissions=10
    enemyrangewarning=5000
    underattackmessage= "Mayday! Mayday! \n We are under attack! Please assist!"
    newmissionstarttime=30
    
end

function spawn_enemies(delta)


end

function spawn_friendlies(delta)


end

function spawn_independants(delta)

end



function chooserandommission(delta)
  missionnumber=random(0, maxmissions)
  if missionnumber == currentmission then
    missionnumber=random(0, maxmissions)
  fi
  if missionnumber == lastmission then
    -- Try again with a random number as it was the same as last time, if the same this time, it is ok.
    missionnumber=random(0, maxmissions)
  end
  -- update trackers
  lastmission=currentmission
  currentmission=missionnumber
  print("Current Mission is number: ".. currentmission)
  if missionnumber == 0 then
    Script():run("online_scenario_quiet_1.lua")
  else if missionnumber == 1 then
    Script():run("online_scenario_vip_1.lua")
  else if missionnumber == 2 then
    Script():run("online_scenario_kraylorattack_1.lua")
  else if missionnumber == 3 then
    Script():run("online_scenario_delivery_1.lua")
  else if missionnumber == 4 then
    Script():run("online_scenario_research_1.lua")
  else if missionnumber == 5 then
    Script():run("online_scenario_spy_1.lua")
  else if missionnumber == 6 then
    Script():run("online_scenario_ghostattack_1.lua")
  else if missionnumber == 7 then
    Script():run("online_scenario_diplomatic_1.lua")
  else if missionnumber == 8 then
    Script():run("online_scenario_stolentech_1.lua")
  else if missionnumber == 9 then
    Script():run("online_scenario_traitor_1.lua")
  else if missionnumber == 10 then
    Script():run("online_scenario_escort_1.lua")
  -- Add new missions here (change maxmissions value)
  else
    Script():run("online_scenario_quiet_1.lua")
  end
  
end


function startmission(delta)
  lastmissionstarttime=currenttime
  curplayercount = getPlayerShip(-1)
  if curplayercount != nil then
    if missioncomplete == 1 then
      -- Start a new mission, since there is a player ship
      print("Choosing Mission...")
      chooserandommission(delta)
    end
  else
    print("No player ships, not starting mission")
  end
end

function setenemiesidle(delta)
  -- Setting all enemies idle so they won't attack unless they are too close to a enemy

end

function update(delta)
  -- Do not put victory in this script or any child scripts!
  -- The server should always be running.
  
  --Keeping track of time
  currenttime=currenttime + delta
  
  -- If 2 minutes after start, begin mission
  if currenttime == (60 * 2)  then 
    startmission()
  end
  
  -- Every 30 minutes (give or take) start new scenario
  if missioncomplete == 1 then
    if currenttime == (lastmissionstarttime + (60 * newmissionstarttime))  then 
      startmission()
    end
  end
  
  -- check for playership creation time and see if it moved in 90 seconds
  -- If not, destroy()
  -- Need to handle empty ships for disconnections
  playercount = getPlayerShip(-1)
  if playercount == nil then
    -- Pause 
  else 
    -- Don't pause/Unpause
  end
  
  
end