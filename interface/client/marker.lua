function BondrixLib.DrawMarker(marker)
    DrawMarker(marker.type, marker.position, marker.direction, marker.rotation, marker.scale, marker.red, marker.green, marker.blue, marker.alpha, marker.bob, marker.camera, 2, marker.rotate, nil, nil, marker.hide)
end
RegisterNetEvent('bondrix_lib:onMarkerDraw')
AddEventHandler('bondrix_lib:onMarkerDraw', function(marker)
    BondrixLib.DrawMarker(marker)
end)