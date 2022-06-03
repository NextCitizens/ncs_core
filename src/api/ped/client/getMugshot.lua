---getMugshot
---@param pedId number
---@param transparentBackground boolean
---@return pedHeadshot_Handle, string
---@public
function API_Ped:getMugshot(pedId, transparentBackground)
    if (not (DoesEntityExist(pedId))) then
        return NCS:die("Target ped does not exists")
    end
    local headshot = (transparentBackground) and RegisterPedheadshotTransparent(pedId) or RegisterPedheadshot(pedId)
    while (not IsPedheadshotReady(headshot) and not IsPedHeadshotValid(headshot)) do
        Wait(0)
    end
    return (headshot), (GetPedheadshotTxdString(headshot))
end