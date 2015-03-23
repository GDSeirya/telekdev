global_telek_is_loaded = 1
function telek.init()
	print("telek.init triggered.")
	print("telek v3.0 (2015)")
	print("tel_wallblood reset to 1")
	print("@@@@@@@@@@@@@@@@@@@@@@@@@8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
	print("@@@ TELEK 3.0 @@@@@@@@@@@@ G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
	print("@@@@ NENRIKI @@@@@@@@@@@@@@G   .,fLG8.  @@@@@@@@@@@@@@@@@@@@")
	print("@@@ By: GD - 2015 @@@@0iL@@@GCC;.        .@@@@@@@@@@@@@@@@@@")
	print("@@@@ and: Peedle @@@@@@@@@f:                ,0@@@@@@@@@@@@@@")
	print("@@@@@@@@@@@@@@@@@@@@@@@@@@@1            8:    :0@@@@@@@@@@@@")
	print("@@@@@@@@@@@@@@@@@@@@@@@@@... ..          :L;     .1G@@@@@@@@")
	print("@@@t; .    .it0@8@@@@@@@ .8@f              .         ;L@@@@@")
	print("@@@@@81.         :8@@@@88@@.       1       f@0i,.       .@@@")
	print("@@@@@@@@;          ;8@@@@@@       i@,      LCC880L.    L@@@@")
	print("@@@@@@@@L          .:8@@@@@i       .C              :L@@@@@@@")
	print("@@@@@@@@t          . ,C@@@@@;        1CtL88CCCff1:   1@@@@@@")
	print("@@@@@8G;.;i.          f@@@@@@f         t@@@@@@@@@@f;0@@@@@@@")
	print("@@@@@@@@@@@i .       .8@@;   @@t         .C@@@@@@@@@@@@@@@@@")
	print("@@@@@@@@@@1         18@@;     ,@@81          t@@@@@@@@@@@@@@")
	print("@@@@@@@@@f . .     ;@@@G         .1@@@G1.  .   f@@@@@@@@@@@@")
	print("@@@@@@@G t88i        C@@@.                1@@i  C@@@@@@@@@@@")
	print("@@@@@@@@@@@8,         18@@@,                ;@@@@@@@@@@@@@@@")
	print("@@@@@@@@@@@@t          ,C@@@                  ,@@@@@@@@@@@@@")
	print("@@@@@@@@@@@@@0f::       ,8@@@                   8@@@@@@@@@@@")
	print("@@@@@@@@@@@@@@@@@@1      i@@@i                 .8@@@@@@@@@@@")
	print("@@@@@@@@@@@@@@@@@@@01   .1@@@@,                ;@@@@@@@@@@@@")
	print("@@@@@@@@@@@@@@@@@@@@@@L1C@@@@@@@@L:.          ;0@@@@@@@@@@@@")
	print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
	if global_common_is_loaded ~= 1 then
		common.init({hideEnemyHealth = true, hideNames = true})
	end
end

---LOCAL--
      --local FlashControl = load_particle("fg_control_flash.obj")
local obj_deathSet = {}
obj_deathSet[0] = load_particle("death_normal.obj")
obj_deathSet[1] = load_particle("death_dragon.obj")
obj_deathSet[2] = load_particle("death_shark.obj")
obj_deathSet[3] = load_particle("death_lupine.obj")
obj_deathSet[4] = load_particle("death_phantom.obj")
obj_deathSet[5] = load_particle("death_bimmy.obj")

obj_enhancedmini = {}
obj_enhancedmini[0] = load_particle("machinegun_bullet.obj")
obj_enhancedmini[1] = load_particle("machinegun_bullet_telekblue.obj")
obj_enhancedmini[2] = load_particle("machinegun_bullet_bimmy.obj")

obj_weaponsets = {}
obj_weaponsets[0] = load_particle("rshellbuckfire.obj") --sune ku
obj_weaponsets[1] = load_particle("shellbuckfire.obj") --achilles
obj_weaponsets[2] = load_particle("pshellbuckfire.obj") --daedalus
obj_weaponsets[3] = load_particle("oshellbuckfire.obj") --lachesis
obj_weaponsets[4] = load_particle("shellsleepybuck.obj") --sleipnir
obj_weaponsets[5] = load_particle("shellbuckfirezor.obj") --fo
obj_weaponsets[6] = load_particle("telek_loki_shell.obj") --loki

function telek.getdeatheffect(object) --Aligns the sprite where the object is moving
	local player = object:player()
	if player ~= nil then
		local selectedRace = player:data().raceSelection.cur
		if selectedRace ~= nil then
			if selectedRace == 1 then
				object:shoot(obj_deathSet[1], 1, 0, 0, 1, 0, 0, 0, 0)
			elseif selectedRace == 2 then
				object:shoot(obj_deathSet[2], 1, 0, 0, 1, 0, 0, 0, 0)
			elseif selectedRace == 3 then
				object:shoot(obj_deathSet[4], 1, 0, 0, 1, 0, 0, 0, 0)
			elseif selectedRace == 4 then
				object:shoot(obj_deathSet[3], 1, 0, 0, 1, 0, 0, 0, 0)
			else
				if player:name() == "Bimmy" then
					object:shoot(obj_deathSet[5], 1, 0, 0, 1, 0, 0, 0, 0)
				else
					object:shoot(obj_deathSet[0], 1, 0, 0, 1, 0, 0, 0, 0)
				end
			end
		end
	end
end

function telek.anglealignment(object) --Aligns the sprite where the object is moving
	local x,y = object:spd()
	object:set_angle(vector_direction(x, y, 0, 0)-180)
end

function telek.wallblood(object) --Removes blood!
	if (tel_wallblood == 0) then
		object:remove()
	end
end

function telek.gd_easteregg1(object) --If your name is GD
	local player = object:player()
	if (player:name() == "GD") then
		object:shoot(obj_enhancedmini[1], 1, 0, 0, 1, 0, 0, 0, 0)
		object:remove()
	elseif (player:name() == "Bimmy" and player:data().raceSelection.cur == 0) then
		object:shoot(obj_enhancedmini[2], 1, 0, 0, 1, 0, 0, 0, 0)
		object:remove()
	else
		object:shoot(obj_enhancedmini[0], 1, 0, 0, 1, 0, 0, 0, 0)
		object:remove()
	end
end

local rtype_set = {}
rtype_set[0] = sounds["chargemetrtype.ogg"]
rtype_set[1] = sounds["rtchargestep1.ogg"]
rtype_set[2] = sounds["rtchargestep2.ogg"]
rtype_set[3] = sounds["rtchargestep3.ogg"]
rtype_set[4] = sounds["rtchargestep4.ogg"]
rtype_set[5] = sounds["lowchargebeamer.ogg"]
rtype_set[6] = sounds["maxchargestep1.ogg"]
rtype_set[7] = sounds["maxchargestep2.ogg"]
rtype_set[8] = sounds["megawavecannon.ogg"]
rtype_set[9] = sounds["canopytypenocharge.ogg"]

local rtype_bullets = {}
rtype_bullets[0] = load_particle("telek_wavecannon_bullet.obj")
rtype_bullets[1] = load_particle("telek_wavecannon_small.obj")
rtype_bullets[2] = load_particle("telek_wavecannon_med.obj")
rtype_bullets[3] = load_particle("telek_wavecannon_big.obj")
rtype_bullets[4] = load_particle("telek_wavecannon_beam.obj")
rtype_bullets[5] = load_particle("telek_wavecannon_high.obj")
rtype_bullets[6] = load_particle("telek_wavecannon_strong.obj")

function telek.wave_cannon_charge(object)
	local player = object:player()
	if player:data().waveCannonCharge ~= nil and player:data().waveCannonCharge < 200 then
		player:data().waveCannonCharge = player:data().waveCannonCharge + 0.5
	end
	if player:data().waveCannonCharge == 199 then
	rtype_set[0]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge == 299 then
	rtype_set[0]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge == 399 then
	rtype_set[0]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge == 499 then
	rtype_set[0]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge == 599 then
	rtype_set[0]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge == 699 then
	rtype_set[0]:play(player:worm(), nil, 100, 1)
	end
	if player:data().waveCannonCharge == 10 then
	rtype_set[1]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge == 35 then
	rtype_set[2]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge == 60 then
	rtype_set[3]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge == 85 then
	rtype_set[4]:play(player:worm(), nil, 100, 1)
	elseif player:data().waveCannonCharge >= 110 and player:data().waveCannonCharge < 190 then
		if player:data().waveCannonChargeSound <= 0 then
		rtype_set[4]:play(player:worm(), nil, 100, 1)
		player:data().waveCannonChargeSound = 25
		else
			player:data().waveCannonChargeSound = player:data().waveCannonChargeSound - 0.5
		end
	elseif player:data().waveCannonCharge >= 190 then
		if player:data().waveCannonChargeSound <= 0 then
			if player:data().waveCannonChargeFlag == 0 then
				rtype_set[6]:play(player:worm(), nil, 100, 1)
				player:data().waveCannonChargeFlag = 1
			elseif player:data().waveCannonChargeFlag == 1 then
				rtype_set[7]:play(player:worm(), nil, 100, 1)
				player:data().waveCannonChargeFlag = 0
			end
			player:data().waveCannonChargeSound = 25
		else
			player:data().waveCannonChargeSound = player:data().waveCannonChargeSound - 0.5
		end
	end
end


function telek.wave_cannon_release(object)
	local player = object:player()
	if player:data().waveCannonCharge > 25  and player:data().waveCannonCharge < 200 then
		
		rtype_set[5]:play(player:worm(), nil, 100, 1)
		if player:data().waveCannonCharge < 50 then
			player:worm():shoot(rtype_bullets[1] , 1, 1, 0, 0, 0, 0, 0, 5)
		elseif player:data().waveCannonCharge < 75 then
			player:worm():shoot(rtype_bullets[2] , 1, 1, 0, 0, 0, 0, 0, 5)
		elseif player:data().waveCannonCharge < 100 then
			player:worm():shoot(rtype_bullets[3] , 1, 1, 0, 0, 0, 0, 0, 5)
			elseif player:data().waveCannonCharge < 200 then
			player:worm():shoot(rtype_bullets[4] , 1, 1, 0, 0, 0, 0, 0, 5)
		end
	elseif player:data().waveCannonCharge >= 200 then
		rtype_set[8]:play(player:worm(), nil, 100, 1)
		if player:data().waveCannonCharge < 300 then
			player:worm():shoot(rtype_bullets[5] , 1, 1, 0, 0, 0, 0, 0, 5)
			else
			print("6")
			player:worm():shoot(rtype_bullets[6] , 1, 1, 0, 0, 0, 0, 0, 5)
		end
	else
		player:worm():shoot(rtype_bullets[0] , 1, 1, 0, 0, 0, 0, 0, 5)
		rtype_set[9]:play(player:worm(), nil, 100, 1)
	end
	--
	player:data().waveCannonCharge = 0
	player:data().waveCannonChargeBlink = 0
	player:data().waveCannonChargeSound = 0
	player:data().waveCannonChargeFlag = 0
end



function telek.wave_cannon_active(object)
	local player = object:player()
	--print(player:name())
	if player:data().waveCannonCharge == nil or player:data().waveCannonChargeBlink == nil or player:data().waveCannonChargeSound == nil and player:data().waveCannonChargeFlag == nil then
		print("Wave cannon initiaized")
	end
	player:data().waveCannonCharge = 0
	player:data().waveCannonChargeBlink = 0
	player:data().waveCannonChargeSound = 0
	player:data().waveCannonChargeFlag = 0
end


function telek.homing_needler (object,worm) --From Doom
	local player = object:player()
	local worm = object:closest_worm()
	if player ~= nil then --Check if player still exists
		object:player():data().lead = 1
		if worm then
			local x3, y3 = worm:pos()
			  object:player():data().lead = 0
			object:data().x3Targ = x3
			object:data().y3Targ = y3
			local x1,y1 = object:pos()
			local a = object:angle()
			object:player():data().lead = 0
			if ( angle_diff(a,vector_direction(x1, y1, object:data().x3Targ, object:data().y3Targ)) > 0 ) and worm then
				object:set_angle(a + 10)
			else
				object:set_angle(a - 10)
			end
		end
		--[[
		if player and object:player():data().lead == 1 then
			local x1,y1 = object:pos()
			local x2 = player:data().lgrTargX
			local y2 = player:data().lgrTargY
			local a = object:angle()
			if ( angle_diff(a,vector_direction(x1, y1, x2, y2)) > 0 ) then
				object:set_angle(a + 10)
			else
				object:set_angle(a - 10)
			end
		end
		--]]
	end
end

function telek.bending_bullet (object) --Modified homing code
	local player = object:player()
	if (player ~= nil) then --Check if player still exists
		object:set_angle(player:worm():angle())
	end
end

function telek.homing_needler_accurate (object,worm) --Modified homing code
	local player = object:player()
	local worm = object:closest_worm()
	if player ~= nil then --Check if player still exists
		object:player():data().lead = 1
		if worm then
			local x3, y3 = worm:pos()
			  object:player():data().lead = 0
			object:data().x3Targ = x3
			object:data().y3Targ = y3
			local x1,y1 = object:pos()
			local a = object:angle()
			object:player():data().lead = 0
			if ( angle_diff(a,vector_direction(x1, y1, object:data().x3Targ, object:data().y3Targ)) > 0 ) and worm then
				object:set_angle(a + 0.045)
			else
				object:set_angle(a - 0.045)
			end
		end
		if player and object:player():data().lead == 1 then
			local x1,y1 = object:pos()
			local x2 = player:data().lgrTargX
			local y2 = player:data().lgrTargY
			local a = object:angle()
		end
	end
end

function telek.suneKuShoot(object)
	local player = object:player()
	if player:data().suneKuTime ~= nil then
		if player:data().suneKuTime > 0 then
			player:worm():shoot(obj_weaponsets[0], 2 , 1, 0.3, 0.5, 0, 20, -105)
		else
			player:data().suneKuTime = 55
		end
	end
end

function telek.suneKuActive(object)
	local player = object:player()
	if player:data().suneKuTime ~= nil then
		if player:data().suneKuTime > 0 then
			player:data().suneKuTime = player:data().suneKuTime - 1
			if player:data().suneKuTime == 1 then
				player:worm():shoot(obj_weaponsets[0], 2 , 1, 0.3, 0.5, 0, 20, -105)
			end
		end
	else
		player:data().suneKuTime = 0
		print("Sune Ku initialized")
	end
end

function telek.achillesShoot(object)
	local player = object:player()
	if player:data().achillesTime ~= nil then
		if player:data().achillesTime > 0 then
			player:worm():shoot(obj_weaponsets[1], 1 , 1, 0.3, 0.5, 0, 20, -105)
		else
			player:data().achillesTime = 80
		end
	end
end

function telek.achillesActive(object)
	local player = object:player()
	if player:data().achillesTime ~= nil then
		if player:data().achillesTime > 0 then
			player:data().achillesTime = player:data().achillesTime - 1
			if player:data().achillesTime == 1 then
				player:worm():shoot(obj_weaponsets[1], 1 , 1, 0.3, 0.5, 0, 20, -105)
			end
		end
	else
		player:data().achillesTime = 0
		print("Achilles initialized")
	end
end

function telek.lokiShoot(object)
	local player = object:player()
	if player:data().lokiTime ~= nil then
		if player:data().lokiTime > 0 then
			player:worm():shoot(obj_weaponsets[6], 9 , 1, 0.3, 0.5, 0, 20, -105)
		else
			player:data().lokiTime = 167 --122 + 45
		end
	end
end

function telek.lokiActive(object)
	local player = object:player()
	if player:data().lokiTime ~= nil then
		if player:data().lokiTime > 0 then
			player:data().lokiTime = player:data().lokiTime - 1
			if player:data().lokiTime == 1 or player:data().lokiTime == 5 or player:data().lokiTime == 10 or player:data().lokiTime == 15 or player:data().lokiTime == 20 or player:data().lokiTime == 25 or player:data().lokiTime == 30 or player:data().lokiTime == 35 or player:data().lokiTime == 40 or player:data().lokiTime == 45 then
				player:worm():shoot(obj_weaponsets[6], 1 , 1, 0.3, 0.5, 0, 20, -105)
			end
		end
	else
		player:data().lokiTime = 0
		print("Loki initialized")
	end
end

function telek.sleipnirShoot(object)
	local player = object:player()
	if player:data().sleipnirTime ~= nil then
		if player:data().sleipnirTime > 0 then
			player:worm():shoot(obj_weaponsets[4], 1 , 1, 0.3, 0.5, 0, 20, -105)
		else
			player:data().sleipnirTime = 82
		end
	end
end

function telek.sleipnirActive(object)
	local player = object:player()
	if player:data().sleipnirTime ~= nil then
		if player:data().sleipnirTime > 0 then
			player:data().sleipnirTime = player:data().sleipnirTime - 1
			if player:data().sleipnirTime == 1 then
				player:worm():shoot(obj_weaponsets[4], 1 , 1, 0.3, 0.5, 0, 20, -105)
			end
		end
	else
		player:data().sleipnirTime = 0
		print("Sleipnir initialized")
	end
end

function telek.lachesisShoot(object)
	local player = object:player()
	if player:data().lachesisTime ~= nil then
		if player:data().lachesisTime > 0 then
			player:worm():shoot(obj_weaponsets[3], 1 , 1, 0.3, 0.5, 0, 20, -105)
		else
			player:data().lachesisTime = 30
		end
	end
end

function telek.lachesisActive(object)
	local player = object:player()
	if player:data().lachesisTime ~= nil or player:data().lachesisCross ~= nil then
		if player:data().lachesisTime > 0 then
			player:data().lachesisTime = player:data().lachesisTime - 1
			if player:data().lachesisTime == 1 then
				player:worm():shoot(obj_weaponsets[3], 1 , 1, 0.3, 0.5, 0, 20, -105)
			end
		end
	else
		player:data().lachesisTime = 0
		player:data().lachesisCross = 0
		print("Lachesis initialized")
	end
end

function telek.lachesisLaser(object)
	local player = object:player()
	if player ~= nil then
		player:data().lachesisCross = 60
	end
end

function telek.flashHit(object,worm)
  worm:player():data().flashScreen = 275
end

function telek.daedalusShoot(object)
	local player = object:player()
	if player:data().daedalusTime ~= nil then
		if player:data().daedalusTime > 0 then
			player:worm():shoot(obj_weaponsets[2], 1 , 1, 0.3, 0.5, 0, 20, -105)
		else
			player:data().daedalusTime = 130
		end
	end
end

function telek.daedalusActive(object)
	local player = object:player()
	if player:data().daedalusTime ~= nil then
		if player:data().daedalusTime > 0 then
			player:data().daedalusTime = player:data().daedalusTime - 1
			if player:data().daedalusTime == 1 then
				player:worm():shoot(obj_weaponsets[2], 1 , 1, 0.3, 0.5, 0, 20, -105)
			end
		end
	else
		player:data().daedalusTime = 0
		print("Daedalus initialized")
	end
end

function telek.foShoot(object)
	local player = object:player()
	if player:data().foTime ~= nil then
		if player:data().foTime > 0 then
			player:worm():shoot(obj_weaponsets[5], 1 , 1, 0.3, 0.5, 0, 20, -105)
		else
			player:data().foTime = 147
		end
	end
end

function telek.foActive(object)
	local player = object:player()
	if player:data().foTime ~= nil then
		if player:data().foTime > 0 then
			player:data().foTime = player:data().foTime - 1
			if player:data().foTime == 1 then
				player:worm():shoot(obj_weaponsets[5], 1 , 1, 0.3, 0.5, 0, 20, -105)
			end
		end
	else
		player:data().foTime = 0
		print("Fallout initialized")
	end
end

function telek.thruSetup(object)
	local x,y=object:spd()
	object:data().realspdx=x
	object:data().realspdy=y
	object:set_spd(0,0)
	if object:player() then
		if object:player():data().mincer==nil then
			object:player():data().mincer=0
		end
	end
	if object:player() ~= nil then --Check if player still exists
		object:player():data().mincer=object:player():data().mincer+1
	end
end

function telek.thruThink(object)
	if object:data().realspdx == nil then
		return
	end
	local x,y=object:pos()
	local u=object:data().realspdx
	local v=object:data().realspdy
	local a=x+u
	local b=y+v
	if a<-25 or b<-25 or a>3000 or b>2000 then
		object:remove()
	else
		object:set_pos(a,b)
	end
end
	
console_register_command("help", function()
	console.say = "00=SELECT TOPIC="
	console.say = "09help_player"
	console.say = "09help_general"
	console.say = "09help_server"
	console.say = "09help_net"
	console.say = "09help_cl"
	console.say = "09help_console"
	console.say = "09help_audio"
	console.say = "09help_video"
	console.say = "09help_sv"
	console.say = "09help_controls"
	console.say = "09help_tel"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)


console_register_command("help_tel", function()
	console.say = "00=TELEK="
	console.say = "09tel_wallblood <bool>"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_controls", function()
	console.say = "00=CONTROLS="
	console.say = "09A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,"
	console.say = "090,1,2,3,4,5,6,7,8,9,"
	console.say = "090_PAD,1_PAD,2_PAD,3_PAD,4_PAD,5_PAD,6_PAD,7_PAD,8_PAD,9_PAD,"
	console.say = "09SLASH_PAD, MINUS_PAD, PLUS_PAD, DEL_PAD, ENTER_PAD,"
	console.say = "09ESC, TILDE, MINUS, EQUALS, BACKSPACE, TAB, OPENBRACE, CLOSEBRACE, ENTER, SEMICOLON, QUOTE, BACKSLASH, BACKSLASH2, COMMA, STOP, SLASH, SPACE,"
	console.say = "09INSERT, DEL, HOME, END, PGUP, PGDN,"
	console.say = "09LEFT, RIGHT, UP, DOWN,"
	console.say = "09ASTERISK, PRTSCR, PAUSE, ABNT_C1, YEN, KANA, CONVERT, NOCONVERT, AT, CIRCUMFLEX, COLON2, MODIFIERS, MAX,"
	console.say = "09SCRLOCK, NUMLOCK, CAPSLOCK,"
	console.say = "09LSHIFT, RSHIFT, LCONTROL, RCONTROL, ALT, ALTGR, LWIN, RWIN, MENU"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_player", function()
	console.say = "00=COMMANDS="
	console.say = "09P#_Left"
	console.say = "09P#_Right"
	console.say = "09P#_Jump"
	console.say = "09P#_Up"
	console.say = "09P#_Down"
	console.say = "09P#_Change"
	console.say = "09P#_Fire"
	console.say = "09P#_Colour <R> <G> <B>"
	console.say = "09P#_Team <Team_#>"
	console.say = "09P#_Aim_Accel <float>"
	console.say = "09P#_Aim_Friction <float>"
	console.say = "09P#_Aim_Speed <float>"
	console.say = "09P#_Name <string>"
	console.say = "09P#_Rope_Adjust_Speed <float>"
	console.say = "09P#_Viewport_Follow <float>"
	console.say = "09P#_Reload_Timer"
	console.say = "09P#_Toggle_GUI"
	console.say = "09P#_Weapon_Angle"
	console.say = "09P#_Sync_Race"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_general", function()
	console.say = "00=COMMANDS="
	console.say = "09Bind <key_name> <action>"
	console.say = "09Echo <string>"
	console.say = "09Exec <file.cfg>"
	console.say = "09Rest <milliseconds>"
	console.say = "09Screenshot"
	console.say = "09Quit"
	console.say = "09RND_Seed <seed_number>"
	console.say = "09SetConsoleKey <key_name>"
	console.say = "09Quit"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_server", function()
	console.say = "00=COMMANDS="
	console.say = "09Addbot <team>"
	console.say = "09Ban <player_name>"
	console.say = "09Kick <player_name>"
	console.say = "09Map <map_name>"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_net", function()
	console.say = "00=COMMANDS="
	console.say = "09RCON <command>"
	console.say = "09RCON_Password <string>"
	console.say = "09Host <int>"
	console.say = "09Connect <ip:port>"
	console.say = "09NET_Set_Proxy <address> <port>"
	console.say = "09NET_AutoDownloads <int>"
	console.say = "09NET_Check_CRC <int>"
	console.say = "09NET_Down_BPP <int>"
	console.say = "09NET_Down_PPS <int>"
	console.say = "09NET_Log <int>"
	console.say = "09NET_Server_Port <port>"
	console.say = "09NET_Server_Name <string>"
	console.say = "09NET_Server_Desc <string>"
	console.say = "09NET_Register <int>"
	console.say = "09NET_Sim_Lag <int>"
	console.say = "09NET_Sim_Loss <float>"
	console.say = "09NET_Up_Limit <int>"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_cl", function()
	console.say = "00=COMMANDS="
	console.say = "09CL_Log_Death_Messages <bool>"
	console.say = "09CL_Show_Death_Messages <bool>"
	console.say = "09CL_ShowFps <int>"
	console.say = "09CL_ShowDebug <int>"
	console.say = "09CL_Show_Map_Debug <int>"
	console.say = "09CL_SplitScreen <int>"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_console", function()
	console.say = "00=COMMANDS="
	console.say = "09CON_Font <font>"
	console.say = "09CON_Height <int>"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_audio", function()
	console.say = "00=COMMANDS="
	console.say = "09SFX_Volume <0-255>"
	console.say = "09SFX_Listener_Distance <float>"
	console.say = "09SFX_Output_Mode <float>"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_sv", function()
	console.say = "00=COMMANDS="
	console.say = "09SV_Max_Respawn_Time <int>"
	console.say = "09SV_Max_Weapons <int>"
	console.say = "09SV_Min_Respawn_Time <int>"
	console.say = "09SV_NinjaRope_Pull_Force <float>"
	console.say = "09SV_NinjaRope_Shoot_Speed <float>"
	console.say = "09SV_NinjaRope_Start_Distance <float>"
	console.say = "09SV_Team_Play <int>"
	console.say = "09SV_Worm_Acceleration <float>"
	console.say = "09SV_Worm_Air_Acceleration_Factor <float>"
	console.say = "09SV_Worm_Air_Friction <float>"
	console.say = "09SV_Worm_Bounce_Limit <float>"
	console.say = "09SV_Worm_Bounce_Quotient <float>"
	console.say = "09SV_Worm_Box_Bottom <float>"
	console.say = "09SV_Worm_Box_Radius <float>"
	console.say = "09SV_Worm_Box_Top <float>"
	console.say = "09SV_Worm_Disable_Wall_Hugging <float>"
	console.say = "09SV_Worm_Friction <float>"
	console.say = "09SV_Worm_Gravity <float>"
	console.say = "09SV_Worm_Height <float>"
	console.say = "09SV_Worm_Jump_Force <float>"
	console.say = "09SV_Worm_Max_Speed <float>"
	console.say = "09SV_Worm_Max_Climb <float>"
	console.say = "09SV_Worm_Weapon_Height <float>"
	console.say = "09SV_Worm_Width <float>"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)

console_register_command("help_video", function()
	console.say = "00=COMMANDS="
	console.say = "09VID_Bitdepth <bits>"
	console.say = "09VID_Clear_Buffer <int>"
	console.say = "09VID_DoubleRes <int>"
	console.say = "09VID_Driver <int>"
	console.say = "09VID_Filter <int>"
	console.say = "09VID_Fullscreen <int>"
	console.say = "09VID_VSync <int>"
	console.say = "00=PAGE UP/DOWN TO SCROLL="
end)