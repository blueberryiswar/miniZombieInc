--local Player = require("player")
local GUI = {}

function GUI:load()
    self.displayText = "-"
    self.font = love.graphics.newFont("asset/bit.ttf", 36)
end

function GUI:update(dt)
    
end

function GUI:draw()
    self:displayDebugText()
end

function GUI:setDebugText(string)
    self.displayText = string
end

function GUI:displayDebugText()

    love.graphics.setFont(self.font)
    love.graphics.setColor(0, 0, 0, 0.5) -- black text shadow
    love.graphics.print(self.displayText,22,22)
    love.graphics.setColor(1,1,1,1)
    love.graphics.print(self.displayText,20,20)
end

return GUI