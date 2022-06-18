local M = {}

setmetatable(M,{__index= function(selfTable, key)
    return require("UI."..key)
end})

return M