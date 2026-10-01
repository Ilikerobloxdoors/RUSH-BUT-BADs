local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Rush But Bad",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/RUSH-BUT-BADs/main/RUSH%20BUT%20BAD.rbxm",

    Speed = 210,
    DelayTime = 2.7,

    HeightOffset = 1,
    CanKill = true,
    KillRange = 25,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1,
    },

    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {1, 1.5, 0.1, 0.8},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://10717460972",
            Image2 = "rbxassetid://10717460972",

            Shake = false,

            Sound1 = {
                109901368934060,
                {Volume = 1},
            },

            Sound2 = {
                116282238939992,
                {Volume = 1},
            },

            Flashing = {
                true,
                Color3.fromRGB(8, 0, 255),
            },

            Tease = {
                true,
                Min = 2,
                Max = 5,
            },
        },
    },

    CustomDialog = {
        "You died to Rush But Bad...",
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Rush But Bad spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Rush But Bad despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Rush But Bad started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Rush But Bad finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Rush But Bad entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Rush But Bad")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to Rush But Bad.")
end

Creator.runEntity(entity)
