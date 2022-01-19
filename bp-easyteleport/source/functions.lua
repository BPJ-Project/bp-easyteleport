function TeleportAsPed(x, y, z, heading)
    local xPlayer = PlayerPedId()
    Wait(100)
    RequestCollisionAtCoord(x, y, z)
    while not HasCollisionLoadedAroundEntity(xPlayer) do
        RequestCollisionAtCoord(x, y, z)
        Wait(0)
    end
    
    SetEntityCoords(xPlayer, x, y, z)
    SetEntityHeading(xPlayer, heading)
end

function TeleportWithVehicle(x, y, z, heading)
    local xPlayer = PlayerPedId()
    Wait(100)
    RequestCollisionAtCoord(x, y, z)

    while not HasCollisionLoadedAroundEntity(xPlayer) do
        RequestCollisionAtCoord(x, y, z)
        Wait(0)
    end

    if (IsPedInAnyVehicle(xPlayer)) then
        xPlayer = GetVehiclePedIsUsing(xPlayer)
    end

    SetEntityCoords(xPlayer, x, y, z)
    SetEntityHeading(xPlayer, heading)
end

function DrawMessage(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentScaleform(msg)
    EndTextCommandDisplayHelp(0, false, false, -1)
end

function ShowNotification(msg)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandThefeedPostTicker(true, true)
end

function fetchNearestTeleportToPed()
    local distancechecked = 1000
    local lc = {}

    for i = 1, #Config.Pedestrian do
        local comparedst = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), Config.Pedestrian[i]["entrance"].x, Config.Pedestrian[i]["entrance"].y, Config.Pedestrian[i]["entrance"].z, Config.Pedestrian[i]["entrance"].heading, true)
        if comparedst < distancechecked then
            distancechecked = comparedst
            lc = Config.Pedestrian[i]
        end
    end

    return distancechecked, lc
end

function fetchNearestExitToPed()
    local distancechecked = 1000
    local lc = {}

    for i = 1, #Config.Pedestrian do
        local comparedst = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), Config.Pedestrian[i]["exit"].x, Config.Pedestrian[i]["exit"].y, Config.Pedestrian[i]["exit"].z, Config.Pedestrian[i]["exit"].heading, true)
        if comparedst < distancechecked then
            distancechecked = comparedst
            lc = Config.Pedestrian[i]
        end
    end

    return distancechecked, lc
end

function fetchNearestVehicleEntrance()
    local distancechecked = 1000
    local lc = {}

    for i = 1, #Config.Vehicle do
        local comparedst = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), Config.Vehicle[i]["entrance"].x, Config.Vehicle[i]["entrance"].y, Config.Vehicle[i]["entrance"].z, Config.Vehicle[i]["entrance"].heading, true)
        if comparedst < distancechecked then
            distancechecked = comparedst
            lc = Config.Vehicle[i]
        end
    end

    return distancechecked, lc
end

function fetchNearestVehicleExit()
    local distancechecked = 1000
    local lc = {}

    for i = 1, #Config.Vehicle do
        local comparedst = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), Config.Vehicle[i]["exit"].x, Config.Vehicle[i]["exit"].y, Config.Vehicle[i]["exit"].z, Config.Vehicle[i]["exit"].heading, true)
        if comparedst < distancechecked then
            distancechecked = comparedst
            lc = Config.Vehicle[i]
        end
    end

    return distancechecked, lc
end
