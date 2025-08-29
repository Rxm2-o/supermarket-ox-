function ShowNotification(title, message, duration, type, img)
    TriggerEvent('Notif:ShowAdvancedNotification', title, message, duration, type, img)
end

function ShowHelpNotification(message)
    ESX.ShowHelpNotification(message)
end
