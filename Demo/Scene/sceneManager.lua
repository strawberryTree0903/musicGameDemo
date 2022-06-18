local M = {}

setmetatable(M,{__index = function(selfTable,key)
    return "Scene."..key
end})

return M