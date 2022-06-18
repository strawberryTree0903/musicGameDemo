local M = {}

setmetatable(M,{__index = function(selfName, key)
    return require("Tools." .. key)    
end})

return M