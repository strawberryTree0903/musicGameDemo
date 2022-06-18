widget = require("widget")
json = require("json")
composer = require("composer")

SCENE_W = display.contentWidth
SCENE_H = display.contentHeight

HALF_W = SCENE_W / 2
HALF_H = SCENE_H / 2

display.setStatusBar(display.HiddenStatusBar)
composer.recycleOnSceneChange = true
sceneManager = require("Scene.sceneManager")
uiManager = require("UI.uiManager")
toolsManager = require("Tools.toolsManager")
luManager = require("Config.luManager")
mathManager = require("Config.mathManager")