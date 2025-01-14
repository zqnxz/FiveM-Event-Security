key = nil

---@param eventName string
---@param ... any
function TriggerSecuredServerEvent(eventName, ...)
    TriggerServerEvent(eventName, key, ...)
    requestKey()
end

function getId()
    return key
end
