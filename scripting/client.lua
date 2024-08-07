local IsWide = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.CheckTimer)
        local res = GetIsWidescreen()
        if not res and not IsWide then
            startTimer()
            IsWide = true
        elseif res and IsWide then
            IsWide = false
        end
    end
end)

function startTimer()
    local timer = Config.Timer

    Citizen.CreateThread(function()
        while timer > 0 and IsWide do
            Citizen.Wait(1000)
            timer = timer - 1
            if timer == 0 then
                TriggerServerEvent("paradise_antiresolution:Kick")
            else
                lib.notify({
                    title = 'Resolution Warning',
                    description = string.format(Config.ChangeResMsg, timer),
                    type = 'warning'
                })
            end
        end
    end)
end