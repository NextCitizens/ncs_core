---spawn
---@param modelName string
---@param x number
---@param y number
---@param z number
---@param heading number
---@param callback function
---@return void
---@public
function API_Ped:spawn(modelName, x, y, z, heading, callback)
    assert(type(modelName) == "string" or type(modelName) == "number")
    if type(modelName) == "string" then
        modelName = GetHashKey(modelName)
    end

    local ped = CreatePed(1, modelName, x, y, z, heading)
    repeat
        Wait(0)
    until DoesEntityExist(ped)

    callback(ped, NetworkGetNetworkIdFromEntity(ped))
end
