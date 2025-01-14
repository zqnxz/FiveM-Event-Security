Citizen.CreateThread(function()
    repeat
        Wait(0)
    until NetworkIsSessionStarted()

    requestKey()
end)

function requestKey()
    TriggerServerEvent("qnx:security:request")
end

RegisterNetEvent("qnx:security:response", function(sKey)
    key = sKey
end)

RegisterNetEvent("qnx:security:success", function() -- DEBUG ONLY!
    print("^2[SUCCESS]^7 Event triggered successfully.")
end)

RegisterCommand("qnx", function()
    TriggerSecuredServerEvent("qnx:security:test", "hello world", { 1, 2, 3 }, json.encode({ hello = "world" }))
end)
