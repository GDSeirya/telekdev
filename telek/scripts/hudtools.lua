function hudtools.greenRedInterpol( factor )
	local r
	local g
	if factor < 0.5 then
		r = 512*factor
		g = 255
	else
		r = 255
		g = 255 - 512*(factor-0.5)
	end
	return color(r, g, 0)
end

function hudtools.bluePurpleInterpol( factor )
	local b
	local g
	if factor < 0.5 then
		r = 512*factor
		b = 255
	else
		r = 255
		b = 255 - 512*(factor-0.5)
	end
	return color(r*0.5, 0, b)
end

function hudtools.redGreenInterpol( factor )
	local r
	local g
	if factor < 0.5 then
		g = 512*factor
		r = 255
	else
		g = 255
		r = 255 - 512*(factor-0.5)
	end
	return color(r, g, 0)
end

function hudtools.drawCBar(bitmap, x, y, width, height, colorio)
	gfx_set_alpha(160)
	bitmap:draw_box(x, y, x+width, y+height, 0)
	gfx_reset_blending()
	bitmap:draw_box(x+1, y+1, x+1+(width-2), y+height-1, colorio)
end

function hudtools.drawVBarDefault(bitmap, filled, x, y, width, height, player, maxCharge)
	gfx_set_alpha(160)
	bitmap:draw_box(x, y, x+width, y+height, 0)
	gfx_reset_blending()
	if filled > 0 then
		if math.floor(filled) <= 100 then
		--bitmap:draw_box(x+1, y+height-1-(height-2)*filled, x+1+width-2, y+(height-1), hudtools.greenRedInterpol(1-filled))
			bitmap:draw_box(x+1, y+height-1-(height-2)*filled/100, x+1+width-2, y+(height-1), color(50, 100, 255)) --beam
		elseif math.floor(filled) <= 200 then
			bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(50, 100, 255))
			bitmap:draw_box(x+1, y+height-1-(height-2)*(filled/100-1), x+1+width-2, y+(height-1), color(40, 250, 200)) -- high
		elseif math.floor(filled) <= 300 then
			bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(40, 250, 200))
			bitmap:draw_box(x+1, y+height-1-(height-2)*(filled/100-2), x+1+width-2, y+(height-1), color(140, 255, 140)) -- strong
		elseif math.floor(filled) <= 400 then
			bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(140, 255, 140))
			bitmap:draw_box(x+1, y+height-1-(height-2)*(filled/100-3), x+1+width-2, y+(height-1), color(190, 255, 150)) -- great
		elseif math.floor(filled) <= 500 then
			bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(190, 255, 150))
			bitmap:draw_box(x+1, y+height-1-(height-2)*(filled/100-4), x+1+width-2, y+(height-1), color(200, 200, 100)) -- special
		elseif math.floor(filled) <= 600 then
			bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(200, 200, 100))
			bitmap:draw_box(x+1, y+height-1-(height-2)*(filled/100-5), x+1+width-2, y+(height-1), color(255, 150, 100)) -- devil
		elseif math.floor(filled) <= 700 then
			bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(255, 150, 100))
			bitmap:draw_box(x+1, y+height-1-(height-2)*(filled/100-6), x+1+width-2, y+(height-1), color(255, 100, 100)) -- dragon
		else
			bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(255, 100, 100)) -- dragon
		end
		if math.floor(filled) == maxCharge then
			if player:data().waveCannonChargeBlink < 5 then
				player:data().waveCannonChargeBlink = player:data().waveCannonChargeBlink + 1
			elseif player:data().waveCannonChargeBlink < 10 then
				bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(255, 255, 255)) -- dragon
				player:data().waveCannonChargeBlink = player:data().waveCannonChargeBlink + 1
			else
				bitmap:draw_box(x+1, y+height-1-(height-2), x+1+width-2, y+(height-1), color(255, 255, 255)) -- dragon
				player:data().waveCannonChargeBlink = 0
			end
		end
	end
end

function hudtools.drawHBar(bitmap, filled, x, y, width, height)
	gfx_set_alpha(160)
	bitmap:draw_box(x, y, x+width, y+height, 0)
	gfx_reset_blending()
	if filled > 0 then
		if filled <= 1 then
			bitmap:draw_box(x+1, y+1, x+1+(width-2)*filled, y+height-1, hudtools.greenRedInterpol(1-filled))
		elseif filled <= 2 then
			bitmap:draw_box(x+1, y+1, x+1+(width-2), y+height-1, hudtools.greenRedInterpol(0))
			bitmap:draw_box(x+1, y+1, x+1+(width-2)*(filled-1), y+height-1, hudtools.bluePurpleInterpol(2-filled))
		else
			if floor(filled) % 2 == 1 then
				bitmap:draw_box(x+1, y+1, x+1+(width-2), y+height-1, color(255,0,0))
				bitmap:draw_box(x+1, y+1, x+1+(width-2)*(filled - floor(filled)), y+height-1, hudtools.bluePurpleInterpol(1-(filled % 1)))
			else
				bitmap:draw_box(x+1, y+1, x+1+(width-2), y+height-1, color(0,0,255))
				bitmap:draw_box(x+1, y+1, x+1+(width-2)*(filled - floor(filled)), y+height-1, hudtools.redGreenInterpol(1-(filled % 1)))
			end
		end
	end
end