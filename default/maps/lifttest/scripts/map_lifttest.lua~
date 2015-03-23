function bcol( x1, y1, w1, h1, x2, y2, w2, h2 )
	local xCorrection = 0
	local yCorrection = 0

	local xdir
	local xposdelta = abs(x2 - x1)
	if ( x1 < x2 ) then xdir = -1 else xdir = 1 end
	local totalwidth = w1+w2

	if ( xposdelta < totalwidth ) then
		xCorrection = (totalwidth-xposdelta)*xdir
	else 
		return 0,0
	end

	local ydir
	local yposdelta = abs(y2 - y1)
	if ( y1 < y2 ) then ydir = -1 else ydir = 1 end
	local totalheight = h1+h2

	if ( yposdelta < totalheight ) then
		yCorrection = (totalheight-yposdelta)*ydir
	else 
		return 0,0
	end

	if ( abs(xCorrection) < abs(yCorrection) ) then 
		return xCorrection, 0
	else
		return 0, yCorrection
	end
end

function map_lifttest.init()



local liftacl = load_particle("liftacl.obj")
local liftastop = -1
local liftavx = 0
local liftavy = 0

	function map_lifttest.lift_newacl(object) --this is the clientside lift, only for non-local worms
		
		object:data().stopx = {}
		object:data().stopy = {}

		object:data().stopx[4] = 80--fifth stop
		object:data().stopy[4] = 60

		object:data().stopx[3] = 80
		object:data().stopy[3] = 124

      	object:data().stopx[2] = 80
		object:data().stopy[2] = 218

        	object:data().stopx[1] = 80
		object:data().stopy[1] = 320

		object:data().stopx[0] = 80 --first stop for lift
		object:data().stopy[0] = 384--first stop for lift

		object:data().vectorx = liftavx
		object:data().vectory = liftavy--speed, the stop coordinates must be divisible by this number(into a whole number, not fraction)
		object:data().stoptime = 150--frames divided by 2 to pause for stops

        	object:data().idle = object:data().stoptime--required for synchro

		object:set_pos(object:data().stopx[liftastop]+object:data().vectorx,object:data().stopy[liftastop]+object:data().vectory)--first stop for lift
		
		object:data().axis = 0 --axis lift restricts 0=Y(vert lift), 1=XY(x freed upon idle, horizontal lift),2=XY(y freed upon idle good for wall traps)
		object:data().stops = 5 --how many stops a lift makes

		object:data().stopped = liftastop
	end

	function map_lifttest.lift_newa(object)

		if AUTH then
		player = game_local_player(0)

		object:data().idle = 0
		
		object:data().stopx = {}
		object:data().stopy = {}

		object:data().stopx[4] = 80
		object:data().stopy[4] = 60

		object:data().stopx[3] = 80
		object:data().stopy[3] = 124

        	object:data().stopx[2] = 80
		object:data().stopy[2] = 218

        	object:data().stopx[1] = 80
		object:data().stopy[1] = 320

		object:data().stopx[0] = 80 --first stop for lift
		object:data().stopy[0] = 384--first stop for lift

		object:set_pos(80,384)--first stop for lift
		
		object:data().axis = 0 --axis lift restricts 0=Y(vert lift), 1=XY(x freed upon idle, horizontal lift),2=XY(y freed upon idle good for wall traps)
		object:data().stops = 5 --how many stops a lift makes
		object:data().stopped = 1
		object:data().vectorx = 0
		object:data().vectory = 0.5--speed, the stop coordinates must be divisible by this number(into a whole number, not fraction)
		object:data().stoptime = 150--frames/2 to pause for stops
		else
			object:remove()
		end
	end

	local lift_synca = network_player_event("lift_synca", function(self,player, liftadata)
		if not player:is_local() and liftastop == -1 then
		liftastop = liftadata:get_int()
		liftavx = liftadata:get_int()
		liftavy = liftadata:get_int()
		player:worm():shoot(liftacl,1)
		end
	end)

	function map_lifttest.lift_activate(object, target)
	
        if object:data().axis == 0 then
				local x,y = object:pos()
				local tx,ty = target:pos()
				local cx,cy = bcol(tx,ty,2,4,x,y,12,2)
				target:set_pos(tx+cx,ty+cy)
				local tsx, tsy = target:spd()
				local sx, sy = object:spd()
				if ( abs(cx) > 0 ) then
					target:set_spd(0,tsy)
				end
				if ( abs(cy) > 0 ) then
					target:set_spd(tsx/1.1,tsy+cy/2)
				end
		elseif object:data().axis == 1 then
			if object:data().idle == 0 then
				local x,y = object:pos()
				local tx,ty = target:pos()
				target:set_pos(tx,y-4)
			else
				local x,y = object:pos()
				local tx,ty = target:pos()
				target:set_pos(x,y-4)
			end
		else
            if object:data().idle == 0 then
				local x,y = object:pos()
				local tx,ty = target:pos()
				target:set_pos(x,y-4)
			else
				local x,y = object:pos()
				local tx,ty = target:pos()
				target:set_pos(x,ty-4)
			end
		end
	end

	function map_lifttest.lift_pulse(object)
		if object:data().idle > 0 then
            		object:data().idle = object:data().idle - 1
		else
			local x,y = object:pos()
			local var = 1

			for var = 0,object:data().stops,1 do
			    if x == object:data().stopx[var] and y == object:data().stopy[var] then
			      	object:data().idle = object:data().stoptime
                 	object:data().stopped = var
                 	
					if var == object:data().stops-1 or var == 0 then
					    object:data().vectorx = -object:data().vectorx
						object:data().vectory = -object:data().vectory
					end
					
					if AUTH then		
						player = game_local_player(0)
						local liftadata = new_bitstream()
						liftadata:add_int(object:data().stopped)
						liftadata:add_int(object:data().vectorx)
						liftadata:add_int(object:data().vectory)

						lift_synca:send(player,liftadata)  
					end

			    end
			end

			x = x + object:data().vectorx
			y = y + object:data().vectory
			object:set_pos(x,y)

		end

	end
end