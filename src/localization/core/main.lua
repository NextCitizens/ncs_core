local LANG <const> = GetConvar("ncs_lang", "en")
local CONTENT <const> = LoadResourceFile("ncs_core", ("src/localization/locales/lang_%s.lua"):format(LANG))

if (not (CONTENT)) then
    print(("(^1NCS^7) ^1[CRITICAL] ^7Language file not found: %s, aborting..."):format(LANG))
    SetTimeout(1, function()
        os.exit()
    end)
    return
end

load(CONTENT)()

setmetatable(_Literals, {
    __index = function(_, key)
        return ("{%s}"):format(key)
    end
})