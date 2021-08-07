love.graphics.setDefaultFilter("nearest", "nearest")
local Map = require("src/map")
local Car = require("src/car")


function love.load()
    Map:load()
    Car:load()
end

function love.update(dt)
    World:update(dt)
    Map:update(dt)
    Car:update(dt)
end

function love.draw()
    Map.level:draw(0,0,2,2)
    Car:draw()
    --Map.level:draw(-Camera.x, -Camera.y, Camera.scale, Camera.scale)
end
