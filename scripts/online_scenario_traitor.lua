-- Name: Traitor
-- Description: There's a traitor threating naval vessels. Destroy the traitor


-- type: Destroy Enemies
-- notes: A friendly ship destroys another friendly. You must destroy the traitor ship. They will run and you must chase. Traitors will try to convince you to change sides.
-- at end of mission: gain rep, +1 to mines

function init()
 station = SpaceStation():setTemplate("Small Station"):setFaction("Human Navy"):setPosition(random(-10000, 10000), random(-10000, 10000)):setCallSign("Fleet Command")
 --[[ notes:
  * receive hail from stationX about traitor 
      "you must destroy the traitor ship" "do not listen to their traitorous propraganda"
  * spawn traitor ship on receiving hail outside of radar range
  * 
  
  -* traitorship is destroyed give more mines and 200 rep
  ]]
  
  --Create traitor faction
  traitors = FactionInfo():setName("Human Traitors")
  traitors:setGMColor(255, 128, 128)
  traitors:setDescription([[Traitors to the Human Navy. They have stolen naval ships and only attack our friendly targets.]])
  traitors:setEnemy(human)
  
  traitorship=CpuShip():setCallSign("Bornwell"):setFaction("Human Traitors"):setTemplate('Dreadnaught'):setRotation(0):setPosition(random(-10000, 10000), random(-10000, 10000))
  
  traitorship:orderRoaming() --Attack nearest Human Navy vessel
  
  traitorhunter=player:getCallSign()
  
  -- make the names & ranks random for better replay value
  
  TraitorShip = {
    "Kalima",
    "Trinsisity",
    "Norton",
    "Selin",
    "Moria"
  }
  
  ShipNames = {
    "Kartalla",
    "Centaur",
    "SenSatin",
    "Tarta",
    "Minifest"
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
  
  rndshipname=ShipNames[random(1,5)]
  rndvip=vipnames[random(1,5)]
  rndrank=viprank[random(1,5)]
  traitorshipname=Traitorship[random(1,5)]
  
  -- hail player ship(s)
  starmissioncomm = "The crew of the ".. traitorshipname .." has committed an act of treason. They destroyed the ship ".. rndshipname .." that had " .. rndrank .. " " .. rndvip .. " aboard during an important mission. You must destroy them before they destroy any more Naval assets. Attack them at once. This is an Order."
  station:sendCommsMessage(getPlayerShip[-1], startmissioncomm)
  traitortime=0 --keep track of running times
  
end


function update(delta)
  if (isValid()==traitorship) then
    --traitor is still alive
    traitortime=traitortime + delta
    trsecondstoturn=random(10,30) -- choose random time to turn for each update
    
    if traitor:areEnemiesInRange() then
      
      if (traitortime + trsecondstoturn) > prevturntime then
        --turn 90 degrees & run (once every trsecondstoturn seconds)
      
        trdir=traitor:getHeading()
        if trdir > 180 && trdir <359 then
          trdir = trdir - 90
        else 
          trdir=trdir + 90
        traitor:setHeading(trdir)
        prevturntime=traitortime
      end
    end
  else
    traitordestroyer=traitorhunter
    playertotalmines=traitordestroyer:getWeaponStorage("Mines") + 1
    traitordestroyer:setWeaponStorage("Mines", playertotalmines)
    traitordestroyer:addReputationPoints(200)
    endmissioncomm = "Congradulations " .. player:getCallSign() .. ", you have destroyed those scum traitors. That should show others not to turn against us!"
    station:sendCommsMessage(getPlayerShip[-1], endmissioncomm)
    -- destroyScript()  --remove script (seperate file)
  end

  
end
  