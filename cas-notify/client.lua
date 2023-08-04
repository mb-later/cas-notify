


RegisterCommand("notify",function()
    exports["cas-notify"]:Notify({
        message = "Lorem ipsum text test for CFX.re community.",
        ts = "success",
        time = 4000,
        playsound = true
    })
end)

CAS = {
    Notify = function(data)
        SendNUIMessage({
            action = data.ts,
            time = data.time,
            sound = data.playsound,
            message = data.message
        })
    end
}

RegisterNetEvent("Notify")
AddEventHandler("Notify",function(data)
    if not data then return end
    CAS.Notify(data)
end)

exports("Notify",function(data)
    CAS.Notify(data)
end)


