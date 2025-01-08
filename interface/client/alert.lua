function BondrixLib.SendAlert(alert)
    AddTextEntry('CH_ALERT', alert.message)

    BeginTextCommandDisplayHelp('CH_ALERT')
    EndTextCommandDisplayHelp(alert.shape, alert.loop, alert.beep, alert.duration)
end
RegisterNetEvent('bondrix_lib:onAlertSend')
AddEventHandler('bondrix_lib:onAlertSend', function(alert)
    BondrixLib.SendAlert(alert)
end)

function BondrixLib.ClearAlerts()
    ClearAllHelpMessages()
end
RegisterNetEvent('bondrix_lib:onAlertsClear')
AddEventHandler('bondrix_lib:onAlertsClear', function()
    BondrixLib.ClearAlerts()
end)