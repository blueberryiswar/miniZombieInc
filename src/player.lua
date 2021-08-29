local Player = {}
local Remains = require("src/remains")

function Player:load()
    self.x = 100
    self.y = 100
    self.startX = 0
    self.startY = 0
    self.spawnTimer = 0
    self.img = love.graphics.newImage("asset/simple_car.png")
    self.height = 24
    self.width = 24
    self.animation = {}
    self.acceleration = 120
    self.maxSpeed = 1000
    self.alive = true
    self.scale = 1
    self.xVel = 0
    self.yVel = 0
    self.friction = 80
    self:loadAssets()
    self.state = "driveHori"

    self.physics = {}
    self.physics.body = love.physics.newBody(World, self.x, self.y, "dynamic")
    self.physics.body:setFixedRotation(true)
    self.physics.shape = love.physics.newRectangleShape(self.width - 10, self.height -12)
    self.physics.fixture = love.physics.newFixture(self.physics.body, self.physics.shape)
    self.physics.body:setGravityScale(0)
    self.physics.body:setMass(30)
end

function Player:loadAssets()
    self.animation = {timer = 0, rate = 0.25}
    self.animation.driveHori = {total = 2, current = 1, quad = {}}
    for i=1,self.animation.driveHori.total do
        self.animation.driveHori.quad[i] = love.graphics.newQuad(self.width * (i - 1)
        , 0
        , self.width
        , self.height
        , self.img:getDimensions())
    end

    self.animation.driveUp = {total = 2, current = 1, quad = {}}    
    for i=1,self.animation.driveUp.total do
        self.animation.driveUp.quad[i] = love.graphics.newQuad(self.width * (i + 1)
        , 0
        , self.width
        , self.height
        , self.img:getDimensions())
    end

    self.animation.driveDown = {total = 2, current = 1, quad = {}}    
    for i=1,self.animation.driveDown.total do
        self.animation.driveDown.quad[i] = love.graphics.newQuad(self.width * (i + 3)
        , 0
        , self.width
        , self.height
        , self.img:getDimensions())
    end

    self.animation.draw = self.animation.driveHori.quad[1]
    self.animation.width = self.spriteHeight
    self.animation.height = self.spriteWidth
end


function Player:update(dt)
    self:move(dt)
    self:applyFriction(dt)
    self:animate(dt)
    self:syncPhysics()
    self:respawn()
end

function Player:draw()
    love.graphics.draw(self.img, self.animation.draw, self.x, self.y, 0, self.scale, 1, self.width / 2, self.height / 2)
end

function Player:move(dt)
    if(math.abs(self.xVel) + math.abs(self.yVel) > self.maxSpeed) then return end
    if love.keyboard.isDown("d", "right") then
        self.xVel = math.min(self.xVel + self.acceleration * dt, self.maxSpeed)
        self.state = "driveHori"
        self.scale = 1
    elseif love.keyboard.isDown("a", "left") then
       self.xVel = math.max(self.xVel - self.acceleration * dt, -self.maxSpeed)
       self.scale = -1
       self.state = "driveHori"
    end
       
    if love.keyboard.isDown("w", "up") then
        self.yVel = math.max(self.yVel - self.acceleration * dt, -self.maxSpeed)
        self.state = "driveDown"
    elseif love.keyboard.isDown("s", "down") then
        self.yVel = math.min(self.yVel + self.acceleration * dt, self.maxSpeed)
        self.state = "driveUp"
    end
 end

 function Player:syncPhysics()
    self.x, self.y = self.physics.body:getPosition()
    self.x = math.floor(self.x)
    self.y = math.floor(self.y)
    self.physics.body:setLinearVelocity(self.xVel, self.yVel)
end

function Player:setPosition(x, y)
    self.startX = x 
    self.startY = y
    self.physics.body:setPosition(self.startX, self.startY)
end

function Player:applyFriction(dt)
    if self.xVel > 0 then
        self.xVel = math.max(self.xVel - self.friction * dt, 0)
    elseif self.xVel < 0 then
        self.xVel = math.min(self.xVel + self.friction * dt, 0)
    end
    if self.yVel > 0 then
        self.yVel = math.max(self.yVel - self.friction * dt, 0)
    elseif self.yVel < 0 then
        self.yVel = math.min(self.yVel + self.friction * dt, 0)
    end    
end

function Player:animate(dt)
    self.animation.timer = self.animation.timer + dt
    if self.animation.timer > self.animation.rate then
        self.animation.timer = 0
        self:setNewFrame()
    end
end

function Player:respawn()
    if self.alive then return end
    Remains.new(self.x, self.y, self.state, self.scaleX)
    self.physics.body:setPosition(self.startX, self.startY)
    self.x = self.startX
    self.y = self.startY
    self.alive = true
end

function Player:setNewFrame() 
    local anim = self.animation[self.state]

    if anim.current < anim.total then
        anim.current = anim.current + 1
    else
        anim.current = 1
    end

    self.animation.draw = anim.quad[anim.current]
end

function Player:beginContact(a, b, collision)
    if a == self.physics.fixture or b == self.physics.fixture then
        if math.abs(self.xVel) + math.abs(self.yVel) > 100 then
            self:takeDamage()
        end
    end
end

function Player:takeDamage()
    print("boom")
    Player:die()
end

function Player:die()
    print("Player died")
    self.alive = false
    self.xVel = 0
    self.yVel = 0
end

function Player:busted()
    print("Player catched")
    self.alive = false
    self.xVel = 0
    self.yVel = 0
end
 
return Player

