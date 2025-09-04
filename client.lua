local notifyVisible = false

RegisterNetEvent("lrp_pressE:show")
AddEventHandler("lrp_pressE:show", function(key, message)
    if not notifyVisible then
        SendNUIMessage({
            action = "show",
            key = key,
            text = message
        })
        PlaySoundFrontend(-1, 'INFO', 'HUD_FRONTEND_DEFAULT_SOUNDSET', 1)
        notifyVisible = true
    end
end)

RegisterNetEvent("lrp_pressE:hide")
AddEventHandler("lrp_pressE:hide", function()
    SendNUIMessage({
        action = "hide"
    })
    PlaySoundFrontend(-1, 'CANCEL', 'HUD_FRONTEND_DEFAULT_SOUNDSET', 1)
    notifyVisible = false
end) 

-- TriggerEvent("lrp_pressE:show", "E", "Drücke [E] zum Interagieren")
-- TriggerEvent("lrp_pressE:hide")