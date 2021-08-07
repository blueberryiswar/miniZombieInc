local Map = {}
local STI = require("src/sti")


function Map:load()
    self.currentLevel = "simpletown"
    World = love.physics.newWorld(0,2000)
    World:setCallbacks(beginContact, endContact)
    self:init()
end

function Map:init()
    self.level = STI("map/"..self.currentLevel..".lua", {"box2d"})
    self.level:box2d_init(World)
end


function Map:next()
    self:clean()
    self.currentLevel = self.currentLevel + 1
    self:init()
end

function Map:update()

end

function Map:clean()
    --self.level:box2d_removeLayer("solid")

end


return Map