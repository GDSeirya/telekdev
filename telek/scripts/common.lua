local chat_fx = sounds["chat.ogg"]

obj_blood = load_particle("bloodgenxy.obj")

local obj_otherSet = {}
obj_otherSet[0] = load_particle("telek_ballonia.obj")
obj_otherSet[1] = load_particle("telek_torch_start.obj")
obj_otherSet[2] = load_particle("telek_fart.obj")

local miscSound_set = {}
miscSound_set[0] = sounds["telek_switch.ogg"]
miscSound_set[1] = sounds["telek_systemnote.ogg"]
miscSound_set[2] = sounds["telek_racesync.ogg"]
miscSound_set[3] = sounds["telek_fart.wav"]
miscSound_set[4] = sounds["telek_cursor.ogg"]
miscSound_set[5] = sounds["telek_decide.ogg"]
miscSound_set[6] = sounds["telek_raceselect.ogg"]

local obj_phantomtrail = {}
obj_phantomtrail[0] = load_particle("phantomtrailer_race.obj")
obj_phantomtrail[1] = load_particle("phantomtrailer_race_1.obj")
obj_phantomtrail[2] = load_particle("phantomtrailer_race_2.obj")
obj_phantomtrail[3] = load_particle("phantomtrailer_race_3.obj")
obj_phantomtrail[4] = load_particle("phantomtrailer_race_4.obj")
obj_phantomtrail[5] = load_particle("phantomtrailer_race_5.obj")
obj_phantomtrail[6] = load_particle("phantomtrailer_race_6.obj")
obj_phantomtrail[7] = load_particle("phantomtrailer_race_7.obj")
obj_phantomtrail[8] = load_particle("phantomtrailer_race_8.obj")
obj_phantomtrail[9] = load_particle("phantomtrailer_race_9.obj")
obj_phantomtrail[10] = load_particle("phantomtrailer_race_10.obj")
obj_phantomtrail[11] = load_particle("phantomtrailer_race_11.obj")
obj_phantomtrail[12] = load_particle("phantomtrailer_race_12.obj")
obj_phantomtrail[13] = load_particle("phantomtrailer_race_13.obj")
obj_phantomtrail[14] = load_particle("phantomtrailer_race_14.obj")
obj_phantomtrail[15] = load_particle("phantomtrailer_race_15.obj")
obj_phantomtrail[16] = load_particle("phantomtrailer_race_16.obj")

local obj_sharkfin = {}
obj_sharkfin[0] = load_particle("sharkfin_race.obj")
obj_sharkfin[1] = load_particle("sharkfin_race_1.obj")
obj_sharkfin[2] = load_particle("sharkfin_race_2.obj")
obj_sharkfin[3] = load_particle("sharkfin_race_3.obj")
obj_sharkfin[4] = load_particle("sharkfin_race_4.obj")
obj_sharkfin[5] = load_particle("sharkfin_race_5.obj")
obj_sharkfin[6] = load_particle("sharkfin_race_6.obj")
obj_sharkfin[7] = load_particle("sharkfin_race_7.obj")
obj_sharkfin[8] = load_particle("sharkfin_race_8.obj")
obj_sharkfin[9] = load_particle("sharkfin_race_9.obj")
obj_sharkfin[10] = load_particle("sharkfin_race_10.obj")
obj_sharkfin[11] = load_particle("sharkfin_race_11.obj")
obj_sharkfin[12] = load_particle("sharkfin_race_12.obj")
obj_sharkfin[13] = load_particle("sharkfin_race_13.obj")
obj_sharkfin[14] = load_particle("sharkfin_race_14.obj")
obj_sharkfin[15] = load_particle("sharkfin_race_15.obj")
obj_sharkfin[16] = load_particle("sharkfin_race_16.obj")

local obj_dragonwings = {}
obj_dragonwings[0] = load_particle("dragonwingso_race.obj")
obj_dragonwings[1] = load_particle("dragonwingso_race_1.obj")
obj_dragonwings[2] = load_particle("dragonwingso_race_2.obj")
obj_dragonwings[3] = load_particle("dragonwingso_race_3.obj")
obj_dragonwings[4] = load_particle("dragonwingso_race_4.obj")
obj_dragonwings[5] = load_particle("dragonwingso_race_5.obj")
obj_dragonwings[6] = load_particle("dragonwingso_race_6.obj")
obj_dragonwings[7] = load_particle("dragonwingso_race_7.obj")
obj_dragonwings[8] = load_particle("dragonwingso_race_8.obj")

local obj_dragonparticle_set = {}
obj_dragonparticle_set[0] = load_particle("whitedragonoflight.obj")
obj_dragonparticle_set[1] = load_particle("blackdragonparticlsiae.obj")
obj_dragonparticle_set[2] = load_particle("dragonfireparticlsiae.obj")
obj_dragonparticle_set[3] = load_particle("naturedragongreenia.obj")
obj_dragonparticle_set[4] = load_particle("dragonwaterdropleto.obj")
obj_dragonparticle_set[5] = load_particle("dragonsubshock1.obj")
obj_dragonparticle_set[6] = load_particle("dragonicycyaniaparti.obj")
obj_dragonparticle_set[7] = load_particle("arcanumdragonopa.obj")
obj_dragonparticle_set[8] = load_particle("arcanumparticdragx.obj")
obj_dragonparticle_set[9] = load_particle("arcanumparticdragx_2.obj")
obj_dragonparticle_set[10] = load_particle("arcanumparticdrag_2.obj")
obj_dragonparticle_set[11] = load_particle("arcanumparticdrag.obj")
obj_dragonparticle_set[12] = load_particle("dragonicycyaniaparti_2.obj")
obj_dragonparticle_set[13] = load_particle("lighttrailflashia.obj")
obj_dragonparticle_set[14] = load_particle("dragonsubshock1_2.obj")
obj_dragonparticle_set[15] = load_particle("dragonwaterdropleto_1.obj")
obj_dragonparticle_set[16] = load_particle("arcanumdragonopa_2.obj")
obj_dragonparticle_set[17] = load_particle("dragonfireparticlsiae_1.obj")
obj_dragonparticle_set[18] = load_particle("blackdragonparticlsiae_1.obj")
obj_dragonparticle_set[19] = load_particle("whitedragonoflight_1.obj")
obj_dragonparticle_set[20] = load_particle("naturedragongreenia_1.obj")
obj_dragonparticle_set[21] = load_particle("naturedragongreenia_2.obj")

local crosshair_set = {}
crosshair_set[0] = sprites_load("zegiancrosshair")
crosshair_set[1] = sprites_load("crosshair_biokinesis")
crosshair_set[2] = sprites_load("crosshair_plus")
crosshair_set[3] = sprites_load("crosshair_detected")

local telekportrait_set = {}
telekportrait_set[0] = sprites_load("telekportrait_dragonrace")
telekportrait_set[1] = sprites_load("telekportrait_sharkrace")
telekportrait_set[2] = sprites_load("telekportrait_wormrace")
telekportrait_set[3] = sprites_load("telekportrait_phantomsprite")
telekportrait_set[4] = sprites_load("telekportrait_lupine")
telekportrait_set[5] = sprites_load("telekportrait_bimmy")

local telekicon_set = {}
telekicon_set[0] = sprites_load("telekicon_placeholder")
telekicon_set[1] = sprites_load("telekicon_questionmark")
telekicon_set[2] = sprites_load("telekicon_achilles")
telekicon_set[3] = sprites_load("telekicon_anaconda")
telekicon_set[4] = sprites_load("telekicon_arrowstorm")
telekicon_set[5] = sprites_load("telekicon_ascension")
telekicon_set[6] = sprites_load("telekicon_beastswipedata")
telekicon_set[7] = sprites_load("telekicon_biokinesis")
telekicon_set[8] = sprites_load("telekicon_cbore")
telekicon_set[9] = sprites_load("telekicon_cempathy")
telekicon_set[10] = sprites_load("telekicon_cmanip")
telekicon_set[11] = sprites_load("telekicon_ccld")
telekicon_set[12] = sprites_load("telekicon_cpc")
telekicon_set[13] = sprites_load("telekicon_csl")
telekicon_set[14] = sprites_load("telekicon_cserpent")
telekicon_set[15] = sprites_load("telekicon_daedalus")
telekicon_set[16] = sprites_load("telekicon_dragonseye")
telekicon_set[17] = sprites_load("telekicon_electrokinesisagility")
telekicon_set[18] = sprites_load("telekicon_electrokinesispersistance")
telekicon_set[19] = sprites_load("telekicon_bazooka")
telekicon_set[20] = sprites_load("telekicon_larpa")
telekicon_set[21] = sprites_load("telekicon_minigun")
telekicon_set[22] = sprites_load("telekicon_esand")
telekicon_set[23] = sprites_load("telekicon_foshotgun")
telekicon_set[24] = sprites_load("telekicon_garuda")
telekicon_set[25] = sprites_load("telekicon_gemini")
telekicon_set[26] = sprites_load("telekicon_greatdragon")
telekicon_set[27] = sprites_load("telekicon_greyshark")
telekicon_set[28] = sprites_load("telekicon_hatredray")
telekicon_set[29] = sprites_load("telekicon_hfeline")
telekicon_set[30] = sprites_load("telekicon_hydra")
telekicon_set[31] = sprites_load("telekicon_icarus")
telekicon_set[32] = sprites_load("telekicon_javelinvulcan")
telekicon_set[33] = sprites_load("telekicon_kynthos")
telekicon_set[34] = sprites_load("telekicon_lachesis")
telekicon_set[35] = sprites_load("telekicon_ldespise")
telekicon_set[36] = sprites_load("telekicon_lpunishment")
telekicon_set[37] = sprites_load("telekicon_medusa")
telekicon_set[38] = sprites_load("telekicon_mysre")
telekicon_set[39] = sprites_load("telekicon_naigez")
telekicon_set[40] = sprites_load("telekicon_ngl")
telekicon_set[41] = sprites_load("telekicon_genesis")
telekicon_set[42] = sprites_load("telekicon_prailgun")
telekicon_set[43] = sprites_load("telekicon_ranwind")
telekicon_set[44] = sprites_load("telekicon_retrue")
telekicon_set[45] = sprites_load("telekicon_screwattack")
telekicon_set[46] = sprites_load("telekicon_shaeiki")
telekicon_set[47] = sprites_load("telekicon_shironwing")
telekicon_set[48] = sprites_load("telekicon_silverdragon")
telekicon_set[49] = sprites_load("telekicon_sleipnir")
telekicon_set[50] = sprites_load("telekicon_suneku")
telekicon_set[51] = sprites_load("telekicon_telekd")
telekicon_set[52] = sprites_load("telekicon_teleko")
telekicon_set[53] = sprites_load("telekicon_twilight")
telekicon_set[54] = sprites_load("telekicon_unicorn")
telekicon_set[55] = sprites_load("telekicon_vampire")
telekicon_set[56] = sprites_load("telekicon_vengeance")
telekicon_set[57]= sprites_load("telekicon_vuhlian")
telekicon_set[58] = sprites_load("telekicon_warrock")
telekicon_set[59] = sprites_load("telekicon_zegian")
telekicon_set[60] = sprites_load("telekicon_blarpa")
telekicon_set[61] = sprites_load("telekicon_missile")
telekicon_set[62] = sprites_load("telekicon_wavecannon")
telekicon_set[63] = sprites_load("telekicon_lokishotgun")
telekicon_set[64] = sprites_load("telekicon_elaser")
telekicon_set[65] = sprites_load("telekicon_eminirockets")

