Config = {}

-- Notification System

-- Support mythic_notify, pNotify, QBCore, Standalone
Config.NotificationSystem = "mythic_notify"

-- Set to false to disable notifications
Config.EnableNotifications = true


-- Teleports

-- Pedestrian Teleports
Config.Pedestrian = {
    [1] = { -- Change ID when inserting new teleporter
        name = 'Example Ped Teleport',
        entrance = {x = 935.89, y = 47.02, z = 81.09, heading = 154.71}, 
        exit = {x = 1089.60, y = 206.60, z = -48.99, heading = 0.64}
    },
}

-- Vehicle Teleporters
Config.Vehicle = {
    [1] = { -- Change ID when inserting new teleporter
        name = 'Example Vehicle Teleport',
        entrance = {x = 934.48, y = -1.63, z = 78.09, heading = 147.22}, 
        exit = {x = 1256.69, y = 230.1, z = -48.54, heading = 269.55}
    },
}