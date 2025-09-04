RegisterCommand("notifyall", function(source, args)
    TriggerClientEvent("custom_notify:show", -1, "E", "DRÜCKE E, UM DAS TOR ZU ÖFFNEN")
end)

RegisterCommand("notifyclear", function(source)
    TriggerClientEvent("custom_notify:hide", -1)
end)
