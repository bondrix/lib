function BondrixLib.ShowSubtitle(subtitle)
    BeginTextCommandPrint('STRING')
    AddTextComponentString(subtitle.message)
    EndTextCommandPrint(subtitle.duration, subtitle.immediately)
end
RegisterNetEvent('bondrix_lib:onSubtitleShow')
AddEventHandler('bondrix_lib:onSubtitleShow', function(subtitle)
    BondrixLib.ShowSubtitle(subtitle)
end)