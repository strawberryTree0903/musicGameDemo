local M = {}

setmetatable(M,{__index = function (selfName, key)
    return require("Config.language."..key)
end})

return M