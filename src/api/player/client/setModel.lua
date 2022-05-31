---setModel
---@param modelName string
---@return void
---@public
function API_Player:setModel(modelName)
    assert(type(modelName) == "string" or type(modelName) == "number")
    if type(modelName) == "string" then
        modelName = GetHashKey(modelName)
    end

    if (not (IsModelInCdimage(modelName))) then
        return _NCS:die("Model not found: " .. modelName)
    end

    RequestModel(modelName)
    while not HasModelLoaded(modelName) do
        Wait(0)
    end
    SetPlayerModel(PlayerId(), modelName)
    SetModelAsNoLongerNeeded(modelName)
end