module(..., package.seeall)

function setXY(target, x, y)
    target.x = x
    target.y = y
end

function setAnchor(target, x, y)
    target.anchorX = x
    target.anchorY = y
end