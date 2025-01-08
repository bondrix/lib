function BondrixLib.GetTextInput(keyboard)
    AddTextEntry('CH_INPUT', keyboard.title)
    DisplayOnscreenKeyboardWithLongerInitialString(keyboard.type, 'CH_INPUT', '', keyboard.default, '', '', '', '', '', '', '', keyboard.length)

    while UpdateOnscreenKeyboard() == 0 do
        Wait(0)
    end

    if UpdateOnscreenKeyboard() == 1 then
        local result = GetOnscreenKeyboardResult()
        Wait(0)

        return result
    end

    return nil
end
RegisterNetEvent('bondrix_lib:onTextInputGet')
AddEventHandler('bondrix_lib:onTextInputGet', function(keyboard, callback)
    callback(BondrixLib.GetTextInput(keyboard))
end)