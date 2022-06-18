local M = {}

setmetatable(M,{__index = function (selfName, key)
    return require("Config.settings."..key)
end})

return M