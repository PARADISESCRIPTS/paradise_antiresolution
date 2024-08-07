RegisterNetEvent("paradise_antiresolution:Kick")
AddEventHandler("paradise_antiresolution:Kick", function()
    DropPlayer(source, string.format('Anti Resolution: %s', Config.KickMsg))
end)