---removePermission
---@param permission string
---@return void
---@public
---@param self NCSRole
function NCSRole.removePermission(self, permission)
    if (not self:hasPermission(permission)) then
        return
    end
    self.permissions[permission] = nil
    API_Database:query("DELETE FROM ncs_roles_permissions WHERE role_identifier = @role_identifier AND permission = @permission", {
        ["role_identifier"] = self.identifier,
        ["permission"] = permission
    })
end