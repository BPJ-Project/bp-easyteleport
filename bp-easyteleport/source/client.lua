CreateThread(function()
        while true do
            Wait(5)

            local isNearEntrance, entranceInfo = fetchNearestTeleportToPed()

            if isNearEntrance <= 4.5 then
                if isNearEntrance <= 1.2 then
                    DrawMessage("~w~Press ~y~[E]~w~ To Enter " .. entranceInfo.name)
                    if IsControlJustPressed(0, 38) then
                        TeleportAsPed(entranceInfo.exit.x, entranceInfo.exit.y, entranceInfo.exit.z, entranceInfo.exit.heading)
                        if Config.NotificationSystem == "mythic_notify" and Config.EnableNotifications then
                        exports['mythic_notify']:DoHudText('inform', "You Entered " ..entranceInfo.name)
                        elseif Config.NotificationSystem == "pNotify" and Config.EnableNotifications then
                        TriggerEvent("pNotify:SendNotification", {text = "You Entered " ..entranceInfo.name})
                        elseif Config.NotificationSystem == "QBCore" and Config.EnableNotifications then
                        TriggerEvent('QBCore:Notify', "You Entered " ..entranceInfo.name)
                        elseif Config.NotificationSystem == "Standalone" and Config.EnableNotifications then
                        ShowNotification("You Entered " ..entranceInfo.name)
                        end
                    end
                end
            else
            Wait(2500)
        end
    end
end)

CreateThread(function()
        while true do
            Wait(5)

            local isNearExit, exitInfo = fetchNearestExitToPed()

            if isNearExit <= 4.5 then
                if isNearExit <= 1.2 then
                    DrawMessage("~w~Press ~r~[E]~w~ To Exit " .. exitInfo.name)
                    if IsControlJustPressed(0, 38) then
                        TeleportAsPed(exitInfo.entrance.x, exitInfo.entrance.y, exitInfo.entrance.z, exitInfo.entrance.heading)
                        if Config.NotificationSystem == "mythic_notify" and Config.EnableNotifications then
                        exports['mythic_notify']:DoHudText('inform', "You Exited " ..exitInfo.name)
                        elseif Config.NotificationSystem == "pNotify" and Config.EnableNotifications then
                        TriggerEvent("pNotify:SendNotification", {text = "You Exited " ..exitInfo.name})
                        elseif Config.NotificationSystem == "QBCore" and Config.EnableNotifications then
                        TriggerEvent('QBCore:Notify', "You Exited " ..exitInfo.name)
                        elseif Config.NotificationSystem == "Standalone" and Config.EnableNotifications then
                        ShowNotification("You Exited " ..exitInfo.name)
                        end
                    end
                end
            else
            Wait(2500)
        end
    end
end)

CreateThread(function()
        while true do
            Wait(5)

            local isNearEntrance, entranceInfo = fetchNearestVehicleEntrance()

            if isNearEntrance <= 4.5 and IsPedInAnyVehicle(PlayerPedId(), false) then
                if isNearEntrance <= 2.0 then
                    DrawMessage("~w~Press ~r~[E]~w~ To Enter " .. entranceInfo.name)
                    if IsControlJustPressed(0, 38) then
                        TeleportWithVehicle(entranceInfo.exit.x, entranceInfo.exit.y, entranceInfo.exit.z, entranceInfo.exit.heading)
                        if Config.NotificationSystem == "mythic_notify" and Config.EnableNotifications then
                        exports['mythic_notify']:DoHudText('inform', "You Entered " ..entranceInfo.name)
                        elseif Config.NotificationSystem == "pNotify" and Config.EnableNotifications then
                        TriggerEvent("pNotify:SendNotification", {text = "You Entered " ..entranceInfo.name})
                        elseif Config.NotificationSystem == "QBCore" and Config.EnableNotifications then
                        TriggerEvent('QBCore:Notify', "You Entered " ..entranceInfo.name)
                        elseif Config.NotificationSystem == "Standalone" and Config.EnableNotifications then
                        ShowNotification("You Entered " ..entranceInfo.name)
                        end
                    end
                end
            else
            Wait(2500)
        end
    end
end)

CreateThread(function()
        print("BP Easy Teleport Initialized")
        while true do
            Wait(5)

            local isNearExit, exitInfo = fetchNearestVehicleExit()

            if isNearExit <= 4.5 and IsPedInAnyVehicle(PlayerPedId(), false) then
                if isNearExit <= 2.0 then
                    DrawMessage("~w~Press ~r~[E]~w~ To Exit " .. exitInfo.name)
                    if IsControlJustPressed(0, 38) then
                        TeleportWithVehicle(exitInfo.entrance.x, exitInfo.entrance.y, exitInfo.entrance.z, exitInfo.entrance.heading)
                        if Config.NotificationSystem == "mythic_notify" and Config.EnableNotifications then
                        exports['mythic_notify']:DoHudText('inform', "You Exited " ..exitInfo.name)
                        elseif Config.NotificationSystem == "pNotify" and Config.EnableNotifications then
                        TriggerEvent("pNotify:SendNotification", {text = "You Exited " ..exitInfo.name})
                        elseif Config.NotificationSystem == "QBCore" and Config.EnableNotifications then
                        TriggerEvent('QBCore:Notify', "You Exited " ..exitInfo.name)
                        elseif Config.NotificationSystem == "Standalone" and Config.EnableNotifications then
                        ShowNotification("You Exited " ..exitInfo.name)
                        end
                    end
                end
            else
            Wait(2500)
        end
    end
end)
