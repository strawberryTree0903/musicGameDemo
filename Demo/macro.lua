widget = require("widget")
json = require("json")
composer = require("composer")

SCENE_W = display.contentWidth
SCENE_H = display.contentHeight

HALF_W = SCENE_W / 2
HALF_H = SCENE_H / 2

display.setStatusBar(display.HiddenStatusBar)
composer.recycleOnSceneChange = true