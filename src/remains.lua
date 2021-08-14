local Remains = {
    img = love.graphics.newImage("asset/carExplosion.png"),
    width = 24,
    height = 24,
}
Remains.__index = Remains
local ActiveRemainss = {}

function Remains.new(x, y, state, scaleX)
    local instance = setmetatable({}, Remains)
    instance.x = x
    instance.y = y
    instance.r = 0
    instance.state = state
    instance.scaleX = scaleX
    instance.animation = {}
    instance.physics = {}
    instance.physics.body = love.physics.newBody(World, x, y, "dynamic")
    instance.physics.shape = love.physics.newRectangleShape(instance.width, instance.height)
    instance.physics.fixture = love.physics.newFixture(instance.physics.body, instance.physics.shape)
    instance.physics.body:setMass(25)
    instance.damage = 1
    
    instance:loadAssets()

    table.insert(ActiveRemainss, instance)
end

function Remains:update(dt)
    self:syncPhysics()
    self:animate(dt)
end

function Remains:loadAssets()
    self.animation = {timer = 0, rate = 0.25}
    self.animation.driveHori = {total = 5, current = 1, quad = {}}
    for i=1,self.animation.driveHori.total do
        self.animation.driveHori.quad[i] = love.graphics.newQuad(self.width * (i - 1)
        , 0
        , self.width
        , self.height
        , self.img:getDimensions())
    end

    self.animation.driveUp = {total = 5, current = 1, quad = {}}    
    for i=1,self.animation.driveUp.total do
        self.animation.driveUp.quad[i] = love.graphics.newQuad(self.width * (i - 1)
        , self.height * 1
        , self.width
        , self.height
        , self.img:getDimensions())
    end

    self.animation.driveDown = {total = 5, current = 1, quad = {}}    
    for i=1,self.animation.driveDown.total do
        self.animation.driveDown.quad[i] = love.graphics.newQuad(self.width * (i - 1)
        , self.height * 2
        , self.width
        , self.height
        , self.img:getDimensions())
    end

    self.animation.draw = self.animation.driveHori.quad[1]
    self.animation.width = self.spriteHeight
    self.animation.height = self.spriteWidth
end

function Remains:animate(dt)
    self.animation.timer = self.animation.timer + dt
    if self.animation.timer > self.animation.rate then
        self.animation.timer = 0
        self:setNewFrame()
    end
end

function Remains:setNewFrame() 
    local anim = self.animation[self.state]

    if anim.current < anim.total then
        anim.current = anim.current + 1
    else
        anim.current = 4
    end

    self.animation.draw = anim.quad[anim.current]
end

function Remains:draw()
    love.graphics.draw(self.img, self.animation.draw, self.x, self.y, self.r,self.scaleX,1, self.width / 2, self.height / 2)
end

function Remains:syncPhysics()
    self.x, self.y = self.physics.body:getPosition()
    self.r = self.physics.body:getAngle()
end

function Remains.drawAll()
    for i,instance in ipairs(ActiveRemainss) do
        instance:draw()
    end
end

function Remains.removeAll()
    for i,v in ipairs(ActiveRemainss) do
        v.physics.body:destroy()
    end

    ActiveRemainss = {}
end

function Remains.updateAll(dt)
    for i, instance in ipairs(ActiveRemainss) do
        instance:update(dt)
    end
end

return Remains