tel_wallblood = 1
tel_debug = 0

------------RACE SYNCING------------
local fart_sync_go = network_player_event("fart_sync_go", function(self, player, data)
	if not player:is_local() then
		player:worm():shoot(obj_otherSet[2], 1, 0, 0, 0, 0, 360, 0, 0)
		miscSound_set[3]:play(player:worm(), nil, 100, 1)
		if tel_debug == 1 then
			print("TELEK-DEBUG: Race sync'd with: ["..player:name() .."]")
		end
	end
end)

local fart_sync_ask = network_player_event("fart_sync_ask", function(self, player, data)
	player:worm():shoot(obj_otherSet[2], 1, 0, 0, 0, 0, 360, 0, 0)
	miscSound_set[3]:play(player:worm(), nil, 100, 1)
	fart_sync_go:send(player)
	if tel_debug == 1 then
		print("TELEK-DEBUG: [" .. player:name().. "] fart is synced, sent sync to all players.")
	end
end)

	
function fart_sync_trigger(worm)
	player:worm():shoot(obj_otherSet[2], 1, 0, 0, 0, 0, 360, 0, 0)
	miscSound_set[3]:play(player:worm(), nil, 100, 1)
	if tel_debug == 1 then
		print("TELEK-DEBUG: Fart sync trigger ["..player:name() .."]")
	end
	if AUTH then
		if tel_debug == 1 then
			print("TELEK-DEBUG: Syncing fart of ["..player:name() .. "] with other players")
		end
		fart_sync_go:send(player)
	else
		if tel_debug == 1 then
			print("TELEK-DEBUG: Asking [Server] to sync your fart.")
		end
		fart_sync_ask:send(player)
	end
end

------------RACE SYNCING------------
local race_sync_go = network_player_event("race_sync_go", function(self, player, data)
	if not player:is_local() then
		player:data().raceSelection.cur = data:get_int()
		if tel_debug == 1 then
			print("TELEK-DEBUG: Race sync'd with: ["..player:name() .."]")
		end
	end
end)

local race_sync_ask = network_player_event("race_sync_ask", function(self, player, data)
	player:data().raceSelection.cur = data:get_int()
	local data = new_bitstream()
	data:add_int(player:data().raceSelection.cur)
	race_sync_go:send(player,data)
	if tel_debug == 1 then
		print("TELEK-DEBUG: [" .. player:name().. "] race is synced, sent sync to all players.")
	end
end)

	
function race_sync_trigger(worm)
	player = worm:player()
	local data = new_bitstream()
	data:add_int(player:data().raceSelection.cur)
	if tel_debug == 1 then
		print("TELEK-DEBUG: Race sync trigger ["..player:name() .."]")
	end
	if AUTH then
		if tel_debug == 1 then
			print("TELEK-DEBUG: Syncing race of ["..player:name() .. "] with other players")
		end
		race_sync_go:send(player,data)
	else
		if tel_debug == 1 then
			print("TELEK-DEBUG: Asking [Server] to sync your race.")
		end
		race_sync_ask:send(player,data)
	end
end

------------LUPINE SYNCING------------
local lupine_sync_go = network_player_event("lupine_sync_go", function(self, player, data)
	if not player:is_local() then
		player:data().worm_moving_timer = data:get_int()
		if tel_debug == 1 then
			print("TELEK-DEBUG: Lupine sync'd with: ["..player:name() .."]")
		end
	end
end)

local lupine_sync_ask = network_player_event("lupine_sync_ask", function(self, player, data)
	player:data().worm_moving_timer = data:get_int()
	local data = new_bitstream()
	data:add_int(player:data().worm_moving_timer)
	lupine_sync_go:send(player,data)
	if tel_debug == 1 then
		print("TELEK-DEBUG: [" .. player:name().. "] lupine is synced, sent sync to all players.")
	end
end)

	
function lupine_sync_trigger(worm)
	player = worm:player()
	local data = new_bitstream()
	data:add_int(player:data().worm_moving_timer)
	if tel_debug == 1 then
		print("TELEK-DEBUG: Lupine sync trigger ["..player:name() .."]")
	end
	if AUTH then
		if tel_debug == 1 then
			print("TELEK-DEBUG: Syncing lupine of ["..player:name() .. "] with other players")
		end
		lupine_sync_go:send(player,data)
	else
		if tel_debug == 1 then
			print("TELEK-DEBUG: Asking [Server] to sync your lupine.")
		end
		lupine_sync_ask:send(player,data)
	end
end

------------BUBBLE SYNCING------------
local cbubble_sync_go = network_player_event("cbubble_sync_go", function(self, player, data)
	if not player:is_local() then
		player:data().isChatting = data:get_int()
		if tel_debug == 1 then
			print("TELEK-DEBUG: Chat bubble sync'd with: ["..player:name() .."]")
		end
	end
end)

local cbubble_sync_ask = network_player_event("cbubble_sync_ask", function(self, player, data)
	player:data().isChatting = data:get_int()
	local data = new_bitstream()
	data:add_int(player:data().isChatting)
	cbubble_sync_go:send(player,data)
	if tel_debug == 1 then
		print("TELEK-DEBUG: [" .. player:name().. "] chat bubble is synced, sent sync to all players.")
	end
end)

function update_player_chatBubbles(player, isOn)
	if player:data().isChatting == nil and tel_debug == 1 then
		print("TELEK-DEBUG: Initialized chat bubble.")
	end
	player:data().isChatting = isOn
	local data = new_bitstream()
	data:add_int(player:data().isChatting)
	if tel_debug == 1 then
		print("TELEK-DEBUG: Chat bubble sync trigger ["..player:name() .. "]")
	end
	if AUTH then
		if tel_debug == 1 then
			print("TELEK-DEBUG: Syncing chat bubble of ["..player:name() .. "] with other players")
		end
		cbubble_sync_go:send(player,data)
	else
		if tel_debug == 1 then
			print("TELEK-DEBUG: Asking [Server] to sync your chat bubble.")
		end
		cbubble_sync_ask:send(player,data)
	end
end

------------DEFAULT STUFF------------
function common.serverList(window)
	if window then
		window:clear()
		window:insert("Fetching server list...")
		
		fetch_server_list(function(list)
			window:clear()
			if list then
				for _, server in ipairs (list) do
					local n = window:insert(server.title, server.mod, server.map, server.desc)
					n:data().ip = server.ip
				end
			else
				window:insert("Couldn't fetch list from server")
			end
		end)
	end
end

console_register_control("KILL_ME", function(plr,s)
	if s then
		if plr ~= nil then
			if plr:worm() ~= nil then
				if plr:worm():health() > 0 then
					if  tel_debug == 1 then
						print("TELEK: Player is killed")
						plr:worm():damage(plr:worm():health()+1)
					else
						print("TELEK: tel_debug is disabled.")
					end
				end
			end
		end
	end
end)

console_register_control("WEAPON_ANGLE", function(plr,s)
	if s then
		if plr ~= nil then
			if plr:worm() ~= nil then
				if plr:worm():health() > 0 then
					miscSound_set[1]:play(player:worm(), nil, 100, 1)
					if plr:data().angleToggle == 0 or plr:data().angleToggle == nil then
						plr:data().angleToggle = 1
						if tel_debug == 1 then
							print("TELEK-DEBUG: Aim compass enabled")
						end
					else
						plr:data().angleToggle = 0
						if tel_debug == 1 then
							print("TELEK-DEBUG: Aim compass disabled")
						end
					end
				end
			end
		end
	end
end)

function get_name_colour(string_input)
	if string.len(string_input) >= 3 then
		if string.sub(string_input,1,1) == "" and tonumber(string.sub(string_input,2,2)) ~= nil and tonumber(string.sub(string_input,3,3)) ~=nil then
			if tonumber(string.sub(string_input,2,3)) >= 0 and tonumber(string.sub(string_input,2,3)) <= 15 then
				return tonumber(string.sub(string_input,2,3))
				--[[
				00 | 255 255 255 WHITE
				01 | 0 0 0 BLACK
				02 | 255 0 0 RED
				03 | 0 255 0 GREEN
				04 | 0 0 255 BLUE
				05 | 255 255 0 YELLOW
				06 | 0 255 255 CYAN
				07 | 255 0 255 MAGENTA
				08 | 64 64 64 DARK GRAY
				09 | 192 192 192 LIGHT GRAY
				10 | 128 0 0 BROWN
				11 | 0 128 0 DARK GREEN
				12 | 0 0 128 DARK BLUE
				13 | 128 128 0 DARK YELLOW
				14 | 0 128 128 DARK CYAN
				15 | 128 0 128 DARK MAGENTA
				]]--
			else
				return 16
			end
		else
			return 16
		end
	else
		return 16
	end
end

console_register_control("RELOAD_TIMER", function(plr,s)
		if s then
			if plr ~= nil then
				if plr:worm() ~= nil then
					if plr:worm():health() > 0 then
						--print(plr:worm():current_weapon():type():name())
						--local x,y = plr:worm():pos()
						--print(x,"::::",y)
						if plr:data().reloadVis == nil then
								plr:data().reloadVis = 1
						else
							if plr:data().reloadVis == 1 then
								plr:data().reloadVis = 0
							else
								plr:data().reloadVis = 1
						end
					end
					if plr:data().reloadVis == 1 then
						if tel_debug == 1 then
							print("TELEK-DEBUG: Reload assist enabled")
						end
						chat_fx:play(plr:worm(), nil, 50, 1.5)
					else
						if tel_debug == 1 then
							print("TELEK-DEBUG: Reload assist disabled")
						end
						chat_fx:play(plr:worm(), nil, 50, 0.75)
					end
				end
			end
		end
	end
end)

local torch_sync_go = network_player_event("torch_sync_go", function(self, player, data)
	if not player:is_local() then
		player:data().torch = data:get_int()
		miscSound_set[0]:play(player:worm(), nil, 100, 1)
		if tel_debug == 1 then
			print("TELEK-DEBUG: Torch sync'd with: ["..player:name() .."]")
		end
	end
end)


local torch_sync_ask = network_player_event("torch_sync_ask", function(self, player, data)
	player:data().torch = data:get_int()
	miscSound_set[0]:play(player:worm(), nil, 100, 1)
	local data = new_bitstream()
	data:add_int(player:data().torch)
	torch_sync_go:send(player,data)
	if tel_debug == 1 then
		print("TELEK-DEBUG: [" .. player:name().. "] torch is synced, sent sync to all players.")
	end
end)

function torch_sync_trigger(worm)
	player = worm:player()
	local data = new_bitstream()
	data:add_int(player:data().torch)
	miscSound_set[0]:play(player:worm(), nil, 100, 1)
	if tel_debug == 1 then
		print("TELEK-DEBUG: Torch sync trigger ["..player:name() .."]")
	end
	if AUTH then
		if tel_debug == 1 then
			print("TELEK-DEBUG: Syncing torch of ["..player:name() .. "] with other players")
		end
		torch_sync_go:send(player,data)
	else
		if tel_debug == 1 then
			print("TELEK-DEBUG: Asking [Server] to sync your torch.")
		end
		torch_sync_ask:send(player,data)
	end
end

console_register_control("FLASHLIGHT", function(plr,s)
if s then
	if plr ~= nil then
		if plr:data().torch == 0 then
			plr:data().torch = 1
		else
			plr:data().torch = 0
		end
		torch_sync_trigger(plr:worm())
	end
end
end)

