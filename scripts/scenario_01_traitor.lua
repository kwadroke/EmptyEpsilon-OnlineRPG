-- Name: Traitor
-- Description: A Traitor has stolen experimental technology and is threating Naval vessels. Destroy the traitor. (A standalone piece of the Online RPG) (Requires change to factionInfo.lua)


-- type: Destroy Enemies
-- notes: A "friendly" ship destroys another friendly. You must destroy the traitor ship. They will run and you must chase. Traitors will try to convince you to change sides.
-- at end of mission: gain rep, +1 to mines

--Create traitor faction (add to factionInfo.lua)
--[[
traitors = FactionInfo():setName("Traitors")
traitors:setGMColor(255, 128, 128)
traitors:setDescription("Traitors to the Human Navy. They have stolen naval ships and attack friendly targets; both Human and Independent.")
traitors:setEnemy(human)
traitors:setEnemy(neutral)
]]


function init()
  --housekeeping
  prevturntime=0.0
  enemyrange=1000
  missionend=0
  missionstart=0
  traitortime=0.0 --keep track of running times
  traitordiscovered=0
  status=0

  reppoints=300 -- award for successful mission

  for n=1,100 do
    Asteroid():setPosition(random(-50000, 50000), random(-50000, 50000)):setSize(random(100, 500))
		VisualAsteroid():setPosition(random(-50000, 50000), random(-50000, 50000)):setSize(random(100, 500))
  end

  for n=1,10 do
  	Nebula():setPosition(random(-45000, 50000), random(-50000, 45000))
  end
  
  BlackHole():setPosition(random(-65000, 50000), random(-50000, 65000))

  commandstationname="Quadrant Command"  
  station = SpaceStation():setTemplate("Huge Station"):setFaction("Human Navy"):setPosition(random(-30000, 30000), random(-30000, 30000)):setCallSign(commandstationname)

  player = PlayerSpaceship():setFaction("Human Navy"):setShipTemplate("Player Cruiser"):setWarpDrive(1):setJumpDrive(1)
 
  for n=1,random(3,5) do
    CpuShip():setFaction("Independent"):setTemplate('Transport2x2'):setRotation(0):setPosition(random(-15000, 15000), random(-15000, 15000)):orderRoaming() 
  end
 
  for n=1,random(3,5) do
  CpuShip():setFaction("Human Navy"):setTemplate('Fighter'):setRotation(0):setPosition(random(-15000, 15000), random(-15000, 15000)):orderDefendTarget(station)
 end
 

  
  
  -- make the names & ranks random for better replay value
  
  
  
  TraitorShip = {
    "Kalima",
    "Tri-night",
    "Norton",
    "Bornwell",
    "Morial"
  }
  
  ShipNames = {
    "Kartalla",
    "Centaur",
    "SenSatin",
    "Tarta",
    "Minnifist"
  }
  
  vipnames = {
    "Rabkca",
    "Olos",
    "Dillenger",
    "Frankfurt",
    "BrownBear"
  }
  
  viprank = {
  "Admiral",
  "Commodore",
  "Captain",
  "Commander",
  "Lt Cmdr"
  }
  
  traitordisguise= {
  "Human Navy",
  "Independent"
  }
  
  vipshipname="Centaur" --ShipNames[random(1,5)]
  vipname="Rabkca" --vipnames[random(1,5)]
  viprank="Commodore" --viprank[random(1,5)]
  traitorshipname="Kalima" --TraitorShip[random(1,5)]
  tratorshiptype="Cruiser"
  
  -- Randomly select disguise
  if random(1,2) == 1 then
    traitordisguisefaction="Human Navy"
    traitordisguisetemplate="Fighter"
  else
    traitordisguisefaction="Independent"
    traitordisguisetemplate="Transport2x2"
  end
  
  -- game will set name for now (we want it to be "hidden in plain sight")
  traitorship=CpuShip():setFaction(traitordisguisefaction):setTemplate(traitordisguisetemplate):setPosition(random(-25000, 25000), random(-25000, 25000)):orderRoaming()
  print(traitorship:getCallSign()) --Show on server console for debugging (no fair looking)
