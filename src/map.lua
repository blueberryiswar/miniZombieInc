local Map = {}
--local Player = require("src/player")
local Police = require("src/police")
local STI = require("src/sti")


function Map:load()
    self.currentLevel = "1"
    self.heightLimit = 0
    self.widthLimit = 0
    self.playerStart = {
        x = 0,
        y = 0
    }
    World = love.physics.newWorld(0,0)
    World:setCallbacks(beginContact, endContact)
    self:init()
end

function Map:init()
    self.rawMap = require("map/"..self.currentLevel)
    self.level = STI("map/"..self.currentLevel..".lua", {"box2d"})
    self.level:box2d_init(World)
    self.level.layers.solid.visible = false
    self.widthLimit = self.rawMap.tilewidth * self.rawMap.width
    self.heightLimit = self.rawMap.tileheight * self.rawMap.height
    self:spawnEntities()
end

function Map:next()
    self:clean()
    self.currentLevel = self.currentLevel + 1
    self:init()
end

function Map:getTileDebug(ox, oy, x, y)
    local posx = math.floor((x + ox) / (self.rawMap.tilewidth)) + 1
    local posy = math.floor((y + oy) / (self.rawMap.tileheight)) + 1
    if posy > 0 and posy <= self.rawMap.height and posx > 0 and posx <= self.rawMap.width then
        local position = (posy - 1) * self.rawMap.width + posx
        return ""..self.rawMap.layers[1].data[position].." Tilex: "..posx.." Tiley: "..posy
    else
        return "out of bounds"
    end 
    --print("x:"..posx.."; y:"..posy.." - pos: "..position)
    
end

function Map:getTile(x, y)
    local posx = math.floor(x / (self.rawMap.tilewidth)) + 1
    local posy = math.floor(y / (self.rawMap.tileheight)) + 1
    if posy > 0 and posy <= self.rawMap.height and posx > 0 and posx <= self.rawMap.width then
        local position = (posy - 1) * self.rawMap.width + posx
        return self.rawMap.layers[1].data[position]
    else
        return 0
    end 
end

function Map:update()

end

function Map:clean()
    --self.level:box2d_removeLayer("solid")

end

function Map:setStartPosition(x, y)
    self.playerStart.x = x
    self.playerStart.y = y
end


function Map:spawnEntities()
    for i,object in ipairs(self.level.layers.objects.objects) do
        if object.type == "player" then
            Map:setStartPosition(object.x, object.y)
        elseif object.type == "police" then
            Police.new(object.x, object.y, self)
        end
    end
end


return Map