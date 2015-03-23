function map_ctf_garrisons.init()

    utctf.init(260,138, 60,138)

    -- Basement
    ammo("bio"):put(145,227)
    ammo("bio"):put(175,227)
    
    jumpPad(159,229,0,-1.2,true,true,4)
    
    -- Tomer Top
    ammo("rocket"):put(160,97)

    -- Blue Basement
    health("vial"):put(20,227)
    health("vial"):put(25,227)
    health("vial"):put(45,227)
    health("vial"):put(50,227)

    jumpPad(34,229,0,-1.2,true,true,2)

    -- Blue 1st Floor
    ammo("flak"):put(15,177)

    -- Blue 2nd Floor
    health("pack"):put(10,137)
    health("pack"):put(18,137)

    -- Blue 3rd Floor
    health("vial"):put(10,102)
    health("vial"):put(15,102)
    health("vial"):put(20,102)
    
    ammo("shock"):put(62,102)
    ammo("shock"):put(68,102)

    -- Blue Roof
    ammo("bullet"):put(7,67)
    ammo("bullet"):put(18,67)
    
    jumpPad(70,69,0.55,-0.8,true,true,2)
    
    -- Red Basement
    health("vial"):put(269,227)
    health("vial"):put(274,227)
    health("vial"):put(294,227)
    health("vial"):put(299,227)

    jumpPad(285,229,0,-1.2,true,true,1)

    -- Red 1st Floor
    ammo("flak"):put(304,177)

    -- Red 2nd Floor
    health("pack"):put(301,137)
    health("pack"):put(309,137)

    -- Red 3rd Floor
    health("vial"):put(299,102)
    health("vial"):put(304,102)
    health("vial"):put(309,102)

    ammo("shock"):put(251,102)
    ammo("shock"):put(257,102)

    -- Red Roof
    ammo("bullet"):put(312,67)
    ammo("bullet"):put(301,67)

    jumpPad(250,69,-0.55,-0.8,true,true,1)

    -- End CTF

    local small_light_on    = load_particle("small_light_on.obj")
    local small_light_off   = load_particle("small_light_inactive.obj")

    local light1 = small_light_off:put( 50, 190)
    local light2 = small_light_off:put(120, 190)
    local light3 = small_light_off:put(200, 190)
    local light4 = small_light_off:put(270, 190)

    local power_switch_on    = load_particle("power_switch_on.obj")
    local power_switch_off   = load_particle("power_switch_off.obj")

    local switch = power_switch_off:put(162, 130)
    
    local power_status = false
    local timer = 0
    local delay = false

    local lightStatusEvent = network_game_event("gar_lightStatus", function(self, data)
        local status = data:get_bool()

        if status then
            lights_on()
        else
            lights_off()
        end
    end)

    function bindings.playerNetworkInit(p, connID)
        local b = new_bitstream()
        b:add_bool(power_status)
        lightStatusEvent:send(b, connID)
    end

    function map_ctf_garrisons.pressBtn()
        if delay then return end
        if not AUTH then return end

        delay = true

        if power_status then
            lights_off()
            local b = new_bitstream()
            b:add_bool(power_status)
            lightStatusEvent:send(b)
        else
            lights_on()
            local b = new_bitstream()
            b:add_bool(power_status)
            lightStatusEvent:send(b)
        end
    end

    function lights_on()
        power_status = true

        light1:remove()
        light1 = small_light_on:put( 50, 190)

        light2:remove()
        light2 = small_light_on:put(120, 190)

        light3:remove()
        light3 = small_light_on:put(200, 190)

        light4:remove()
        light4 = small_light_on:put(270, 190)

        switch:remove()
        switch = power_switch_on:put(162, 130)
    end

    function lights_off()
        power_status = false

        light1:remove()
        light1 = small_light_off:put( 50, 190)

        light2:remove()
        light2 = small_light_off:put(120, 190)

        light3:remove()
        light3 = small_light_off:put(200, 190)

        light4:remove()
        light4 = small_light_off:put(270, 190)

        switch:remove()
        switch = power_switch_off:put(162, 130)
    end

    function bindings.afterUpdate()
        if timer >= 150 then
            delay = false
            timer = 0
        end
        if delay then
            timer = timer + 1
        end
    end
end
