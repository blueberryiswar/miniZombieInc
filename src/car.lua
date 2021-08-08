local Car = {}

function Car:load()
    self.x = 100
    self.y = 100
    self.img = love.graphics.newImage("asset/simple_car.png")
    self.height = 24
    self.width = 24
    self.animation = {}
    self.acceleration = 100
    self.maxSpeed = 800
    self.scale = 1
    self.xVel = 0
    self.yVel = 0
    self.friction = 80
    self:loadAssets()
    self.state = "driveHori"

    self.physics = {}
    self.physics.body = love.physics.newBody(World, self.x, self.y, "dynamic")
    self.physics.body:setFixedRotation(true)
    self.physics.shape = love.physics.newRectangleShape(self.width, self.height)
    self.physics.fixture = love.physics.newFixture(self.physics.body, self.physics.shape)
    self.physics.body:setGravityScale(0)
end

function Car:loadAssets()
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


function Car:update(dt)
    self:move(dt)
    self:applyFriction(dt)
    self:animate(dt)
    self:syncPhysics()
end

function Car:draw()
    love.graphics.draw(self.img, self.animation.draw, self.x, self.y, 0, self.scale, 1, self.width / 2, self.height / 2)
end

function Car:move(dt)
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

 function Car:syncPhysics()
    self.x, self.y = self.physics.body:getPosition()
    self.physics.body:setLinearVelocity(self.xVel, self.yVel)
end

function Car:applyFriction(dt)
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

function Car:animate(dt)
    self.animation.timer = self.animation.timer + dt
    if self.animation.timer > self.animation.rate then
        self.animation.timer = 0
        self:setNewFrame()
    end
end

function Car:setNewFrame() 
    local anim = self.animation[self.state]

    if anim.current < anim.total then
        anim.current = anim.current + 1
    else
        anim.current = 1
    end

    self.animation.draw = anim.quad[anim.current]
end

 
return Car
