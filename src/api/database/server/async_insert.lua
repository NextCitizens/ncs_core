---async_insert
---@param query string
---@param parameters table
---@param cb function
---@return number
---@public
function API_Database:async_insert(query, parameters)
	return exports[GetCurrentResourceName()]:insert_async(query, parameters)
end