console_register_control("SYNC_RACE", function(plr,s)
if s then
	if plr ~= nil then
		if plr:data().raceSelection.cur ~= nil then
			miscSound_set[2]:play(player:worm(), nil, 100, 1)
			race_sync_trigger(plr:worm())
		end
	end
end
end)

console_register_control("TOGGLE_GUI", function(plr,s)
	if s then
		if plr ~= nil then
			if plr:worm() ~= nil then
				if plr:worm():health() > 0 then
					--print(plr:worm():current_weapon():type():name())
					--local x,y = plr:worm():pos()
					--print(x,"::::",y)
					if plr:data().showGUI == 1 then
						plr:data().showGUI = 0
					else
						plr:data().showGUI = 1
					end					
					if plr:data().showGUI == 1 then
						if tel_debug == 1 then
							print("TELEK-DEBUG: GUI enabled")
						end
						chat_fx:play(plr:worm(), nil, 50, 1.5)
					else
						if tel_debug == 1 then
							print("TELEK-DEBUG: GUI disabled")
						end
						chat_fx:play(plr:worm(), nil, 50, 0.75)
					end
				end
			end
		end
	end
end)

function common.initScoreboard()
	if not DEDSERV then
		gui_load_gss("scoreboard")
		local scoreboardw = gui_load_xml("scoreboard")
		
		scoreboardw:set_visibility(false)
		
		local scoreFields = {}

		function addScoreField(name, size, func)
			scoreboardw:add_column(name, size)
			table.insert(scoreFields, func)
		end
		
		addScoreField("Name", 1, function(p)
			return p:name()
		end)
		
		addScoreField("Kills", 1, function(p)
			return p:kills()
		end)
		
		addScoreField("Deaths", 1, function(p)
			return p:deaths()
		end)
		
		addScoreField("K/D", 1, function(p)
			if p:deaths() == 0 and p:kills() == 0 then
				return "NaN"
			elseif p:deaths() == 0 and p:kills() > 0 then
				return "INF"
			else
				return round(p:kills()/p:deaths(), 2)
			end
		end)
		
		function fillScoreboard(p)
			local l = {}
			for i, v in ipairs(scoreFields) do
				l[i] = v(p)
			end
			local item = scoreboardw:insert(unpack(l))
			item:data().p = p
		end
		
		function scoreboardComparer(a, b)
			return a:data().p:kills() > b:data().p:kills() 
		end
				
		console_register_command("+SCORES", function()
			scoreboardw:clear()
			for p in game_players() do
				fillScoreboard(p)
			end

			scoreboardw:sort(scoreboardComparer)
			
			scoreboardw:set_visibility(true)
		end)
		
		console_register_command("-SCORES", function()
			scoreboardw:set_visibility(false)
		end)
	end
end

function common.initChat()
	if not DEDSERV then
		gui_load_gss("chat")
		local chatboxw = gui_load_xml("chat")
		chatboxw:set_visibility(false)
		function chatboxw:onKeyDown(k)
			if k == Keys.ESC then
				update_player_chatBubbles(game_local_player(0), 0)
				self:set_visibility(false)
				return true
			end
		end

		local chattextw = chatboxw:child("chattext")
		
		function chattextw:onAction()
			local p = game_local_player(0)
			local d = p:data()
			if p then
				update_player_chatBubbles(game_local_player(0), 0)
				if self:text() ~= "" then
					p:say(self:text())
				end
				chatboxw:set_visibility(false)
			end
		end
		
		console_register_command("SHOWCHAT", function()
			if game_local_player(0) and not mainm.isShown() then
				
				update_player_chatBubbles(game_local_player(0), 1)
				chatboxw:set_visibility(true)
				local w = chatboxw:child("chattext")
				w:set_text("")
				w:focus()
				w:activate()
				clear_keybuf()
			end
		end)
	end
end

console_register_command("TEL_WALLBLOOD", function(i)
		if i == nil then
			return tel_wallblood
		elseif i ~= nil then
			if tonumber(i) then
				local i = i * 1
				if i >= 0  and i <= 1then
					tel_wallblood = i
				else
					return "INVALID VALUE, POSSIBLE VALUES: 1, 0"
				end
			else
				return "INVALID VALUE, POSSIBLE VALUES: 1, 0"
			end
		end
	end)
	
console_register_command("TEL_DEBUG", function(i)
		if i == nil then
			return tel_debug
		elseif i ~= nil then
			if tonumber(i) then
				local i = i * 1
				if i >= 0  and i <= 1then
					tel_debug = i
				else
					return "INVALID VALUE, POSSIBLE VALUES: 1, 0"
				end
			else
				return "INVALID VALUE, POSSIBLE VALUES: 1, 0"
			end
		end
	end)

