local scene = composer.newScene()
local cfg = luManager.sceneCfg

local function createSelBox(index)
    local group = display.newGroup()

    local rect = display.newRect(group, 0, 0, 400, 150)
    rect:setFillColor(1)
    uiManager.common.setAnchor(rect, 0, 0.5)

    local leftIcon = display.newRect(group, 60, 0, 100, 130)
    leftIcon:setFillColor(0)

    local title = toolsManager.common.createTxt({
        parent = group,
        text = cfg[4][index],
        color = 2
    })
    uiManager.common.setXY(title, 150, - 70)
    uiManager.common.setAnchor(title, 0, 0)

    local leftSlider = display.newRect(group, 0, 0, 100, 30)
    uiManager.common.setAnchor(leftSlider, 0, 0)
    uiManager.common.setXY(leftSlider, 150, - 10)
    leftSlider:setFillColor(0.3)


    local rightSlider = display.newRect(group, 0, 0, 100, 30)
    uiManager.common.setAnchor(rightSlider, 0, 0)
    uiManager.common.setXY(rightSlider, leftSlider.x + leftSlider.width, - 10)
    rightSlider:setFillColor(0)

    local finishMusicStr = string.format("%s/%s",1,50)
    local gameTitle = toolsManager.common.createTxt({
        parent = group,
        text = finishMusicStr,
        color = 2,
        fontSize = 30
    })
    uiManager.common.setAnchor(gameTitle, 0, 0)
    uiManager.common.setXY(gameTitle, 150, 30)
    


    return group
end

-- create()
function scene:create( event )
    local sceneGroup = self.view
    
    local rect = display.newRect(sceneGroup, HALF_W, HALF_H, SCENE_W, SCENE_H)
    rect:setFillColor(1)

    local gameTitle = toolsManager.common.createTxt({
        parent = sceneGroup,
        text = cfg[3],
        color = 2
    })
    uiManager.common.setAnchor(gameTitle, 0, 0.5)
    uiManager.common.setXY(gameTitle, 25, 50)

    local gameClose = toolsManager.common.createButton({
        parent = sceneGroup,
        label = "X",
        labelColor = 2,
        onlyTxt = true
    })
    uiManager.common.setXY(gameClose, SCENE_W - 50, 50)

    local gameContent = display.newRect(sceneGroup, HALF_W, gameTitle.y + gameTitle.height / 2 + 5, SCENE_W - 20, SCENE_H - 90)
    uiManager.common.setAnchor(gameContent, 0.5, 0)
    gameContent:setFillColor(0)

    local boxGroup = display.newGroup()
    sceneGroup:insert(boxGroup)

    local startX = 100
    local starty = 200
    for i = 1, 10 do
        local box = createSelBox(i)
        boxGroup:insert(box)
        uiManager.common.setXY(box,startX,starty)
        startX = startX + box.width + 50    
        if i % 4 == 0 then
            starty = starty + box.height + 50
            startX = 100
        end
    end
end
 
 
-- show()
function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
 
    elseif ( phase == "did" ) then
 
    end
end
 
 
-- hide()
function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
 
    elseif ( phase == "did" ) then
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
    local sceneGroup = self.view
 
end
 
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
return scene