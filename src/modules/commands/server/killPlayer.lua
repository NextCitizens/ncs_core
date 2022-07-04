API_Commands:registerPermissionCommand("kill", "canKill", function(player, args)
    local serverId = tonumber(args[1]) or 0

    if (not MOD_Players:exists(serverId)) then
        return (player:showSystemNotification(_Literals.TYPE_ERROR, NCSEnum.LogType.ERROR))
    end
    local target = MOD_Players:get(serverId)
    if (not (target.character.isDead == 0)) then
        return (player:showSystemNotification(_Literals.ERROR_PLAYER_ALREADY_DEAD, NCSEnum.LogType.ERROR))
    end

    target.character:setDeathStatus(1, {})
    MOD_Players:set(target.serverId, target)
    NCS:triggerClientEvent("playerIsNowDeath", target.serverId, target.character.deathData)
    NCS:trace(("Player id ^2%s ^7(^2%s^7) as been killed"):format(target.serverId, target.name), 3)
end, {"serverId"})