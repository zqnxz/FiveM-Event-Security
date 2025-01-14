--- Checks if the user is allowed to execute the event
---@param source number
---@param key string
---@return boolean
function canExecuteEvent(source, key)
    if clientKeys[source] == key then
        clientKeys[source] = nil
        return true
    end

    return false
end
