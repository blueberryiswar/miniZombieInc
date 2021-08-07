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
    self.xVel = 0
    self.yVel = 0
    self.friction = 80
    self:loadAssets()

    self.physics = {}
    self.physics.body = love.physics.newBody(World, self.x, self.y, "dynamic")
    self.physics.body:setFixedRotation(true)
    self.physics.shape = love.physics.newRectangleShape(self.width, self.height)
    self.physics.fixture = love.physics.newFixture(self.physics.body, self.physics.shape)
    self.physics.body:setGravityScale(0)
end

function Car:loadAssets()
    self.animation = {timer = 0, rate = 0.1}
    self.animation.driveHori = {total = 2, current = 1, quad = {}}
    for i=1,self.animation.driveHori.total do
        self.animation.driveHori.quad[i] = love.graphics.newQuad(self.width * (i - 1)
        , self.height * (i - 1)
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
    self:syncPhysics()
end

function Car:draw()
    love.graphics.draw(self.img, self.animation.draw, self.x, self.y)
end

function Car:move(dt)
    if love.keyboard.isDown("d", "right") then
        self.xVel = math.min(self.xVel + self.acceleration * dt, self.maxSpeed)
    elseif love.keyboard.isDown("a", "left") then
       self.xVel = math.max(self.xVel - self.acceleration * dt, -self.maxSpeed)
    else
       --self:applyFriction(dt)
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
end

 
return Car

