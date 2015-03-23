function wherever.thruSetup(object)
	local x,y=object:spd()
	object:data().realspdx=x
	object:data().realspdy=y
	object:set_spd(0,0)
	if object:player() then
		if object:player():data().mincer==nil then
			object:player():data().mincer=0
		end
	end
end

function wherever.thruThink(object)
	if object:data().realspdx == nil then
		return
	end
	local x,y=object:pos()
	local u=object:data().realspdx
	local v=object:data().realspdy
	local a=x+u
	local b=y+v
	if a<0 or b<0 or a>3000 or b>2000 then
		object:remove()
	else
		object:set_pos(a,b)
	end
end
