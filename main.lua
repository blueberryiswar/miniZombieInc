love.graphics.setDefaultFilter("nearest", "nearest")
local inspect = require("dev/inspect")
local Map = require("src/map")
local Player = require("src/player")
--local Camera = require("src/camera")
local bigMap = require("map/big_map")
local printIt = 100

function love.load()
    Map:load()
    Player:load()
    --print("Tile: "..Map:getTile(-Camera.x,-Camera.y,Player.x, Player.y).." Player: "..Player.x..":"..Player.y)
    print("Tile: "..Map:getTile(0,0,Player.x, Player.y).." Player: "..Player.x..":"..Player.y)
end

function love.update(dt)
    World:update(dt)
    Map:update(dt)
    Player:update(dt)
    --Camera:setPosition(Player.x, Player.y)
    
end

function love.draw()
    --Map.level:draw(-Camera.x,-Camera.y,Camera.scale,Camera.scale)
    Map.level:draw(0,0,2,2)
    --Camera:apply()
    love.graphics.push()
    love.graphics.scale(2, 2)
    Player:draw()
    love.graphics.pop()
    --Camera:clear()
    if printIt == 0 then
        --print("Tile: "..Map:getTile(-Camera.x,-Camera.y,Player.x, Player.y).." Player: "..Player.x..":"..Player.y)
        print("Tile: "..Map:getTile(0,0,Player.x, Player.y).." Player: "..Player.x..":"..Player.y)
        printIt = 100
    else
        printIt = printIt - 1
    end

    
end
