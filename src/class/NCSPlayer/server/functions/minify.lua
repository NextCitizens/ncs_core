---minify
---@return table
---@public
---@param self NCSPlayer
function NCSPlayer.minify(self)
    return {
        id = self.id,
        serverId = self.serverId,
        identifier = self.identifier,
        name = self.name,
        role = self.role:minify(),
        character = self.character:minify()
    }
end