function common.initHUD(options)
	if not DEDSERV then
		options = options or {} 
		local testCrosshair = sprites_load("crosshair")
		local killsMeter = sprites_load("kills")
		local lifeMeter = sprites_load("lifeicon")
		local bulletMeter = sprites_load("bulleticon")
		local hudFont = fonts.liero
		function bindings.wormRender(x, y, worm, viewport, ownerPlayer)
			local ownViewport = ( ownerPlayer == worm:player() )
			local bitmap = viewport:bitmap()
			if not ownViewport then
				if not options.hideEnemyHealth then
					gfx_set_alpha(90)
					bitmap:draw_box(x - 6, y - 17, x + 6, y - 16, color(255, 255, 255))
					gfx_reset_blending()
					local filled = (worm:health() / 100)
					bitmap:draw_box(x - 6, y - 17, x - 6 + filled * 12, y - 16, hudtools.greenRedInterpol(1-filled))
				end
				if not options.hideNames then
					fonts.minifont:render( bitmap, worm:player():name(), x, y - 10, color(255, 255, 255), Font.Formatting + Font.CenterH + Font.CenterV )
				end
			else
				if worm:is_changing() and worm:current_weapon() ~= nil then
					fonts.minifont:render( bitmap, worm:current_weapon():type():name(), x, y - 10, color(255, 255, 255), Font.Formatting + Font.CenterH + Font.CenterV )
				end
				
			--flash
			local vsyncSet = console.vid_vsync
			
			
			if worm:player():data().flashScreen > 0 then
				if worm:player():data().flashScreen >= 255 then
					gfx_set_alpha(255)
				elseif worm:player():data().flashScreen < 255 and worm:player():data().flashScreen > 0 then
					gfx_set_alpha(worm:player():data().flashScreen)
				end
					bitmap:draw_box(0, 0, 320, 240, color(255, 255, 255))
				gfx_reset_blending()
				if vsyncSet == "0" then
					worm:player():data().flashScreen = worm:player():data().flashScreen - 0.1
				else
					worm:player():data().flashScreen = worm:player():data().flashScreen - 2
				end
				
			end
			gfx_reset_blending()
			if worm:health() == 0 then
				worm:player():data().flashScreen = 0
			end
			--FLASH
				
				if worm:player():data().showGUI == 1 then
					local dx, dy = angle_vector(worm:angle(), 25)
					if worm:current_weapon() ~= nil then --Crosshair hack Begins here
						if (worm:current_weapon():type():name() == "Zegian the Envisioner") then
							testCrosshair:render(bitmap, 0, x + dx, y + dy)
							local adx, ady
							local rdx, rdy
							local ax, ay
							if (worm:angle() < 180) then
								adx, ady = angle_vector(worm:angle()-90, 15)
								local rdx, rdy = angle_vector(worm:angle()+20, 15)
								crosshair_set[0]:render(bitmap, 0, x + dx + adx, y +dy + ady)
								crosshair_set[0]:render(bitmap, 0, x + adx, y + ady)
								bitmap:line(x + adx,y + ady,x+ rdx + adx,y + rdy + ady,color(0,255,0))
								else
								adx, ady = angle_vector(worm:angle()+90, 15)
								local rdx, rdy = angle_vector(worm:angle()-20, 15)
								crosshair_set[0]:render(bitmap, 0, x + dx + adx, y +dy + ady)
								crosshair_set[0]:render(bitmap, 0, x + adx, y + ady)
								bitmap:line(x + adx,y + ady,x+ rdx + adx,y + rdy + ady,color(0,255,0))
							end
						elseif (worm:current_weapon():type():name() == "Biokinesis") then
							local adx, ady = angle_vector(worm:angle() , 29)
							crosshair_set[1]:render(bitmap, 0, x + adx, y + ady)
						elseif (worm:current_weapon():type():name() == "Cerebral Bore Launcher RX-5") then
							--DO NOTHING
						elseif (worm:current_weapon():type():name() == "GreatDragon the Aptituded" or worm:current_weapon():type():name() == "SilverDragon[M] the Arbiter") then
							testCrosshair:render(bitmap, 0, x + dx, y + dy)
							local adx, ady = angle_vector(worm:angle(), 170)
							crosshair_set[2]:render(bitmap, 0, x + adx, y + ady)
						elseif (worm:current_weapon():type():name() == "Shaeiki") then
							adx, ady = angle_vector(worm:angle(), 129)
							testCrosshair:render(bitmap, 0, x + dx, y + dy)
							crosshair_set[2]:render(bitmap, 0, x + adx, y +ady)
							local rdx, rdy = angle_vector(worm:angle()+30, 129)
							crosshair_set[2]:render(bitmap, 0, x + rdx, y +rdy)
							local tdx, tdy = angle_vector(worm:angle()-30, 129)
							crosshair_set[2]:render(bitmap, 0, x + tdx, y +tdy)
							
							gfx_set_alpha(32)
							bitmap:line(x ,y , x + rdy, y + rdx,color(0,255,0))
							bitmap:line(x ,y , x + tdy, y + tdx,color(0,255,0))
							--bitmap:line(x ,y ,x + tdx,y + tdy,color(0,255,0))
							gfx_reset_blending()
						elseif (worm:current_weapon():type():name() == "Icarus") then
							testCrosshair:render(bitmap, 0, x + dx, y + dy)
							
							local adx, ady = angle_vector(worm:angle()-20, 50)
							testCrosshair:render(bitmap, 0, x + adx, y + ady)
							local adx, ady = angle_vector(worm:angle()+20, 50)
							testCrosshair:render(bitmap, 0, x + adx, y + ady)
							
							local adx, ady = angle_vector(worm:angle()-45, 40)
							testCrosshair:render(bitmap, 0, x + adx, y + ady)
							
							local adx, ady = angle_vector(worm:angle()+45, 40)
							testCrosshair:render(bitmap, 0, x + adx, y + ady)
						elseif (worm:current_weapon():type():name() == "Lachesis Shotgun MM031") then
							if worm:player():data().lachesisCross ~=nil then
								if worm:player():data().lachesisCross > 0 then
									crosshair_set[3]:render(bitmap, 0, x + dx, y + dy)
									worm:player():data().lachesisCross = worm:player():data().lachesisCross - 1
								else
									testCrosshair:render(bitmap, 0, x + dx, y + dy)
								end
							else
								testCrosshair:render(bitmap, 0, x + dx, y + dy)
							end
						else
							testCrosshair:render(bitmap, 0, x + dx, y + dy) -- Default Crosshair
						end -- End of Case
					end -- End Weapon Check Bracket
				end -- End Show GUI Bracket
				if worm:player():data().reloadVis == 1 then
				local filled
				local w = worm:current_weapon()
				if w:is_reloading() then
					filled = 1 - w:reload_time() / w:type():reload_time()
				else
					filled = w:ammo() / w:type():ammo()
				end
				
				if filled < 1 then
					fonts.minifont:render( bitmap, round(filled*100), x-2, y + 5, color(0, 255, 0), Font.CenterH )
				end
			end
			--
			end
			--fonts.minifont:render( bitmap, worm:get_player():team(), x, y - 30, 0, 255, 0, Font.CenterH )
		end
		
		function bindings.viewportRender(viewport, worm)
			local bitmap = viewport:bitmap()
			local filled = (worm:health() / 100)
			local limit = 200-filled*2
			
			if worm:player():data().showGUI == nil then
				worm:player():data().showGUI = 1
				--print("GUI Enabled")
			end
			
			if (worm:player():data().showGUI == 1 and worm:player():data().weaponSelection == nil) then --GUISTART HERE
			
			
			
			if (bitmap:w() >= 320) then
				killsMeter:render(bitmap, 0, bitmap:w()-140, 6)
				if (worm:player():kills() <= 999999) then
				fonts.minifont:render(bitmap, worm:player():kills(), bitmap:w()-135, 4, color(255, 255, 255), 0)
				else
				fonts.minifont:render(bitmap, "######", bitmap:w()-135, 4, color(255, 255, 255), 0)
				end
			else
				killsMeter:render(bitmap, 0, bitmap:w()-15, 35)
				if (worm:player():kills() <= 99) then
					fonts.minifont:render(bitmap, worm:player():kills(), bitmap:w()-11, 33, color(255, 255, 255), 0)
				else
					fonts.minifont:render(bitmap, "##", bitmap:w()-11, 33, color(255, 255, 255), 0)
				end
			end
			
			if worm:player():data().weaponSelection == nil then
				if filled <= 0  then
					if worm:player():name() == "Bimmy" and worm:player():data().raceSelection.cur == 0 then
						hudFont:render( bitmap, "Press [FART] to spawn!", bitmap:w()/2, 40, color(255, 255, 255), Font.Shadow + Font.CenterH )
					else
						hudFont:render( bitmap, "Press [JUMP] to spawn!", bitmap:w()/2, 40, color(255, 255, 255), Font.Shadow + Font.CenterH )
					end
				end
			end

			hudtools.drawHBar( bitmap, filled, bitmap:w()-54, 5, 50, 4 )
			if (filled >= 2) then
				gfx_set_alpha(164)
				hudFont:render( bitmap, math.floor(filled)+1, bitmap:w()-44, 5, color(255, 255, 255), Font.Shadow + Font.CenterH )
				gfx_reset_blending()
			end
			lifeMeter:render(bitmap, 0, bitmap:w()-50, 3)

			if filled > 0 then
				local tempVar = round(filled*100,2)
				fonts.minifont:render(bitmap,  tempVar, bitmap:w()-40, -1, color(0,0,0), 0)
				fonts.minifont:render(bitmap,  tempVar, bitmap:w()-42, -1, color(0,0,0), 0)
				fonts.minifont:render(bitmap,  tempVar, bitmap:w()-41, -2, color(0,0,0), 0)
				fonts.minifont:render(bitmap,  tempVar, bitmap:w()-41, 0, color(0,0,0), 0)
				fonts.minifont:render(bitmap,  tempVar, bitmap:w()-41, -1, color(255, 255, 255), 0)
			else
				--fonts.minifont:render(bitmap,  tempVar, bitmap:w()-41, 4, color(255, 0, 0), 0)
				hudFont:render( bitmap, "DEAD", bitmap:w()-29, 0, color(255, 0, 0), Font.Shadow + Font.CenterH )
			end
			local w = worm:current_weapon()
			if w ~= nil then
				if w:is_reloading() then
					filled = 1 - w:reload_time() / w:type():reload_time()
				else
					filled = w:ammo() / w:type():ammo()
				end
				local wname 
				wname = worm:current_weapon():type():name()
				if (
					wname ~= "Biokinesis" and
					wname ~= "Chilling Empathy" and
					wname ~= "Combat Manipulator" and
					wname ~= "Electrokinesis Agility" and
					wname ~= "Electrokinesis Persistance" and
					wname ~= "Enhanced MINIGUN" and
					wname ~= "Enhanced LASER" and
					wname ~= "Enhanced MINI ROCKETS" and
					wname ~= "Experimental Sand" and
					wname ~= "Hatred Ray" and
					wname ~= "Icarus" and
					wname ~= "Lovely Despise" and
					wname ~= "Screw Attack" and
					wname ~= "Telekinesis Defensive" and
					wname ~= "Telekinesis Offensive" and
					wname ~= "Warrock" and
					wname ~= "Wave Cannon") then
					hudtools.drawHBar( bitmap, filled, bitmap:w()-109, 5, 50, 4 )
				else
					hudtools.drawCBar( bitmap, bitmap:w()-109, 5, 50, 4, color(255,0,255))
				end

			gfx_set_alpha(32)
			bitmap:draw_box(bitmap:w()-17, 16, bitmap:w()-3, 30, color(0, 255,128))
			bitmap:draw_box(bitmap:w()-34, 16, bitmap:w()-20, 30, color(0, 255,128))
			--if (bitmap:w() >= 320) then
			bitmap:draw_box(bitmap:w()-108, 24, bitmap:w()-65, 36, color(0, 255,128)) --
			--end
			gfx_set_alpha(64)
			bitmap:draw_box(bitmap:w()-16, 17, bitmap:w()-4, 29, color(0, 32,16))
			bitmap:draw_box(bitmap:w()-33, 17, bitmap:w()-21, 29, color(0, 32,16))
			--if (bitmap:w() >= 320) then
			bitmap:draw_box(bitmap:w()-107, 25, bitmap:w()-66, 35, color(0, 32,16))
			--end
			gfx_reset_blending()
			
			--if (bitmap:w() >= 320) then
				if worm:player():data().torch ~= nil then
					local torchSprite = sprites_load("telek_torchsprite")
					if worm:player():data().torch == 0 then
						gfx_set_alpha(90)
						torchSprite:render(bitmap, 0, bitmap:w()-105, 26) --GDTO
						gfx_reset_blending()
					else
						torchSprite:render(bitmap, 0, bitmap:w()-105, 26) --GDTO
					end
				end
				
				local weaponAngler = sprites_load("telek_weaponangle")
				if worm:player():data().angleToggle == nil or worm:player():data().angleToggle == 0 then
					gfx_set_alpha(90)
					weaponAngler:render(bitmap, 0, bitmap:w()-75, 26) --GDTO
					gfx_reset_blending()
					else
					weaponAngler:render(bitmap, 0, bitmap:w()-75, 26) --GDTO
					gfx_set_alpha(64)
					fonts.minifont:render( bitmap, round(worm:angle(),2), bitmap:w()-108, 36, color(255, 255, 255), Font.Shadow )
					gfx_reset_blending()
					end
				--end
				
				local reloadTimer = sprites_load("telek_reloadtimer")
				if worm:player():data().reloadVis == nil or worm:player():data().reloadVis == 0 then
					gfx_set_alpha(90)
					reloadTimer:render(bitmap, 0, bitmap:w()-90, 26) --GDTO
					gfx_reset_blending()
				else
					reloadTimer:render(bitmap, 0, bitmap:w()-90, 26) --GDTO
				end
			--end
			
			if (worm:player():data().raceSelection.cur ~= nil and worm:player():data().weaponSelection == nil) then
				local tempNameRace
			
				if worm:player():data().raceSelection.cur == 0 then
					if worm:player():name() == "Bimmy" then
						tempNameRace = "Bimmy"
						telekportrait_set[5]:render(bitmap, 0, bitmap:w()-27, 23)
					else
						tempNameRace = "Worm"
						telekportrait_set[2]:render(bitmap, 0, bitmap:w()-27, 23)
					end
				elseif worm:player():data().raceSelection.cur == 1 then
					tempNameRace = "Dragon"
					telekportrait_set[0]:render(bitmap, 0, bitmap:w()-27, 23)
				elseif worm:player():data().raceSelection.cur == 2 then
					tempNameRace = "Shark"
					telekportrait_set[1]:render(bitmap, 0, bitmap:w()-27, 23)
				elseif worm:player():data().raceSelection.cur == 3 then
					tempNameRace = "Phantom"
					telekportrait_set[3]:render(bitmap, 0, bitmap:w()-27, 23)
				elseif worm:player():data().raceSelection.cur == 4 then
					tempNameRace = "Lupine"
					telekportrait_set[4]:render(bitmap, 0, bitmap:w()-27, 23)
				else
					tempNameRace = "Unknown"
					telekicon_set[0]:render(bitmap, 0, bitmap:w()-27, 23)
				end
				gfx_set_alpha(128)
				hudFont:render( bitmap, tempNameRace, bitmap:w()-108, 17, color(128, 128, 255), Font.Shadow )
				gfx_reset_blending()
			end
			if ( worm:player():data().weaponSelection == nil ) then
				if ( wname == "Achilles Shotgun LS969" ) then
					telekicon_set[2] :render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Anaconda" ) then
					telekicon_set[3]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Arrow Storm" ) then
					telekicon_set[4]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Ascension" ) then
					telekicon_set[5]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Beast Swipe Data" ) then
					telekicon_set[6]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Biokinesis" ) then
					telekicon_set[7]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Cerebral Bore Launcher RX-5" ) then
					telekicon_set[8]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Chilling Empathy" ) then
					telekicon_set[9]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Combat Manipulator" ) then
					telekicon_set[10]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Cthul Cybernetic Laser Deployer" ) then
					telekicon_set[11]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Cthul Primary Cannon" ) then
					telekicon_set[12]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Cthul Scope Liquidator" ) then
					telekicon_set[13]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Cthul the Serpent" ) then
					telekicon_set[14]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Daedalus Shotgun HV916" ) then
					telekicon_set[15]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Dragon's Eye" ) then
					telekicon_set[16]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Electrokinesis Agility" ) then
					telekicon_set[17]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Electrokinesis Persistance" ) then
					telekicon_set[18]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Enhanced BAZOOKA" ) then
					telekicon_set[19]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Enhanced BOUNCY LARPA" ) then
					telekicon_set[60]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Enhanced LARPA" ) then
					telekicon_set[20]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Enhanced LASER" ) then
					telekicon_set[64]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Enhanced MINIGUN" ) then
					if player:name() == "GD" then
					telekicon_set[1]:render(bitmap, 0, bitmap:w()-10, 23)
					else
					telekicon_set[21]:render(bitmap, 0, bitmap:w()-10, 23)
					end
				elseif ( wname == "Enhanced MINI ROCKETS" ) then
					telekicon_set[65]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Enhanced MISSILE" ) then
					telekicon_set[61]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Experimental Sand" ) then
					telekicon_set[22]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Fallout Shotgun HE9000" ) then
					telekicon_set[23]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Garuda's Wing" ) then
					telekicon_set[24]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Gemini" ) then
					telekicon_set[25]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "GreatDragon the Aptituded" ) then
					telekicon_set[26]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Grey Shark" ) then
					telekicon_set[27]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Hatred Ray" ) then
					telekicon_set[28]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Highly Flammable Felines" ) then
					telekicon_set[29]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Hydra" ) then
					telekicon_set[30]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Icarus" ) then
					telekicon_set[31]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Javelin Vulcan" ) then
					telekicon_set[32]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Kynthos Bow" ) then
					telekicon_set[33]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Lachesis Shotgun MM031" ) then
					telekicon_set[34]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Loki Shotgun AR360" ) then
					telekicon_set[63]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Lovely Despise" ) then
					telekicon_set[35]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Lustful Punishment" ) then
					telekicon_set[36]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Medusa Shotgun CL032" ) then
					telekicon_set[37]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Mysre Song Zero" ) then
					telekicon_set[38]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Naigez's Explosive Bacteria" ) then
					telekicon_set[39]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "No G(u)ard Live" ) then
					telekicon_set[40]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "OR Genesis 9R34" ) then
					telekicon_set[41]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Pretty Princess Railgun" ) then
					telekicon_set[42]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Ranshiin the Wind" ) then
					telekicon_set[43]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Retentions of Rue" ) then
					telekicon_set[44]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Screw Attack" ) then
					telekicon_set[45]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Shaeiki" ) then
					telekicon_set[46]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Shiron's Wing Tornado" ) then
					telekicon_set[47]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "SilverDragon[M] the Arbiter" ) then
					telekicon_set[48]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Sleipnir Shotgun LD3CNGD" ) then
					telekicon_set[49]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Sune-Ku Shotgun SQ159" ) then
					telekicon_set[50]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Telekinesis Defensive" ) then
					telekicon_set[51]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Telekinesis Offensive" ) then
					telekicon_set[52]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Twilight Ignorance SMP2XA" ) then
					telekicon_set[53]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Unicorn's Horn" ) then
					telekicon_set[54]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Vampire Bane" ) then
					telekicon_set[55]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Vengeance" ) then
					telekicon_set[56]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Vuhlian Sphere" ) then
					telekicon_set[57]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Warrock" ) then
					telekicon_set[58]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Wave Cannon" ) then
					telekicon_set[62]:render(bitmap, 0, bitmap:w()-10, 23)
				elseif ( wname == "Zegian the Envisioner" ) then
					telekicon_set[59]:render(bitmap, 0, bitmap:w()-10, 23)
				else
					telekicon_set[0]:render(bitmap, 0, bitmap:w()-10, 23)
				end
			end
			if player:data().weaponSelection == nil then
				if player:name() == "GD" and wname == "Enhanced MINIGUN" then
						wname = randomCharacter(6) .. " MINIGUN"
					end
				if (string.len(wname) > 27) then
					local offsetVar = string.len(wname) - 27
					fonts.minifont:render( bitmap, wname, bitmap:w()-109-offsetVar*4, 9, color(255, 255, 0), Font.Shadow )
				else
					fonts.minifont:render( bitmap, wname, bitmap:w()-109, 9, color(255, 255, 0), Font.Shadow )
				end
			end
			bulletMeter:render(bitmap, 0, bitmap:w()-105, 3)
			
			--
				if (wname == "Wave Cannon" and worm:player():data().weaponSelection == nil and worm:player():data().waveCannonCharge ~= nil) then
					 
					hudtools.drawVBarDefault( bitmap, worm:player():data().waveCannonCharge, bitmap:w()-10, 50, 5, 50,  worm:player(), 200)
					if worm:player():data().waveCannonCharge < 200 then
						fonts.minifont:render( bitmap, "Beam", bitmap:w()-31, 41, color(50, 100, 255), Font.Shadow )
					elseif worm:player():data().waveCannonCharge < 300 then
						fonts.minifont:render( bitmap, "High", bitmap:w()-31, 41, color(40, 250, 200), Font.Shadow )
					elseif worm:player():data().waveCannonCharge < 400 then
						fonts.minifont:render( bitmap, "Strong", bitmap:w()-31, 41, color(140, 255, 140), Font.Shadow )
					elseif worm:player():data().waveCannonCharge < 500 then
						fonts.minifont:render( bitmap, "Great", bitmap:w()-31, 41, color(190, 255, 150), Font.Shadow )
					elseif worm:player():data().waveCannonCharge < 600 then
						fonts.minifont:render( bitmap, "Special", bitmap:w()-31, 41, color(200, 200, 100), Font.Shadow )
					elseif worm:player():data().waveCannonCharge < 700 then
						fonts.minifont:render( bitmap, "Devil", bitmap:w()-31, 41, color(255, 150, 100), Font.Shadow )
					else
						fonts.minifont:render( bitmap, "Bydo", bitmap:w()-31, 41, color(255, 100, 100), Font.Shadow )
					end
				end
				
				--WAVE CANNON
			
			
			end
			
			elseif (worm:player():data().showGUI == 1)  then
				local w = worm:current_weapon()
				if w ~= nil then
				hudFont:render( bitmap, "Make your selection.", bitmap:w()/2, 25, color(255, 255, 255), Font.Shadow + Font.CenterH )
				end
		end --HERE IS GUI
			
			--fonts.minifont:render(bitmap,  round(filled*100), bitmap:w()-71, 10, color(255, 255, 255), 0)
		end
	end
