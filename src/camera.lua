local Camera = {
    x = 0,
    y = 0,
    scale = 2,
}
local Map = require("src/map")

function Camera:apply()
    love.graphics.push()
    love.graphics.scale(self.scale, self.scale)
    love.graphics.translate(-self.x, -self.y)
end

function Camera:clear()
    love.graphics.pop()
end

function Camera:setPosition(x, y)
    self.x = x - love.graphics.getWidth() / 2 / self.scale
    self.y = y - love.graphics.getHeight() / 2 / self.scale

    local RS = self.x + love.graphics.getWidth() / 2

    if self.x < 0.5 then
        self.x = 0
    else
        self.x = math.floor(self.x + 0.5)
    end
    
end

return Camera