ESX = exports["es_extended"]:getSharedObject()

local function checkItem(itemName, category)
    for _, v in pairs(Config.Category[category]) do
        if v.itemName == itemName then
            return true
        end
    end
    return false
end

ESX.RegisterServerCallback('LMarket:Buy', function(source, cb, itemName, price, label, amount, category)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xPlayerMoney = xPlayer.getMoney()
    if xPlayerMoney >= price then
        if (checkItem(itemName, category)) then
            xPlayer.removeMoney(price)
            xPlayer.addInventoryItem(itemName, amount)
            cb("success")
        else
            cb("invalid_item")
        end
    else
        cb("no_money")
    end
end)