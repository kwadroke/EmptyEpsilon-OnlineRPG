-- Name: Online Random Missions
-- Description: For use with scenario_66_online

chooserandommission(delta)

function chooserandommission(delta)
  missionnumber=random(0, 10)
  if missionnumber = 0 then
    mission0(delta)
  else if missionnumber = 1 then
    mission1(delta)
  else if missionnumber = 2 then
    mission2(delta)
  else if missionnumber = 3 then
    mission3(delta)
  else if missionnumber = 4 then
    mission4(delta)
  else if missionnumber = 5 then
    mission5(delta)
  else if missionnumber = 6 then
    mission6(delta)
  else if missionnumber = 7 then
    mission7(delta)
  else if missionnumber = 8 then
    mission8(delta)
  else if missionnumber = 9 then
    mission9(delta)
  else if missionnumber = 10 then
    mission10(delta)
  else
    mission0(delta)
  end
end

function mission0(delta)
  -- type: Destroy Kraylors
  -- description: Kraylors are heading to attack a transport ship thought to be carrying weapons. Destroy attackers before ship is destroyed.
  -- at end of mission: gain rep
end

function mission1(delta)
  -- type: Escort damaged ship
  -- description: Stay within 4u of damaged ship. If too far away from damaged ship mission failed.
  -- at end of mission: gain rep

end


function mission2(delta)
  -- type: Science
  -- description: Scan some nebula, chance enemies may be hidden with in.
  -- at end of mission: gain rep
end


function mission3(delta)
  -- type: Delivery
  -- description: go from base to base to deliver supplies. Homings, Nukes, EMPs, Mines & tubes removed to make space. 
  -- at end of mission: restore weapons & tubes to max. gain rep - increase Homing capacity by 1.

end


function mission4(delta)
  -- type: Spy
  -- description: 
  -- at end of mission: gain rep

end


function mission5(delta)
  -- type: Destroy Ghosts
  -- description: 
  -- at end of mission: +1 to EMP

end


function mission6(delta)
  -- type: VIP
  -- description: Go to base where VIP is located, escort VIP ship to another base. 
  -- at end of mission: gain rep

end


function mission7(delta)
  -- type: 
  -- description: 
  -- at end of mission: 

end

function mission8(delta)
  -- type: 
  -- description: 
  -- at end of mission: 
end

function mission9(delta)
  -- type: 
  -- description: 
  -- at end of mission: 

end

function mission10(delta)
  -- type: Destroy Traitors
  -- description: A friendly ship destroys another friendly. You must destroy the traitor ship. They will run and you must chase. Traitors will try to convince you to change sides.
  -- at end of mission: gain rep, +1 to mines
end
