local Map = {}
local STI = require("src/sti")


function Map:load()
    self.currentLevel = "1"
    World = love.physics.newWorld(0,2000)
    World:setCallbacks(beginContact, endContact)
    self:init()
end

function Map:init()
    self.rawMap = require("map/"..self.currentLevel)
    self.level = STI("map/"..self.currentLevel..".lua", {"box2d"})
    self.level:box2d_init(World)
    
end

function Map:next()
    self:clean()
    self.currentLevel = self.currentLevel + 1
    self:init()
end

function Map:getTile(ox, oy, x, y)
    local posx = math.floor((x + ox) / self.rawMap.tilewidth)
    local posy = math.floor((y + oy) / self.rawMap.tileheight)
    local position = posy * self.rawMap.width + posx 
    print("x:"..posx.."; y:"..posy.." - pos: "..position)
    return self.rawMap.layers[1].data[position]
end

function Map:update()

end

function Map:clean()
    --self.level:box2d_removeLayer("solid")

end


return Map