love.graphics.setDefaultFilter("nearest", "nearest")
local Map = require("src/map")
local Player = require("src/player")
local Camera = require("src/camera")

function love.load()
    Map:load()
    Player:load()

end

function love.update(dt)
    World:update(dt)
    Map:update(dt)
    Player:update(dt)
    Camera:setPosition(Player.x, Player.y)
end

function love.draw()
    Map.level:draw(-Camera.x,-Camera.y,Camera.scale,Camera.scale)
    Camera:apply()
    Player:draw()
    Camera:clear()
    --Map.level:draw(-Camera.x, -Camera.y, Camera.scale, Camera.scale)
end
