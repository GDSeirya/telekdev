function mainm.init()
	connectm.init()
	hostm.init()
	localm.init()
	mapm.init()
	gui_load_gss("menu-common")
	gui_load_gss("main-menu")
	
	local menu = gui_group({id = "menu", group = "main"})
	local title = gui_button({id = "titlehax", label = " "})
	local portSelect = gui_button({id = "selectPort", label = "Set Port"})
	local continueBtn = gui_button({id = "continue", label = "X"})
	local modChooseBtn = gui_button({id = "modChoose", label = "Select"})
	local portField = gui_edit({id = "portfield", label = "Port"})
	local win = gui_window({id = "win"})
	local clearStatBtn = gui_button({id = "clearStat", label = "Clear Status"})
	
	local localBtn = gui_button({id = "local", label = "Local game"})
	local hostBtn = gui_button({id = "host", label = "Host game"})
	local connectBtn = gui_button({id = "connect", label = "Join game"})
	local quitBtn = gui_button({id = "quit", label = "Quit"})
	
	local syncCheck = gui_check({id = "vsync", label = "V-Sync"})
	local fpsCheck = gui_check({id = "sfps", label = "Show FPS"})
	local bloodCheck = gui_check({id = "cblood", label = "Wall Blood"})
	
	local modList = gui_list({id = "modlist"})
	
	win:add({hostBtn, connectBtn, quitBtn, localBtn, syncCheck, modList, modChooseBtn,portField,portSelect, fpsCheck, bloodCheck})
	menu:add({title, continueBtn, win, clearStatBtn})
	gui_root():add(menu)
	local status = gui_label({id = "status"})
	status:set_visibility(true)
	gui_root():add(status)
	modList:add_column("Mod list", 1)
	
	local function showStatus(txt)
		status:set_visibility(true)
		status:set_text(txt)
	end
	
	local function hideStatus()
		status:set_visibility(false)
	end
	
	function bindings.transferUpdate(file, bps, done, size)
		showStatus("Recieving " .. file .. ", " .. floor(100 * done / size) .. "%, " .. round(bps/1000, 2) .. " kB/s")
	end
	
	function bindings.transferFinished()
		hideStatus()
	end
	
	function bindings.gameError(err)
		if err == Error.MapLoading then
			showStatus("Could not load map")
		elseif err == Error.ModLoading then
			showStatus("Could not load mod")
		elseif err == Error.MapNotFound then
			showStatus("Could not find the map")
		elseif err == Error.ModNotFound then
			showStatus("Could not find the mod")
		end
	end
	
	function bindings.networkStateChange(state)
		if state == Network.Connecting then
			showStatus("Connecting...")
		elseif state == Network.Disconnecting then
			showStatus("Disconnecting...")
		elseif state == Network.Disconnected then
			showStatus("Disconnected")
		end
	end
	
	function bindings.gameEnded(reason)
		if reason == EndReason.ServerQuit then
			showStatus("Server disconnected")
		elseif reason == EndReason.ServerChangeMap then
			showStatus("Server is changing map...")
		elseif reason == EndReason.Kicked then
			showStatus("You got kicked from the server")
		elseif reason == EndReason.IncompatibleProtocol then
			showStatus("Your version of gusanos isn't compatible with the server's")
		elseif reason == EndReason.IncompatibleData then
			showStatus("Your data is incompatible with the server's")
		end
	end
	
	--[[
	local menu = gui_load_xml("main-menu")
	local win = menu:child("main-win")
	local connectBtn = win:child("main-connect")
	local hostBtn = win:child("main-host")
	local quitBtn = win:child("main-quit")
	local continueBtn = menu:child("main-continue")

	
	local options = gui_group({id = "options"})
	gui_root():add(options)

	local function make_key_control(w, name)
		local k = console_key_for_action(name)
		w:set_lock(true)
		w:set_text(key_name(k))
		function w:onKeyDown(newk)
			if self:is_active() then
				local oldaction = console_action_for_key(newk)
				if oldaction then
					self:set_text("Used by " .. oldaction)
				else
					local n = key_name(newk)
					console_bind(newk, name)
					console_bind(k, nil) -- Unbind old
					self:set_text(n)
					self:deactivate()
					k = newk
				end
				return true
			end
		end
	end
	
	for _, v in ipairs({"+P0_FIRE", "+P0_CHANGE", "+P0_JUMP"}) do
		local t = gui_edit()
		options:add({t})
		make_key_control(t, v)
	end
]]

	function mainm.isShown()
		return connectm.isShown() or hostm.isShown() or menu:is_visible()
	end

	function mainm.show( )
		if not menu:is_visible() then
			menu:set_visibility(true)
			menu:focus()
			win:focus()
			connectBtn:focus()
			end
		end
		
		
		--Get Mod List
		portField:set_text(console.net_server_port)
		modList:clear()
		for m in mods() do
			modList:insert(m)
		end
		--console.game = modList:selection()
		--End Mod List
		if console.VID_VSYNC ~= "0" then
			syncCheck:set_state( true )
		else
			syncCheck:set_state( false )
		end
		
		if console.CL_SHOWFPS ~= "0" then
			fpsCheck:set_state( true )
		else
			fpsCheck:set_state( false )
		end
		
		if console.tel_wallblood ~= "0" then
			bloodCheck:set_state ( true )
		else
			bloodCheck:set_state ( false )
	end

	function mainm.hide()
		menu:set_visibility(false)
	end

	function modChooseBtn:onAction()
		if map_is_loaded() then
			console.game = modList:selection()
			showStatus("\"" .. modList:selection() .. "\" mod chosen")
		end
	end
	
	function portSelect:onAction()
		console.net_server_port = portField:text()
		showStatus("Port is set to " .. portField:text())
	end
	
	function clearStatBtn:onAction()
		console.net_server_port = portField:text()
		showStatus("")
	end
	
	function continueBtn:onAction()
		if map_is_loaded() then
			mainm.hide()
		end
	end

	function localBtn:onAction()
		mainm.hide()
		localm.show()
	end

	function connectBtn:onAction()
		mainm.hide()
		connectm.show()
	end

	function hostBtn:onAction()
		mainm.hide()
		hostm.show()
	end
	
	function syncCheck:onAction()
		if syncCheck:state() then
			console.VID_VSYNC = 1
		else
			console.VID_VSYNC = 0
		end
	end
	
	function fpsCheck:onAction()
		if fpsCheck:state() then
			console.CL_SHOWFPS = 1
		else
			console.CL_SHOWFPS = 0
		end
	end
	
	function bloodCheck:onAction()
		if bloodCheck:state() then
			console.tel_wallblood = 1
		else
			console.tel_wallblood = 0
		end
	end

	function quitBtn:onAction()
		quit()
	end

	function menu:onKeyDown(k)
		if k == Keys.ESC and map_is_loaded() then
			mainm.hide()
			return true
		end
	end

	if map_is_loaded() then
		mainm.hide()
	else
		mainm.show()
	end
	
	function bindings.gameEnded()
		mainm.show()
	end

end