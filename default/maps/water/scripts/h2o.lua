function h2o.init()

 local h2o_surface = load_particle("h2o_surface.obj")
 local h2o_water = load_particle("h2o_water.obj")
 local h2o_splash = load_particle("h2o_splash.obj")
 local h2o_bubble = load_particle("h2o_bubble.obj")

 local dampening = 0.995
 local edge_dampening = 0.985

 local worm_splash_size = 0.45
 local worm_splash_random = 0.05

 local object_splash_size = 0.2


 h2o_table_pos = {}
 h2o_table_spd = {}
 h2o_table_cor = {}


--REGISTER WATER-THINKING
 function bindings.afterUpdate()
  h2o.water_think()
 end

--REGISTER WORM-THINKING
 function bindings.playerUpdate(player)
  local worm = player:worm()
  h2o.worm_think(worm)
 end

--ADD WATERRECTANGLE(WITH SURFACE)

 function h2o.add_surface(x1, y1, x2, y2)
  local pos = {}
  local spd = {}
  local cor = {x1, y1, x2, y2}
  local i = 1
  local max = x2 - x1
  while i <= max do
   pos[i] = y1
   spd[i] = 0
   i = i + 1
  end
  table.insert(h2o_table_pos, pos)
  table.insert(h2o_table_spd, spd)
  table.insert(h2o_table_cor, cor)

  print("Water surface at ", x1, ", ", y1, ", ", x2, ", ", y2, " added")
 end

--ADD WATERRECTANGLE
 function h2o.add_rect(x1, y1, x2, y2)
  local cor = {x1, y1, x2, y2}
  table.insert(h2o_table_cor, cor)

  print("Water rectangle at ", x1, ", ", y1, ", ", x2, ", ", y2, " added")
 end




--THINK FOR ALL WATERRECTANGLES IN h2otable

 function h2o.water_think()
  local i = 1 

  while h2o_table_pos[i] do

   local pos = h2o_table_pos[i]
   local spd = h2o_table_spd[i]
   local cor = h2o_table_cor[i]

   local x1 = cor[1]
   local y1 = cor[2]
   local x2 = cor[3]
   local y2 = cor[4]

   local offset = 0

   local x = 2

   --speed-changing (edgepoints different)

   spd[1] = spd[1] * edge_dampening + 0.5 * (pos[2] - pos[1])
   while pos[x + 1] do
    spd[x] = spd[x] * dampening + 0.5 * (pos[x - 1] + pos[x + 1]) - pos[x]
    x = x + 1
    offset = offset + pos[x] - y1
   end
   spd[x] = spd[x] * edge_dampening + 0.5 * (pos[x - 1] - pos[x])

   --movement + rendering

   offset = offset / (x - 2)

   local x = 1
   while pos[x] do

    local surface = h2o_surface:put(x + x1 - 1, pos[x])
    local water = h2o_water:put(x + x1 - 1, pos[x])

    surface:data().x = x
    surface:data().i = i

    water:set_spd(0,1)

    pos[x] = pos[x] + spd[x] - offset
    x = x + 1
   end
   h2o_table_pos[i] = pos
   h2o_table_spd[i] = spd
   i = i + 1
  end
 end

--THINKING FOR ALL WORMS

 function h2o.worm_think(worm)
  local x, y = worm:pos()
  local state = worm:data().h2o_state
  local oldstate = state

  if h2o_table_pos then
   local i = 1
   local inside = nil
   while h2o_table_cor[i] do
    local cor = h2o_table_cor[i]
    local x1 = cor[1]
    local y1 = cor[2]
    local x2 = cor[3]
    local y2 = cor[4]

    if x > x1 and x < x2 and y > y1 and y < y2 then
     inside = 1
    end
    i = i + 1
   end

   if inside then
    local dx, dy = worm:spd()
    dx = dx * 0.9
    dy = dy * 0.92
    worm:set_spd(dx, dy)
    worm:push(0, -0.003)
    if state then
     if state > 0 then
      state = state + 1
      if state > 100 then
       worm:shoot(h2o_bubble, 1, 0.1, 0.1, 0, 0, 360, 0, 0)
       state = 1
      end
     elseif state == 0 then
      h2o.worm_splatter(worm)
      state = 1
      end
    else
     state = 1
     h2o.worm_splatter(worm)
    end
   else
    if worm:data().state then
     if state > 0 then
      h2o.worm_splatter(worm)
     end
    end
    state = 0
   end
   

  end
  worm:data().h2o_state = state
 end


--WORM SPLATTERS

 function h2o.worm_splatter(worm)
  local x, y = worm:pos()
  local dx, dy = worm:spd()
  dy = math.abs(dy)
  while dy > 0.3 do
   local droplet = h2o_splash:put(x + math.random(-10,10) * 0.5, y)
   droplet:set_spd(math.random(-10, 10) * 0.02 * dy, -dy)
   dy = dy - 0.02
  end

 end


--OBJECT THROUGH SURFACE

 function h2o.object_splash(object, object2)
  local i = object:data().i
  local x = object:data().x
  h2o_table_spd[i][x] = math.random(-1,3) * object_splash_size

  if not object2:data().state then
   object:shoot(h2o_splash, 3, 0.5, 1, 0, 0, 20, 0, 0)
   object2:data().state = 1
  end
 end


--WORM THROUGH SURFACE

 function h2o.worm_splash(object, worm)
  local i = object:data().i
  local x = object:data().x
  local dx, dy = worm:spd() 
  h2o_table_spd[i][x] = dy * worm_splash_size
  if h2o_table_spd[i][x + 2] then
   h2o_table_spd[i][x + 2] =  math.random(-10,10) * worm_splash_random
  end
  if h2o_table_spd[i][x - 2] then
   h2o_table_spd[i][x - 2] =  math.random(-10,10) * worm_splash_random
  end
 end




--BUBBLE-THINK

 function h2o.bubble_think(object)
  local x, y = object:pos()
  local i = 1
  local inside = nil
  while h2o_table_cor[i] do
   local cor = h2o_table_cor[i]
   local x1 = cor[1]
   local y1 = cor[2]
   local x2 = cor[3]
   local y2 = cor[4]  
   if x > x1 and x < x2 and y > y1 and y < y2 then
    inside = 1
   end
   i = i + 1
  end
  if not inside then
   object:remove()
  end
 end

 print("H2O-LIB loaded")
end