end


function startmission()
  startmissioncomm = "We have just received information about a plot against the Navy.\nThe crew of the ".. traitorshipname .." has destroyed the ship ".. vipshipname .." that had " .. viprank .. " " .. vipname .. " aboard during an important mission and had new experimental technology on board. This tech can make a ship appear as another, both on sensors and visually. The ".. traitorshipname .." has stolen this hardware. They are now labeled Traitors to the Navy. Independents were attacked as well. Protect the Indepenents and especially our vessels.\nThey are faking their transponder signal. Get within 3u to properly discover their true signal.\nYou must destroy the " .. traitorshipname .. ". This is an Order."
  station:sendCommsMessage(getPlayerShip(-1), startmissioncomm)
  traitorship:setFaction("Traitors")
  status=0  --Just in case
end


function update(delta)
  if (missionend == 0) and (missionstart==0) and (traitortime >= random(20.0, 35.0)) then
    startmission()
    missionstart=1
  end
  if station:isValid() then
  
  else
    -- Spawn a new station
    station = SpaceStation():setTemplate("Small Station"):setFaction("Human Navy"):setPosition(random(-30000, 30000), random(-30000, 30000)):setCallSign(commandstationname)
    missioncommnewstation = player:getCallSign() .. ", our base was destroyed by the traitors. We have deployed another station in the area.\nYou will not be receiving any additional Rep for mission completion." 
    station:sendCommsMessage(getPlayerShip(-1), missioncommnewstation)
    reppoints=0
  end
  
  
  if (traitorship:isValid()) then
    --traitor is still alive
    traitortime=traitortime + delta
    trsecondstoturn=random(10.0,30.0) -- choose random time to turn for each update
    trreturntobattle=random(15.0,60.0)
    --print(traitortime)
     for _, obj in ipairs(traitorship:getObjectsInRange(enemyrange)) do  -- check for player ship in range of traitor

      if obj.typeName == "PlayerSpaceship" then
        if ( traitorship:getCallSign() == traitorshipname ) then
          traitordiscovered=1
        else
          traitorship:setTemplate(tratorshiptype)
        end
        if traitortime > (prevturntime + trsecondstoturn) then         
          traitorship:orderFlyTowardsBlind(random(-10000, 10000), random(-10000, 10000))
          prevturntime=traitortime 
        end   
      else
        if obj.isFaction=="Human Navy" or obj.isFaction=="Independent" then
            traitorship:setCallSign(traitorshipname)
            traitorship:setTemplate(tratorshiptype)
        end
        if traitortime > ( prevturntime + trreturntobattle ) then
          traitorship:orderRoaming()
        end
      end
    end
    if traitortime >= 1200.0  and status == 0 then
      status=1
      missioncomm1 = player:getCallSign() .. ", what are you doing?!? You were ordered to destroy the ".. traitorshipname .." ! Stop wasting time and complete your mission!" 
      station:sendCommsMessage(getPlayerShip(-1), missioncomm1)
    end
    
    
  else
    if (missionend == 0) then    
      missionend=1
      endmissioncomm = "Congratulations " .. player:getCallSign() .. ", you have destroyed those traitor scum. That should show others not to turn against us!\n\nDock with ".. commandstationname .." and we will increase your Mine Capacity by one."
      station:sendCommsMessage(getPlayerShip(-1), endmissioncomm)
      player:addReputationPoints(reppoints)
    elseif missionend == 1 then
      if player:isDocked(station) then
        playertotalmines=player:getWeaponStorage("Mines") + 1
        player:setWeaponStorage("Mines", playertotalmines)
        missionend=2
      end
    else
      -- All Done
      victory("Human Navy") --Remove for Online Server
    end
  end 
end
  