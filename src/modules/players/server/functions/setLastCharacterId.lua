---setLastCharacterId
---@param identifier string
---@param characterId number
function MOD_Players:setLastCharacterId(identifier, characterId)
    API_Database:update("UPDATE ncs_players SET last_character_id = @last_character_id WHERE player_identifier = @player_identifier", {
        ["@last_character_id"] = characterId,
        ["@player_identifier"] = identifier
    })
end