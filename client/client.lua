ESX = exports["es_extended"]:getSharedObject()
local ListCategory = {}

---@param position vec3
local function setBlip(position)
    local blip = AddBlipForCoord(position)

    SetBlipSprite(blip, Config.BlipSprite)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, Config.BlipScale)
    SetBlipColour(blip, Config.BlipColour)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.BlipName)
    EndTextCommandSetBlipName(blip)
end

---@param position vec4
local function setPed(position)
    Citizen.CreateThread(function()
        local hash = GetHashKey(Config.PedModel)
        RequestModel(hash)
        while not HasModelLoaded(hash) do
            Wait(1000)
        end
        local ped = CreatePed("PED_TYPE_CIVMALE", Config.PedModel, position.x, position.y, position.z, position.w, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetEntityInvincible(ped, true)
        FreezeEntityPosition(ped, true)
    end)
end

for category, markets in pairs(Config.Category) do
    local marketList = {}

    for _, market in pairs(markets) do
        table.insert(marketList, {
            title = market.label,
            description = "Prix : " .. market.price .. "$",
            icon = market.icon,
            onSelect = function()
                local input = lib.inputDialog('Superette', {
                    {type = 'number', label = 'Quantité :', default = 1, min = 1},
                })
                if not input then return end
                ESX.TriggerServerCallback('LMarket:Buy', function(result)
                    if result == "success" then
                        ShowNotification("Market", "Vous avez acheté un(e) " .. market.label, 5000, 'success', "check")
                    elseif result == "no_money" then
                        ShowNotification("Market", "Vous n'avez pas assez d'argent", 5000, 'error', "xmark")
                    elseif result == "invalid_item" then
                        ShowNotification("Market", "Cet item n'existe pas", 5000, 'error', "xmark")
                    end
                end, market.itemName, market.price * input[1], market.label, input[1], category)
            end
        })
    end
    lib.registerContext({
        id = category,
        title = Config.CategoryInfo[category].name,
        menu = "main_market",
        options = marketList,
    })
    table.insert(ListCategory, {
        title = Config.CategoryInfo[category].name,
        icon = Config.CategoryInfo[category].icon,
        onSelect = function()
            lib.showContext(category)
        end
    })
end

lib.registerContext({
    id = "main_market",
    title = Config.MenuName,
    options = ListCategory,
})

for _, v in pairs(Config.Location) do
    setBlip(v.global_position)
    setPed(v.ped_position)
    CreateThread(function()
        if (Config.InteractionType == "target") then
            exports.ox_target:addBoxZone({
                coords = v.marker_position,
                size = vec3(3, 3, 3),
                rotation = 45,
                drawSprite = true,
                options = {
                    {
                        icon = "bowl-food", 
                        label = 'Ouvrir la superette',
                        distance = 3,
                        onSelect = function()
                            lib.showContext("main_market")
                        end
                    }
                }
            })
        elseif (Config.InteractionType == "marker") then
            while true do
                local PlayerPed = PlayerPedId()
                local PlayerPos = GetEntityCoords(PlayerPed)
                local Distance = #(PlayerPos - v.marker_position)
                local sleep = 1500
    
                if Distance <= 10.0 then
                    sleep = 0
                    DrawMarker(Config.MarkerType, v.marker_position, nil, nil, nil, Config.MarkerRotation, nil, nil, 1.0, 1.0, 1.0, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, Config.MarkerColor.a)
                    if Distance <= 1.5 then
                        ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le menu")
                        if IsControlJustPressed(0, 38) then
                            lib.showContext("main_market")
                        end
                    end
                end
                Wait(sleep)
            end
        end
    end)
end
