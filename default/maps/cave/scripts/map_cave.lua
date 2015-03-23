function map_cave.init()
	
	local soundhax = load_particle("soundhax.obj")

	function map_cave.orbInit(object)
		local x, y = object:pos()
		object:data().xTarg = x
		object:data().yTarg = y
	end
	
	function map_cave.orbUpdateTarg(object)
		local worm = object:get_closest_worm()
		if worm then
			local x, y = worm:pos()
			object:data().xTarg = x
			object:data().yTarg = y
		else
			local oldx, oldy = object:pos()
			if map_is_blocked(object:data().xTarg, object:data().yTarg, oldx, oldy) then
				object:data().xTarg = oldx
				object:data().yTarg = oldy
			elseif vector_distance( object:data().xTarg,object:data().yTarg, object:pos() ) < 0 then
				local newx, newy = angle_vector( randomfloat(1,1), randomfloat(1,1) )
				newx = newx + oldx
				newy = newy + oldy
				object:set_pos( newx, newy )
				worm = object:get_closest_worm()
				if worm and not map_is_blocked(newx, newy, oldx, oldy) then
					object:data().xTarg = newx
					object:data().yTarg = newy
				end
				object:set_pos( oldx, oldy )
			end
		end
	end

	function map_cave.orbThink(object)
		local worm = object:get_closest_worm()
		local x1, y1 = object:pos()
		if ( not worm ) or ( vector_distance( x1,y1, worm:pos() ) > 20 ) then
			local x1, y1 = object:pos()
			local angle = vector_direction(x1, y1, object:data().xTarg, object:data().yTarg)
			object:push(angle_vector(angle,0.1))
		else
			object:push(0,-0.05)
		end
	end

	function map_cave.orbClank(object)
		if vector_distance( object:spd() ) > 1.3 then
			object:shoot(soundhax, 1, 0, 0, 0, 0, 0, 0, 0)
		end
	end

	function dotInsideBox(x,y,x1,y1,x2,y2)
		if x > x1 and x < x2 then
		if y > y1 and y < y2 then
			return true
		end
		end
		return false
	end

end