module(..., package.seeall)

local btnCfg = {
    [1] = "",
    [2] = "",
}
local btnTxtCfg = {
    [1] = {
        default={ 1, 1, 1 }, over={ 1, 1, 1 } -- 纯白
    },
    [2] = {
        default={ 0, 0, 0 }, over={ 0, 0, 0 } -- 纯黑
    }
}
local colorCfg = {
    [1] = {1, 1, 1}, -- 白
    [2] = {0, 0, 0}, -- 黑
}

function createButton(params)
    local parent = params.parent
    local listener = params.listener
    local label = params.label
    local labelColor = btnTxtCfg[params.labelColor] or btnTxtCfg[1]
    local font = params.font or native.systemFont
    local fontSize = params.fontSize or 50
    local default = btnCfg[params.default]
    local over = btnCfg[params.over]
    local width = params.width or 200
    local height = params.height or 50
    local onlyTxt = params.onlyTxt

    print(json.encode(labelColor))
    local button
    if onlyTxt then
        button = widget.newButton({
            label = label,
            labelColor = labelColor,
            font = font,
            fontSize = fontSize,
            textOnly = onlyTxt,
            onEvent = function(event)
                if event.phase == "began" then
                    button:scale(0.8, 0.8)
                end    
                if event.phase == "ended" then
                    if listener then
                        listener(event)
                    end
                end                
                if event.phase == "ended" or event.phase == "cancelled" then
                    button.xScale = 1
                    button.yScale = 1
                end
            end
        })
    else
        button = widget.newButton({
            label = label,
            labelColor = labelColor,
            font = font,
            fontSize = fontSize,
            width = width,
            height = height,
            defaultFile = default,
            overFile = over,
            onEvent = function(event)
                if event.phase == "began" then
                    button:scale(0.8, 0.8)
                end    
                if event.phase == "ended" then
                    if listener then
                        listener(event)
                    end
                end                
                if event.phase == "ended" or event.phase == "cancelled" then
                    button.xScale = 1
                    button.yScale = 1
                end
            end
        })
    end
    if parent then
        parent:insert(button)
    end
    return button
end

function createTxt(params)
    local parent = params.parent
    local text = params.text
    local font = params.font or native.systemFont
    local fontSize = params.fontSize or 40
    local color = params.color or colorCfg[1]
    local txt = display.newText({
        text = text,
        font = font,
        fontSize = fontSize
    })
    if type(color) == "number" then
        txt:setFillColor(colorCfg[color])
    else
        txt:setFillColor(unpack(color))
    end
    if parent then
        parent:insert(txt)
    end
    return txt
end