end

function mySplit(inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={} ; i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = str
                i = i + 1
        end
        return t
end

function tableLength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function randomCharacter(size)
	local char_e_selection = {}
	char_e_selection[0] = "" --Left triangle
	char_e_selection[1] = "" --Underline up down arrow
	char_e_selection[2] = "" --That tombstone looking thing
	char_e_selection[3] = "" --Up down arrow
	char_e_selection[4] = "" --Paragraph symbol
	char_e_selection[5] = "" --Section Symbol
	char_e_selection[6] = "" --Circle
	char_e_selection[7] = "" --Generic Currency Symbol
	char_e_selection[8] = "" --Right Triangle
	char_e_selection[9] = "" --Left arrow
	char_e_selection[10] = "" --Left right arrow
	char_e_selection[11] = "" --Right Angle
	char_e_selection[12] = "" --Blank Square
	char_e_selection[13] = "" --Double Exclamation
	char_e_selection[14] = "" --Diamond
	char_e_selection[15] = "" --Spade
	char_e_selection[16] = "" --Dot
	char_e_selection[17] = "" --Square Circle
	char_e_selection[18] = "" --Female
	char_e_selection[19] = "" -- Upper Score
	char_e_selection[20] = "" -- Happy Face
	char_e_selection[21] = "" -- Heart
	char_e_selection[22] = "" -- Doublenote
	char_e_selection[23] = "" -- Up arrow
	char_e_selection[24] = "" -- Right arrow
	local randyString
	randyString = ""
	for i=0,size do
		randyString = randyString .. char_e_selection[math.random(0,24)]
	end
	return randyString
end

function common.initWeaponSelection()
	if not DEDSERV then
		local maxSelectableWeapons = 10
		local selectWeaponStart = maxSelectableWeapons+1
		local selectWeaponCount = selectWeaponStart+1
		function bindings.viewportRender(viewport, worm)
			local bitmap = viewport:bitmap()
			local player = worm:player()
			if player:data().glow == nil then
				player:data().glow = 0
				player:data().glowFlag = false
			end
			if player and player:data().weaponSelection then
				local o = player:data().weaponSelection
				local cla = player:data().raceSelection
				local y = (bitmap:h() - selectWeaponCount*10) / 2
				local x
				if (bitmap:w() >= 320) then
				x = (bitmap:w() - 60) / 10
				else
				x = (bitmap:w() - 60) / 4
				end
				local i = 0
				local function drawRow(name)
					if i == o.cur then
						fonts.liero:render(
							bitmap,
							name,
							x, y,
							color(50+player:data().glow, 190+player:data().glow, 50+player:data().glow), Font.Shadow)
							if player:data().glowFlag then
								player:data().glow = player:data().glow + 0.1
								if player:data().glow > 65 then
									player:data().glowFlag = false
								end
							else
								player:data().glow = player:data().glow - 0.1
								if player:data().glow <= 0 then
									player:data().glowFlag = true
								end
							end
					else
						fonts.liero:render(
							bitmap,
							name,
							x, y,
							color(255, 255, 255), Font.Shadow)
					end
					y = y + 10
					i = i + 1
				end
				local w = worm:current_weapon()
				if w ~= nil then
				drawRow("Randomize")
				
				while i <= maxSelectableWeapons do
					drawRow(o.list[i]:name())
				end
				
				drawRow("Start!")
				drawRow("Race: " .. cla.list[cla.cur])
				local w = worm:current_weapon()
				else
					local hudFont = fonts.liero
					hudFont:render( bitmap, "Weapon number error detected. Please rejoin the server to fix the error.", bitmap:w()/2, 35, color(255, 0, 0), Font.Shadow + Font.CenterH )
					hudFont:render( bitmap, "This error generally occurs when you join a server from another mod.", bitmap:w()/2, 45, color(255, 0, 0), Font.Shadow + Font.CenterH )
				end
				if (o.cur == 12 and bitmap:w() >=320) then
					--RACE INFO HERE
					gfx_set_alpha(50)
					bitmap:draw_box(145, 55, 315, 135, color(64,128,0))
					gfx_reset_blending()
					local raceDesc
					if player:data().raceSelection ~= nil then
						if player:data().raceSelection.cur == 0 then
							raceDesc = mySplit("Worms are creatures that are commonly•found lurking in soil or underground areas. They•are invertebrates of lacking a skeleton.•However, they maintain their structure with•fluid-filled coelom chambers that functions as•a hydrostatic skeleton.•They have been described to be savagely•cunning, dexterous and agile with their•scavanged weapons and stolen arts.", "•")
						elseif player:data().raceSelection.cur == 1 then
							raceDesc = mySplit("Dragons are one of the most intelligent winged •life forms. They don't typically coexist with•other races. They're often seen as frightening•because of their heritage. In some instances,•they may befriend with scholars,•dragon-obsessed, and other dragon-esque•races. They are reported to have knowledge•of arcane arts to magicry and kinetic abilities.•Their kinds are imperiled.", "•")
						elseif player:data().raceSelection.cur == 2 then
							raceDesc = mySplit("Sharks reside in oceans, seas and underground•lakes, and under water caves. They have a•finned tail and dorsal fins as well as gills. They•are quite formidable as a foe, being one of the•quite aggressive races.•One of their driving forces is the smell and•sight of their prey's blood. Their jaws are•extremely sharp, capable of destroying steel.•They're not known for forgiveness.", "•")
						elseif player:data().raceSelection.cur == 3 then
							raceDesc = mySplit("Little is known about the Phantom. The•phantom is often described to be a•supernatural race, akin to a ghost. They have a•chilling aura that is even visible to the naked•eye.•It feeds on other's life force to sustain itself•which consequently makes it a sinister entity.•It is able to reanimate corpses to use as its•corporeal form to kill others for its feeding.", "•")
						elseif player:data().raceSelection.cur == 4 then
							raceDesc = mySplit("Lupines, generally a social beast-folk, often•seen civilized. They're covered in fur, making•them comfy in colder weathers. They're not•unintelligent in the slightest, generally. They•can speak and also communicate non-verbally•and convey messages with little words. They•can be qutie xenophobic, but it can vary. Very•few commoners would dare pit against them.•They can often be mistaken for lycanthropes.", "•")
						else
							raceDesc = mySplit("Unknown.•No description found.", "•")
						end
					end
					local raceTableSize = tableLength(raceDesc)
					local hudFont = fonts.liero
					
					for iSize=1, raceTableSize, 1 do
						hudFont:render( bitmap, raceDesc[iSize], bitmap:w()-170, 52+8*iSize, color(255,255,255), Font.Shadow )
					end
				end

				if (player:data().weaponSelecto ~= nil and bitmap:w() >= 320) then
					--NEW CODE STARTS HERE FOR GUI!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
					if (o.cur > 0 and o.cur < maxSelectableWeapons + 1) then
						
						--print(player:data().weaponSelecto)
						local hudFont = fonts.liero
						local mainColorio = color (255, 255, 255)
						gfx_set_alpha(50)
						bitmap:draw_box(145, 55, 315, 235, color(0,128,64))
						gfx_reset_blending()
						hudFont:render( bitmap, "WEAPON: " .. player:data().weaponSelecto, bitmap:w()-170, 60, mainColorio, Font.Shadow )
						
						local weaponStrength
						local weaponStrengthColor 
						local weaponRoF
						local weaponRoFColor
						local weaponRanger
						local weaponRangerColor
						local weaponAoeSize
						local weaponAoeSizeColor
						local weaponDesc
						
						if (player:data().weaponSelecto == "Achilles Shotgun LS969") then
							weaponStrength = "Strong"
							weaponStrengthColor = color(252, 208, 11)
							weaponRoF = "Slow"
							weaponRoFColor = color(98, 164, 216)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6) 
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("This pump-action shotgun fires incendiary•rounds, it's damage is retained regardless of•its shot range. However, it's recommended to•be used for close-range to ensure all pellets•rend your foe.• •Its rounds are capable of destroying terrain,•of which consequently caused the models•LS969 production line to end due to protests•of its excessive force of its buckshots.• •Manufactured by Torque Industries.• •\"I used to be an adventurer like you, then I•took a shotgun blast in the heel.\"", "•")
						elseif (player:data().weaponSelecto == "Anaconda") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Small"
							weaponAoeSizeColor = color(98, 164, 216)
							weaponDesc = mySplit("This is gadget fires a group of bubbles of•highly acidic chemicals with structures strong•enough to support an entity on, however, pop•against any foreign materials. This tool can be•used elevate one's self to a higher ground.• •The victims of the chemicals describe the acid•contact being the most excruciatingly painful,•their limbs have been completely eroded in the•process and their lungs, almost completely•destroyed.• •Manufactured by Yumemiru Inc.• •\"Unbelievabubble!\"", "•")
						elseif (player:data().weaponSelecto == "Arrow Storm") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Normal"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "N/A"
							weaponRangerColor = color(255, 164, 5)
							weaponAoeSize = "Enormous"
							weaponAoeSizeColor = color(251, 62, 141)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Ascension") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Melee"
							weaponRangerColor = color(255, 255, 255)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6) 
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Beast Swipe Data") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Quick"
							weaponRoFColor = color(255, 164, 5)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Small"
							weaponAoeSizeColor = color(98, 164, 216)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Biokinesis") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "N/A"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Mini"
							weaponAoeSizeColor = color(255, 255, 255)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Cerebral Bore Launcher RX-5") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "Sluggish"
							weaponRoFColor = color(255, 255, 255)
							weaponRanger = "Distant"
							weaponRangerColor = color(255, 164, 5)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Chilling Empathy") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Quick"
							weaponRoFColor = color(255, 164, 5)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6) 
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Combat Manipulator") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "N/A"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Cthul Cybernetic Laser Deployer") then
							weaponStrength = "Low"
							weaponStrengthColor = color(98, 164, 216)
							weaponRoF = "Rapid"
							weaponRoFColor = color(251, 62, 141)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Cthul Primary Cannon") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Slow"
							weaponRoFColor = color(98, 164, 216)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Huge"
							weaponAoeSizeColor = color(255, 164, 5)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Cthul Scope Liquidator") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Sniper"
							weaponRangerColor = color(76, 19, 157)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Cthul the Serpent") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Enormous"
							weaponAoeSizeColor = color(251, 62, 141)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Daedalus Shotgun HV916") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Slow"
							weaponRoFColor = color(98, 164, 216)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Small"
							weaponAoeSizeColor = color(98, 164, 216)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Dragon's Eye") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "Sluggish"
							weaponRoFColor = color(255, 255, 255)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Enormous"
							weaponAoeSizeColor = color(251, 62, 141)
							weaponDesc = mySplit("The Dragon's Eye, colloquially called the•\"black hole grenade\", an alien technology that•causes the device to approach near infinte•mass. This creates a gravitational singularity,•drawing objects inwards which eventually•destabilizes, returning to its normal mass•with explosive results.• •It's, studied by many researchers, none •understood how its own mass increases.• •Origins is possibly an extinct sentient race.• •\"Alright now, who's bright idea was it to•divide by zero?\"", "•")
						elseif (player:data().weaponSelecto == "Electrokinesis Agility") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Quick"
							weaponRoFColor = color(255, 164, 5)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("A technique in which the user can manipulate•electricity. The strength of this ability is•enough to shock an entire team to death. This•particular style focuses on speed, having no•time to ionize enivoronment. This results the•electrical charges dissipating faster.•It is unknown where this technique came to•be, but it is commonly said that it originated•from ancient dragons as they were known have•mastery over hurricanes and storms.•Presently, many dragons have mastery over•electrical energy. A clan of dragons known as•the \"Voices of Lightning\" demonstrate•prowess in this ability to the point they could•manipulate the colour of their lightning to any•as they wish.", "•")
						elseif (player:data().weaponSelecto == "Electrokinesis Persistance") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Enhanced BAZOOKA") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("It maintains nice trajectory while being heavy.", "•")
						elseif (player:data().weaponSelecto == "Enhanced BOUNCY LARPA") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("A modified larpa that bounces off walls•instead. A trade off is that it does not travel•very far as well as its rate of fire.", "•")
						elseif (player:data().weaponSelecto == "Enhanced LARPA") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Basically a tactical assault weapon that drops•particles in its wake as it moves. It can ward•foes away from their cover.", "•")
						elseif (player:data().weaponSelecto == "Enhanced LASER") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "Subsonic"
							weaponRoFColor = color(76, 19, 157)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Not as useful for drilling holes in the ground.•It'll hurt if you manage to keep the laser on•your foe. Nothing to special about this gun•otherwise.", "•")
						elseif (player:data().weaponSelecto == "Enhanced MINIGUN") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "Rapid"
							weaponRoFColor = color(251, 62, 141)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Stronger than the chaingun. Pretty much•renders the chaingun obsolete, has faster•rate of fire, although slightly inaccurate.", "•")
						elseif (player:data().weaponSelecto == "Enhanced MINI ROCKETS") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "Rapid"
							weaponRoFColor = color(251, 62, 141)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "Mini"
							weaponAoeSizeColor = color(255, 255, 255)
							weaponDesc = mySplit("Compact, easy to use, fast firing and dirt\•obliterating.", "•")
						elseif (player:data().weaponSelecto == "Enhanced MISSILE") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Sluggish"
							weaponRoFColor = color(255, 255, 255)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("Great to use to hunt down your pesky enemies.•Better if the area you fire this in is quite•open.", "•")
						elseif (player:data().weaponSelecto == "Experimental Sand") then
							weaponStrength = "N/A"
							weaponStrengthColor = color(170, 170, 170)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Fallout Shotgun HE9000") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Sluggish"
							weaponRoFColor = color(255, 255, 255)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("This shotgun fires a high-power explosion that•destroys everything in it's path. Due to the•nature of the heat generated by the explosion,•it condenses rather than expanding in small•areas.• •This is the last shotgun manufactured by•Torque Industries before going bankrupt.•From the interview with Torque's CEO: \"The•Fallout Shotgun, named for it's effective use•in the event of a fallout, and not for causing•them, is guaranteed safe and can be used on\•wildlife with no traces of radiation or burns.\"• •This gun came with full body shock dampers.•Wow.", "•")
						elseif (player:data().weaponSelecto == "Garuda's Wing") then
							weaponStrength = "Strong"
							weaponStrengthColor = color(252, 208, 11)
							weaponRoF = "Slow"
							weaponRoFColor = color(98, 164, 216)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Massive"
							weaponAoeSizeColor = color(76, 19, 157)
							weaponDesc = mySplit("Description is missing.• •\"You dare bring light to my lair? You must die!\"", "•")
						elseif (player:data().weaponSelecto == "Gemini") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Manual - Quick"
							weaponRoFColor = color(220, 36, 31)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "GreatDragon the Aptituded") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Melee"
							weaponRangerColor = color(255, 255, 255)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Grey Shark") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Manual"
							weaponRoFColor = color(220, 36, 31)
							weaponRanger = "Subsniper"
							weaponRangerColor = color(251, 62, 141)
							weaponAoeSize = "Local"
							weaponAoeSizeColor = color(98, 164, 216)
							weaponDesc = mySplit("The Grey Shark is a powerful•semi-automatic pistol chambered•with 10 rounds. It is a powerful sidearm•that fires .50 at such strong forces, the•air around the bullet is pushed forward along•with any projectiles in the vicinity.• •The name Grey Shark came from the fact that•a single bullet shot from this gun appearing•large, grey and looming, could dismember a•limb.• •Manufactured by Vinkar.• •\"I think it smells blood.\"", "•")
						elseif (player:data().weaponSelecto == "Hatred Ray") then
							weaponStrength = "Strong"
							weaponStrengthColor = color(252, 208, 11)
							weaponRoF = "N/A"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Highly Flammable Felines") then
							weaponStrength = "Menial"
							weaponStrengthColor = color(255, 255, 255)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Small"
							weaponAoeSizeColor = color(98, 164, 216)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Hydra") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Huge"
							weaponAoeSizeColor = color(255, 164, 5)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Icarus") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Manual"
							weaponRoFColor = color(220, 36, 31)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Javelin Vulcan") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Subsonic"
							weaponRoFColor = color(76, 19, 157)
							weaponRanger = "Distant"
							weaponRangerColor = color(255, 164, 5)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Kynthos Bow") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Subsniper"
							weaponRangerColor = color(251, 62, 141)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Lachesis Shotgun MM031") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Quick"
							weaponRoFColor = color(255, 164, 5)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Loki Shotgun AR360") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "Enormous"
							weaponAoeSizeColor = color(251, 62, 141)
							weaponDesc = mySplit("The Loki Shotgun, named for it's chaotic firing•patterns, fires a gigantic spray of Aeron Tech•cybernetic drone bullets, which use nanoscopic•fins to modify flight direction at random,•causing it to spray massively and even linger•afterwards. They also act as advanced•proximity mines, however they do not explode•after impacting a wall.• •Users of the shotgun have described the firing•sound to be a spine-chilling ghastly scream,•possibly due to the unusual firing mechanisms•causing large exoduses of pressurized air.• •Manufactured by Torque Industries in•cooperation with Aeron.", "•")
						elseif (player:data().weaponSelecto == "Lovely Despise") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Quick"
							weaponRoFColor = color(255, 164, 5)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Lustful Punishment") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Medusa Shotgun CL032") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Rapid"
							weaponRoFColor = color(251, 62, 141)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Mysre Song Zero") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "Slow"
							weaponRoFColor = color(98, 164, 216)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Enormous"
							weaponAoeSizeColor = color(251, 62, 141)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Naigez's Explosive Bacteria") then
							weaponStrength = "Low"
							weaponStrengthColor = color(98, 164, 216)
							weaponRoF = "Sluggish"
							weaponRoFColor = color(255, 255, 255)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Massive"
							weaponAoeSizeColor = color(76, 19, 157)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "No G(u)ard Live") then
							weaponStrength = "Strong"
							weaponStrengthColor = color(252, 208, 11)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "OR Genesis 9R34") then
							weaponStrength = "Strong"
							weaponStrengthColor = color(252, 208, 11)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "Small"
							weaponAoeSizeColor = color(98, 164, 216)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Pretty Princess Railgun") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Slow"
							weaponRoFColor = color(98, 164, 216)
							weaponRanger = "Sniper"
							weaponRangerColor = color(76, 19, 157)
							weaponAoeSize = "Enormous"
							weaponAoeSizeColor = color(251, 62, 141)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Ranshiin the Wind") then
							weaponStrength = "Strong"
							weaponStrengthColor = color(252, 208, 11)
							weaponRoF = "Sluggish"
							weaponRoFColor = color(255, 255, 255)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Retentions of Rue") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Distant"
							weaponRangerColor = color(255, 164, 5)
							weaponAoeSize = "Mini"
							weaponAoeSizeColor = color(255, 255, 255)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Screw Attack") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "N/A"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "Melee"
							weaponRangerColor = color(255, 255, 255)
							weaponAoeSize = "Mini"
							weaponAoeSizeColor = color(255, 255, 255)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Shaeiki") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Shiron's Wing Tornado") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Sniper"
							weaponRangerColor = color(76, 19, 157)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "SilverDragon[M] the Arbiter") then
							weaponStrength = "Low"
							weaponStrengthColor = color(98, 164, 216)
							weaponRoF = "Sluggish"
							weaponRoFColor = color(255, 255, 255)
							weaponRanger = "Distant"
							weaponRangerColor = color(255, 164, 5)
							weaponAoeSize = "Enormous"
							weaponAoeSizeColor = color(251, 62, 141)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Sleipnir Shotgun LD3CNGD") then
							weaponStrength = "Strong"
							weaponStrengthColor = color(252, 208, 11)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Distant"
							weaponRangerColor = color(255, 164, 5)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Sune-Ku Shotgun SQ159") then
							weaponStrength = "Low"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Telekinesis Defensive") then
							weaponStrength = "N/A"
							weaponStrengthColor = color(170, 170, 170)
							weaponRoF = "N/A"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "Local"
							weaponRangerColor = color(98, 164, 216)
							weaponAoeSize = "Small"
							weaponAoeSizeColor = color(98, 164, 216)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Telekinesis Offensive") then
							weaponStrength = "Low"
							weaponStrengthColor = color(98, 164, 216)
							weaponRoF = "N/A"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Small"
							weaponAoeSizeColor = color(98, 164, 216)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Twilight Ignorance SMP2XA") then
							weaponStrength = "Powerful"
							weaponStrengthColor = color(255, 164, 5)
							weaponRoF = "Subsonic"
							weaponRoFColor = color(76, 19, 157)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Unicorn's Horn") then
							weaponStrength = "Terminal"
							weaponStrengthColor = color(76, 19, 157)
							weaponRoF = "Subsonic"
							weaponRoFColor = color(76, 19, 157)
							weaponRanger = "Melee"
							weaponRangerColor = color(255, 255, 255)
							weaponAoeSize = "Enormous"
							weaponAoeSizeColor = color(251, 62, 141)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Vampire Bane") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Rapid"
							weaponRoFColor = color(251, 62, 141)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Vengeance") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Fast"
							weaponRoFColor = color(252, 208, 11)
							weaponRanger = "Subsniper"
							weaponRangerColor = color(251, 62, 141)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("Description is missing.", "•")
						elseif (player:data().weaponSelecto == "Vuhlian Sphere") then
							weaponStrength = "Strong"
							weaponStrengthColor = color(252, 208, 11)
							weaponRoF = "Normal"
							weaponRoFColor = color(26, 147, 6)
							weaponRanger = "Far"
							weaponRangerColor = color(252, 208, 11)
							weaponAoeSize = "Large"
							weaponAoeSizeColor = color(252, 208, 11)
							weaponDesc = mySplit("Description is missing.• •\"I think he got the point\"", "•")
						elseif (player:data().weaponSelecto == "Warrock") then
							weaponStrength = "Normal"
							weaponStrengthColor = color(26, 147, 6)
							weaponRoF = "N/A"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Normal"
							weaponAoeSizeColor = color(26, 147, 6)
							weaponDesc = mySplit("Description is missing.• •\"Remember, when there's smoke, there's•fire.\"", "•")
						elseif (player:data().weaponSelecto == "Wave Cannon") then
							weaponStrength = "Variable"
							weaponStrengthColor = color(220, 36, 31)
							weaponRoF = "Variable"
							weaponRoFColor = color(220, 36, 31)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Variable"
							weaponAoeSizeColor = color(220, 36, 31)
							weaponDesc = mySplit("This is a prototype weapon.", "•")
						elseif (player:data().weaponSelecto == "Zegian the Envisioner") then
							weaponStrength = "Destructive"
							weaponStrengthColor = color(251, 62, 141)
							weaponRoF = "Manual - Normal - Rapid"
							weaponRoFColor = color(220, 36, 31)
							weaponRanger = "Normal"
							weaponRangerColor = color(26, 147, 6)
							weaponAoeSize = "Normal - Large"
							weaponAoeSizeColor = color(220, 36, 31)
							weaponDesc = mySplit("Description is missing.", "•")
						else
							weaponStrength = "N/A"
							weaponStrengthColor = color(170, 170, 170)
							weaponRoF = "N/A"
							weaponRoFColor = color(170, 170, 170)
							weaponRanger = "N/A"
							weaponRangerColor = color(170, 170, 170)
							weaponAoeSize = "N/A"
							weaponAoeSizeColor = color(170, 170, 170)
							weaponDesc = mySplit("This weapon, sadly, has no identified•description. Maybe it will, maybe it will not,•who knows?", "•")
						end
						
						hudFont:render( bitmap, "STRENGTH: " .. weaponStrength, bitmap:w()-170, 68, mainColorio, Font.Shadow )
						hudFont:render( bitmap, weaponStrength, bitmap:w()-128, 68, weaponStrengthColor, Font.Shadow )
						
						hudFont:render( bitmap, "RATE OF FIRE: ", bitmap:w()-170, 76, mainColorio, Font.Shadow )
						hudFont:render( bitmap, weaponRoF, bitmap:w()-114, 76, weaponRoFColor, Font.Shadow )
						
						hudFont:render( bitmap, "RANGE: ", bitmap:w()-170, 84, mainColorio, Font.Shadow )
						hudFont:render( bitmap, weaponRanger, bitmap:w()-141, 84, weaponRangerColor, Font.Shadow )

						hudFont:render( bitmap, "AREA OF EFFECT: ", bitmap:w()-170, 92, mainColorio, Font.Shadow )
						hudFont:render( bitmap, weaponAoeSize, bitmap:w()-103, 92, weaponAoeSizeColor, Font.Shadow )

						local weaponTableSize = tableLength(weaponDesc)
						for iSize=1, weaponTableSize, 1 do
							hudFont:render( bitmap, weaponDesc[iSize], bitmap:w()-170, 100+8*iSize, mainColorio, Font.Shadow )
						end
					end
				end
			end
		end
		
		local function randomWeapons()
			local list = {}
			
			for i = 1, maxSelectableWeapons do
				local ok
				
				repeat
					list[i] = weapon_random()
					
					if weapon_count() < maxSelectableWeapons then
						break
					end
					
					ok = true
					for j = 1, i-1 do
						if list[j] == list[i] then
							ok = false
						end
					end
				until ok
			end
			
			return list
		end
		
		function bindings.localplayerEvent(player, event, state)
			local o = player:data().weaponSelection
			local cla = player:data().raceSelection
			local w = player:worm():current_weapon()

			
			if (not player:worm():is_changing()) then
				if (event == Player.Right or event == Player.Left) then
					player:data().worm_moving_timer_flag = not player:data().worm_moving_timer_flag
					player:data().worm_moving_timer = 0
				end
			else
				player:data().worm_moving_timer_flag = false
				player:data().worm_moving_timer = 0
			end


			if event == Player.Jump and player:worm():health() > 0 and player:name() == "Bimmy" and player:data().raceSelection.cur == 0 then
				fart_sync_trigger(player:worm())
			end
			if o then
				if state and w ~= nil then
					if event == Player.Down then
						o.cur = o.cur + 1
						if o.cur >= selectWeaponCount +1 then --changed, had no +1
							o.cur = 0
						end
						miscSound_set[4]:play(0,0,100,1,0)
					elseif event == Player.Up then
						o.cur = o.cur - 1
						if o.cur < 0 then
							o.cur = selectWeaponCount --changed was -1
						end
						miscSound_set[4]:play(0,0,100,1,0)
					elseif event == Player.Fire then
						o.pressed = true
					elseif o.list[o.cur] then
						if event == Player.Left then
							miscSound_set[4]:play(0,0,100,1,0)
							o.list[o.cur] = o.list[o.cur]:prev()
						elseif event == Player.Right then
							miscSound_set[4]:play(0,0,100,1,0)
							o.list[o.cur] = o.list[o.cur]:next()
						end
						
					elseif o.cur == selectWeaponCount then
						if event == Player.Left then
							if cla.cur > 0 then
								cla.cur = cla.cur  - 1
							else
								cla.cur = cla.lim
							end
							miscSound_set[6]:play(0,0,100,1,0)
						elseif event == Player.Right then
							if cla.cur < cla.lim then
								cla.cur = cla.cur  + 1
							else
								cla.cur = 0
							end
							miscSound_set[6]:play(0,0,100,1,0)
						end
					end
				else
					if event == Player.Fire then
						o.pressed = false
					end
				end
				--DETECTOR HEREEEEEEEEEEEEEEEEEEEE
						--print(o.cur)
				if (o.cur > 0 and o.cur < maxSelectableWeapons+1 ) then
					--print(o.list[o.cur]:name())
					player:data().weaponSelecto = o.list[o.cur]:name()
				end
				return true -- Swallow all events if we're in weapon selection
			end
		end
		
		local obj_lupinetail = {}
		obj_lupinetail[0] = {}
		obj_lupinetail[0][0] = load_particle("lupine_race_0_0.obj")
		obj_lupinetail[0][1] = load_particle("lupine_race_0_1.obj")
		obj_lupinetail[0][2] = load_particle("lupine_race_0_1.obj")
		obj_lupinetail[0][3] = load_particle("lupine_race_0_2.obj")
		obj_lupinetail[0][4] = load_particle("lupine_race_0_2.obj")
		obj_lupinetail[0][5] = load_particle("lupine_race_0_3.obj")
		obj_lupinetail[0][6] = load_particle("lupine_race_0_3.obj")
		obj_lupinetail[0][7] = load_particle("lupine_race_0_0.obj")
		obj_lupinetail[0][8] = load_particle("lupine_race_0_0.obj")
		
		function bindings.playerUpdate(player)
			local o = player:data().weaponSelection
			
			--
			if player:data().worm_moving_timer_flag then
				player:data().worm_moving_timer = player:data().worm_moving_timer + 0.211
				player:data().worm_moving_timer = round(player:data().worm_moving_timer,3)
				if tonumber(player:data().worm_moving_timer) >= 8 then
					player:data().worm_moving_timer = 1
					local xpls, yplx = player:worm():spd()
					if (player:worm():is_changing()) or (xpls >= -0.2 and xpls <= 0.2) then
						if player:data().worm_moving_timer_flag then
						player:data().worm_moving_timer_flag = false
						player:data().worm_moving_timer = 0
						end
					end
					if player:data().raceSelection.cur == 4 then
						lupine_sync_trigger(player:worm())
					end
					--LUPINEMOVE
					
				end
				--print(round(player:data().worm_moving_timer))
			end
			--BUBBLE GOES HERE
			if player:data().isChatting == 1 and player:worm():health() > 0 then
				local x, y = player:worm():pos()
				obj_otherSet[0]:put(x+5,y-8)
			end
			if player:data().torch == 1 and player:worm():health() > 0 then
				player:worm():shoot(obj_otherSet[1], 1, 1, 0, 0, 0, 0, 0, 5)
			end
			--SECRET
			--GD SHELL
			--[[]]--
			if (player:data().raceSelection ~= nil) then
				if (player:data().raceSelection.cur ~= nil) then
					if (player:worm():health() > 0) then
						if (player:data().raceSelection.cur == 1) then
							if get_name_colour(player:name()) <= 7 then
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_dragonwings[get_name_colour(player:name())], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_dragonwings[get_name_colour(player:name())], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
								if get_name_colour(player:name()) == 0 then
									if math.random(0,28) == 0 then
										player:worm():shoot(obj_dragonparticle_set[0], 1, 0.05, 0.05, 0, 0, 360, 0, math.random(0,2))
									end
									if math.random(0,28) == 0 then
										player:worm():shoot(obj_dragonparticle_set[19], 1, 0.05, 0.05, 0, 0, 360, 0, math.random(0,2))
									end
								elseif get_name_colour(player:name()) == 1 then
									if math.random(0,7) == 0 then
										player:worm():shoot(obj_dragonparticle_set[1], 1, 0, 0, 0, 0, 360, 0, math.random(0,2))
									end
									if math.random(0,14) == 0 then
										player:worm():shoot(obj_dragonparticle_set[18], 1, 0, 0, 0, 0, 360, 0, math.random(0,2))
									end
								elseif get_name_colour(player:name()) == 2 then
									if math.random(0,14) == 0 then
										player:worm():shoot(obj_dragonparticle_set[2], 1, 0.1, 0.1, 0, 0, 360, 0, math.random(0,2))
									end
									if math.random(0,21) == 0 then
										player:worm():shoot(obj_dragonparticle_set[17], 1, 0.1, 0.1, 0, 0, 360, 0, math.random(0,2))
									end
								elseif get_name_colour(player:name()) == 3 then
									if math.random(0,64) == 0 then
										player:worm():shoot(obj_dragonparticle_set[3], 1, 0.1, 0.1, 0, 0, 360, 0, math.random(0,2))
									end
									if math.random(0,64) == 0 then
										player:worm():shoot(obj_dragonparticle_set[20], 1, 0.1, 0.1, 0, 0, 360, 0, math.random(0,2))
									end
									if math.random(0,48) == 0 then
										player:worm():shoot(obj_dragonparticle_set[21], 1, 0.1, 0.1, 0, 0, 360, 0, math.random(0,2))
									end
								elseif get_name_colour(player:name()) == 4 then
									if math.random(0,30) == 0 then
										player:worm():shoot(obj_dragonparticle_set[4], 1, 0, 0, 0, 0, 360, 0, math.random(0,3))
									end
									if math.random(0,30) == 0 then
										player:worm():shoot(obj_dragonparticle_set[15], 1, 0, 0, 0, 0, 360, 0, math.random(0,3))
									end
								elseif get_name_colour(player:name()) == 5 then
									if math.random(0,60) == 0 then
										player:worm():shoot(obj_dragonparticle_set[5], math.random(1,3), 0.4, 0, 0, 0, 360, 0, 0)
										player:worm():shoot(obj_dragonparticle_set[13], 1, 0, 0, 0, 0, 0, 0, 0)
									end
									if math.random(0,60) == 0 then
										player:worm():shoot(obj_dragonparticle_set[14], math.random(1,3), 0.4, 0, 0, 0, 360, 0, 0)
										player:worm():shoot(obj_dragonparticle_set[13], 1, 0, 0, 0, 0, 0, 0, 0)
									end
								elseif get_name_colour(player:name()) == 6 then
									if math.random(0,60) == 0 then
										player:worm():shoot(obj_dragonparticle_set[6], 1, 0.3, 0, 0, 0, 360, 0, 0)
									end
									if math.random(0,60) == 0 then
										player:worm():shoot(obj_dragonparticle_set[12], 1, 0.3, 0, 0, 0, 360, 0, 0)
									end
								elseif get_name_colour(player:name()) == 7 then
									if math.random(0,1) == 0 then
										player:worm():shoot(obj_dragonparticle_set[16], 1, 0.01, 0, 0, 0, 360, 0, 0)
									end
									if (player:worm():angle() == 360) then
										player:worm():shoot(obj_dragonparticle_set[7], 1, 0.01, 0, 0, 0, 0, 1, 0)
										player:worm():shoot(obj_dragonparticle_set[7], 1, 0.01, 0, 0, 0, 360, 0, 0)
									else
										player:worm():shoot(obj_dragonparticle_set[7], 1, 0.01, 0, 0, 0, 0, 0, 0)
										player:worm():shoot(obj_dragonparticle_set[7], 1, 0.01, 0, 0, 0, 360, 0, 0)
									end
									if math.random(0,60) == 0 then
										player:worm():shoot(obj_dragonparticle_set[10], 1, 0, 0, 0, 0, 360, 0,  math.random(0,4))
									end
									if math.random(0,60) == 0 then
										player:worm():shoot(obj_dragonparticle_set[11], 1, 0, 0, 0, 0, 360, 0,  math.random(0,4))
									end
									if math.random(0,60) == 0 then
										player:worm():shoot(obj_dragonparticle_set[9], 1, 0, 0, 0, 0, 360, 0,  math.random(0,4))
									end
									if math.random(0,60) == 0 then
										player:worm():shoot(obj_dragonparticle_set[8], 1, 0, 0, 0, 0, 360, 0,  math.random(0,4))
									end
								end
							elseif get_name_colour(player:name()) == 8 then
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_dragonwings[1], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_dragonwings[1], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
							elseif get_name_colour(player:name()) == 9 then
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_dragonwings[0], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_dragonwings[0], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
							elseif get_name_colour(player:name()) <= 15 then
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_dragonwings[get_name_colour(player:name())-8], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_dragonwings[get_name_colour(player:name())-8], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
							else
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_dragonwings[8], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_dragonwings[8], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
							end
						elseif (player:data().raceSelection.cur == 2) then
							if get_name_colour(player:name()) <= 15 then
							
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_sharkfin[get_name_colour(player:name())], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_sharkfin[get_name_colour(player:name())], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
								
								else
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_sharkfin[16], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_sharkfin[16], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
							end
						elseif (player:data().raceSelection.cur == 3) then
							if (player:worm():angle() == 360) then
								player:worm():shoot(obj_phantomtrail[get_name_colour(player:name())], 1, 0.01, 0, 0, 0, 0, 1, 0)
							else
								player:worm():shoot(obj_phantomtrail[get_name_colour(player:name())], 1, 0.01, 0, 0, 0, 0, 0, 0)
							end
						elseif (player:data().raceSelection.cur == 4) then
							if get_name_colour(player:name()) <= 15 then
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_lupinetail[get_name_colour(player:name())%1][round(tonumber(player:data().worm_moving_timer))%14], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_lupinetail[get_name_colour(player:name())%1][round(tonumber(player:data().worm_moving_timer))%14], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
							else
								if (player:worm():angle() == 360) then
									player:worm():shoot(obj_sharkfin[16], 1, 0.01, 0, 0, 0, 0, 1, 0)
								else
									player:worm():shoot(obj_sharkfin[16], 1, 0.01, 0, 0, 0, 0, 0, 0)
								end
							end
						else
							--DO NOTHING
						end
					end
				end
			end

			if (player:data().woundDelay == nil) then
				player:data().woundDelay = 30
			end
			if (player:worm():health() > 0) and (player:worm():health() <= 50) then --Check if player still exists
				if (player:data().woundDelay <= 0) then
					player:worm():shoot(obj_blood, math.random(1,3), 0.27, 0.27, 1, 0, 360, 0, math.random(0,3))
					player:data().woundDelay = 30 + math.random(-20,player:worm():health()*2)
					else
					player:data().woundDelay = player:data().woundDelay - 1
				end
			end
			--
			if o and o.pressed then --CUSTOM SELECTION GOES HERE OKAY?
				if o.cur == 0 then
					o.list = randomWeapons()
				elseif o.cur == selectWeaponStart then
					if player:worm():current_weapon() ~= nil then
						player:select_weapons(o.list)
						player:data().weaponSelection = nil --GDSTART SYNC GAME START HERE
						race_sync_trigger(player:worm())
						player:data().glowFlag = nil
						player:data().glow = nil
						miscSound_set[5]:play(0,0,100,1,0)
					end
				elseif o.cur == selectWeaponStart + 1 then
					player:data().raceSelection.cur = math.random(0, player:data().raceSelection.lim)
				else
					local ok
					repeat
						o.list[o.cur] = weapon_random()
						
						if weapon_count() < maxSelectableWeapons then
							break
						end
						
						ok = true
						for j = 1, maxSelectableWeapons do
							if j ~= o.cur and o.list[j] == o.list[o.cur] then
								ok = false
							end
						end
					until ok
				end
			end
		end
		
		function bindings.localplayerInit(player)
			player:data().weaponSelection =
			{
				list = randomWeapons(),
				cur = 0 --STARTING WEAPON SELECTION
			}
		end
	end
