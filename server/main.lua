clientKeys = {}

RegisterNetEvent("qnx:security:request", function()
    local src = source
    local id = os.clock() .. math.random(1337, 99999)

    clientKeys[src] = id

    TriggerClientEvent("qnx:security:response", src, id)
end)

RegisterNetEvent("qnx:security:test", function(key, msg, tbl, tbl2)
    local src = source
    print("GOT TBL", json.encode(tbl))
    print("(2) GOT TBL", json.encode(tbl2))
    print("key:", key)
    print("msg:", msg)

    print("isEqual?", key == clientKeys[src])
    print("hmm ... checking", key, clientKeys[src])

    if key == clientKeys[src] then
        print("^2[SUCCESS]^7 Event triggered successfully.")

        TriggerClientEvent("qnx:security:success", src) -- DEBUG ONLY!

        clientKeys[src] = nil
    else
        print("^1[ERROR]^7 Event trigger failed - i ban u now (lol).")
        -- INSERT CUSTOM BAN LOGIC HERE --
    end
end)
