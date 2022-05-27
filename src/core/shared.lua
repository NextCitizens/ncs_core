---@class _NCS
local _NCS = {}

---getVersion
---@return string
---@public
function _NCS:getVersion()
    return (GetResourceMetadata(GetCurrentResourceName(), "version"))
end

---trace
---@return void
---@param message string
---@param logType? any
---@public
function _NCS:trace(message, logType)
    logType = _NCSEnum._getLogTypeDisplayData(logType or _NCSEnum.LogType.DEBUG)
    print(("(^1NCS^7) [%s^7] %s"):format(("%s%s"):format(logType.displayColor, logType.displayName), message))
end

---formatEvent
---@return void
---@param eventName string
---@public
function _NCS:formatEvent(eventName)
    return (("ncs:%s"):format(GetHashKey(eventName)))
end

AddEventHandler("ncs_core:trace", function(message, logType)
    _NCS:trace(message, logType)
end)

local registeredEvents = {}

local function isEventRegistered(eventName)
    return (registeredEvents[eventName] ~= nil)
end

---registerNetEvent
---@param eventName string
---@return void
---@public
function _NCS:registerNetEvent(eventName, ...)
    if not isEventRegistered(eventName) then
        RegisterNetEvent(self:formatEvent(eventName), ...)
        registeredEvents[eventName] = true
    end
end

---onReceive
---@param eventName string
---@param callback function
---@return void
---@public
function _NCS:handleEvent(eventName, callback)
    AddEventHandler(self:formatEvent(eventName), callback)
end

---triggerEvent
---@param eventName string
---@return void
---@public
function _NCS:triggerEvent(eventName, ...)
    TriggerEvent(self:formatEvent(eventName), ...)
end

---onReady
---@param callback function
---@return void
---@public
function _NCS:onReady(callback)
    self:handleEvent("ncs_core:loaded", callback)
end

_G._NCS = _NCS
_G._NCSEnum = {}