end

function bindings.wormDeath(worm)
	if tel_debug == 1 then
		print("TELEK-DEBUG: Death detected: [" .. worm:player():name() .. "]")
	end
end

function bindings.playerInit(player)
	local raceList = {}
	raceList[0] = "Worm"
	raceList[1] = "Dragon"
	raceList[2] = "Shark"
	raceList[3] = "Phantom"
	raceList[4] = "Lupine(Buggy)" --Ears and small tail, voice
	raceList[5] = "Feline(Incomplete)" --Whiskers, tail, ears, voice
	raceList[6] = "Raccoon(Incomplete)" --Mask, tail, voice
	raceList[7] = "Ursine(Incomplete)" --Bear Ears, voice
	raceList[8] = "Rabbit(Incomplete)" --Ears
	raceList[9] = "Rattus(Incomplete)" --Pink Tail
	raceList[10] = "Reptilian(Incomplete)" --Dorsal spikes
	raceList[11] = "Avian(Incomplete)" --Female voice, beak
	
	player:data().worm_moving_timer = 0
	player:data().worm_moving_timer_flag = false
	player:data().torch = 0
	player:data().flashScreen = 0
	player:data().raceSelection =
	{
		list = raceList,
		lim = 11,
		cur = 0
	}
end

function bindings.playerNetworkInit(player, connID)
	if tel_debug == 1 then
		print("TELEK-DEBUG: Client detected: [" .. player:name() .. "] connID: " .. connID)
	end
end

function common.init(options)
	if options == nil then
		print("TELEK-FIX: Null options detected. Error is fixed now. Please be aware, while in this mode, you're unable to host or play telek online.")
		options = {hideEnemyHealth = true, hideNames = true}
	end
	common.initHUD(options)
	common.initChat(options)
	common.initScoreboard(options)
	common.initWeaponSelection(options)
	console_register_command("SHOWMENU", function()
		mainm.show()
	end)

	if not DEDSERV then
		mainm.init()
	end

end

global_common_is_loaded = 1

if global_telek_is_loaded ~= 1 then
	telek.init()
end
