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


end

function mission1(delta)
  -- type: Escort damaged ship
  -- description: If too far away from damaged ship mission failed
  -- at end of mission: 

end


function mission2(delta)
  -- type: Science
  -- description: Scan some nebula
  -- at end of mission: 
end


function mission3(delta)
  -- type: Delivery
  -- description: go from base to base to deliver supplies. Homings, Nukes, EMPs, Mines & tubes removed to make space. 
  -- at end of mission: restore weapons & tubes to max

end


function mission4(delta)
  -- type: Spy
  -- description: 
  -- at end of mission: 

end


function mission5(delta)
  -- type: Destroy Ghosts
  -- description: 
  -- at end of mission: 

end


function mission6(delta)
  -- type: VIP
  -- description: 
  -- at end of mission: 

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
  -- description: 
  -- at end of mission: 
end