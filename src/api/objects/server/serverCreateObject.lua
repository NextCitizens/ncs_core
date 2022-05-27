---serverCreateObject
---@param props string
---@param x number
---@param y number
---@param z number
---@param h number
---@return void
---@public
function API_Objects:serverCreateObject(props, x, y, z, h)
    local object = CreateObject(props, x, y, z - 1, true)
    SetEntityHeading(object, h)
    FreezeEntityPosition(object, true)
end
