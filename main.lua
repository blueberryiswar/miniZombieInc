love.graphics.setDefaultFilter("nearest", "nearest")
local inspect = require("dev/inspect")
local Map = require("src/map")
local Player = require("src/player")
local Police = require("src/police")
local Camera = require("src/camera")
local Remains = require("src/remains")
local GUI = require("src/gui")

function love.load()
    Map:load()
    Player:load()
    Player:setPosition(Map.playerStart.x, Map.playerStart.y)
    GUI:load()
    --print("Tile: "..Map:getTile(-Camera.x,-Camera.y,Player.x, Player.y).." Player: "..Player.x..":"..Player.y)
    
end

function love.update(dt)
    World:update(dt)
    Map:update(dt)
    Player:update(dt)
    Police.updateAll(dt)
    Remains.updateAll(dt)
    Camera:setPosition(Player.x, Player.y)
    GUI:setDebugText("Tile: "..Map:getTileDebug(0,0,Player.x, Player.y).." Player: "..Player.x..":"..Player.y)
    
end

function love.draw()
    Map.level:draw(-Camera.x,-Camera.y,Camera.scale,Camera.scale)
    --Map.level:draw(0,0,2,2)
    Camera:apply()
    Player:draw()
    Police.drawAll()
    Remains.drawAll()
    Camera:clear()
    GUI:draw()
end

function beginContact(a, b, collision)
    if Police.beginContact(a, b, collision) then return end
    
    Player:beginContact(a, b, collision)
end

function endContact(a, b, collision)
    --Player:endContact(a, b, collision)
end
