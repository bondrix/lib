function BondrixLib.isBusySpinnerEnabled()
    return BusyspinnerIsOn()
end
RegisterNetEvent('bondrix_lib:onIsBusySpinnerEnabled')
AddEventHandler('bondrix_lib:onIsBusySpinnerEnabled', function(callback)
    callback(BondrixLib.isBusySpinnerEnabled())
end)

function BondrixLib.EnableBusySpinner(busySpinner)
    BeginTextCommandBusyspinnerOn('STRING')
    AddTextComponentSubstringPlayerName(busySpinner.message)
    EndTextCommandBusyspinnerOn(busySpinner.type)
end
RegisterNetEvent('bondrix_lib:onBusySpinnerEnable')
AddEventHandler('bondrix_lib:onBusySpinnerEnable', function(busySpinner)
    BondrixLib.EnableBusySpinner(busySpinner)
end)

function BondrixLib.DisableBusySpinner()
    BusyspinnerOff()
end
RegisterNetEvent('bondrix_lib:onBusySpinnerDisable')
AddEventHandler('bondrix_lib:onBusySpinnerDisable', function()
    BondrixLib.DisableBusySpinner()
end)