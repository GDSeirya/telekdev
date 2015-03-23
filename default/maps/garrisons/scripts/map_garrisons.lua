function map_garrisons.init()

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

    function map_garrisons.pressBtn()
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
