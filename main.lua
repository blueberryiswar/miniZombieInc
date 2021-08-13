love.graphics.setDefaultFilter("nearest", "nearest")
local inspect = require("dev/inspect")
local Map = require("src/map")
local Player = require("src/player")
local Camera = require("src/camera")
local GUI = require("src/gui")

function love.load()
    Map:load()
    Player:load()
    GUI:load()
    --print("Tile: "..Map:getTile(-Camera.x,-Camera.y,Player.x, Player.y).." Player: "..Player.x..":"..Player.y)
    
end

function love.update(dt)
    World:update(dt)
    Map:update(dt)
    Player:update(dt)
    Camera:setPosition(Player.x, Player.y)
    GUI:setDebugText("Tile: "..Map:getTile(0,0,Player.x, Player.y).." Player: "..Player.x..":"..Player.y)
    
end

function love.draw()
    Map.level:draw(-Camera.x,-Camera.y,Camera.scale,Camera.scale)
    --Map.level:draw(0,0,2,2)
    Camera:apply()
    Player:draw()
    Camera:clear()
    GUI:draw()
end
