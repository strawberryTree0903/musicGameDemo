local scene = composer.newScene()

-- create()
function scene:create( event )
    local sceneGroup = self.view
    
    local title = display.newText({
        parent = sceneGroup,
        text = luManager.sceneCfg[1],
        fontSize = 200
    })
    uiManager.common.setXY(title, HALF_W, HALF_H - 250)

    local btn = toolsManager.common.createButton({
        parent = sceneGroup,
        label = luManager.sceneCfg[2],
        onlyTxt = true,
        fontSize = 60,
        listener = function ()
            composer.gotoScene(sceneManager["mainScene.mainScene"])
        end
    })
    uiManager.common.setXY(btn, HALF_W, HALF_H + 200)
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