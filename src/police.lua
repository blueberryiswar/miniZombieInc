local inspect = require("dev/inspect")
local Police = {
    img = love.graphics.newImage("asset/simple_car.png"),
    width = 24,
    height = 24,
    Player = require("src/Player")
}
Police.__index = Police
local ActivePolice = {}

function Police.new(x, y, Map)
    local instance = setmetatable({}, Police)
    instance.x = x
    instance.y = y
    instance.height = 24
    instance.width = 24
    instance.animation = {}
    instance.acceleration = 120
    instance.maxSpeed = 100
    instance.scale = 1
    instance.xVel = 0
    instance.yVel = 0
    instance.friction = 80
    instance:loadAssets()
    instance.state = "driveHori"
    instance.Map = Map
    instance.direction = "none"
    instance.decision = false
    instance.lastTile = 0

    instance.physics = {}
    instance.physics.body = love.physics.newBody(World, instance.x, instance.y, "dynamic")
    instance.physics.body:setFixedRotation(true)
    instance.physics.shape = love.physics.newRectangleShape(Police.width * 0.8, Police.height * 0.6)
    instance.physics.fixture = love.physics.newFixture(instance.physics.body, instance.physics.shape)
    instance.physics.body:setMass(25)
    table.insert(ActivePolice, instance)
end

function Police:loadAssets()
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


function Police:update(dt)
    self:move(dt)
    self:applyFriction(dt)
    self:animate(dt)
    self:syncPhysics()
end

function Police:draw()
    love.graphics.draw(self.img, self.animation.draw, self.x, self.y, 0, self.scale, 1, self.width / 2, self.height / 2)
end

function Police:move(dt)
    local currentTile = self.Map:getTile(self.x, self.y)

    if self.lastTile == currentTile then
        self:driveStraight(dt)
        return
    end

    if currentTile == 16 then -- hori straight road
        print("horizontal start")
        if self.direction == "none" or self.direction == "up" or self.direction == "down" then
            self:setRandomDirection("hori")
        end
    elseif currentTile == 1 or currentTile == 22 then
        if self.direction == "none" or self.direction == "left" or self.direction == "right" then
            self:setRandomDirection("vert")
        end
    elseif currentTile == 3 then -- crossroad
        self:setRandomDirection("cross")
    elseif currentTile == 1 then
        if self.direction == "none" or self.direction == "left" or self.direction == "right" then
            self:setRandomDirection("vert")
        end
    elseif currentTile == 4 then -- turn right to up
        if self.direction == "right" then 
            self.direction = "up"
        else
            self.direction = "left"
        end
    elseif currentTile == 15 then -- turn right to down
        if self.direction == "right" then
            self.direction = "down"
        else
            self.direction = "left"
        end
    elseif currentTile == 14 then -- turn left to down
        if self.direction == "left" then
            self.direction = "down"
        else
            self.direction = "right"
        end
    elseif currentTile == 13 then -- turn left to up
        if self.direction == "left" then
            self.direction = "up"
        else
            self.direction = "right"
        end
    elseif currentTile == 18 then -- end road down
        self.direction = "up"
    elseif currentTile == 19 then -- end road up
        self.direction = "down"
    end

    self.lastTile = currentTile
    print(self.direction)
end


function Police:setRandomDirection(limit)
    local i = math.random(10)
    print("rolled "..i.." current direction "..self.direction)
    if limit == "hori" then
        if i < 5 then
            self.direction = "left"
        else
            self.direction = "right"
        end
    elseif limit == "vert" then
        if i < 5 then
            self.direction = "up"
        else
            self.direction = "down"
        end
    elseif limit == "cross" then 
        if i < 2 and self.direction ~= "up" then
            self.direction = "up"
        elseif i < 5 and self.direction ~= "left" then
            self.direction = "left"
        elseif i < 8 and self.direction ~= "right" then
            self.direction = "right"
        elseif i <= 10 and self.direction ~= "down" then
            self.direction = "down"
        else
            print("rolled "..i.." current direction "..self.direction)
        end
    end
    print(self.direction)
end

function Police:driveStraight(dt)
    if self.direction == "right" then
        self.xVel = math.min(self.xVel + self.acceleration * dt, self.maxSpeed)
        self.scale = 1
        self.state = "driveHori"
    elseif self.direction == "left" then
        self.xVel = math.max(self.xVel - self.acceleration * dt, -self.maxSpeed)
        self.scale = -1
        self.state = "driveHori"
    elseif self.direction == "up" then
        self.yVel = math.max(self.yVel - self.acceleration * dt, -self.maxSpeed)
        self.state = "driveDown"
    elseif self.direction == "down" then
        self.yVel = math.min(self.yVel + self.acceleration * dt, self.maxSpeed)
        self.state = "driveUp"
    end
    self:steerAgainstDrift(dt)
end

function Police:steerAgainstDrift(dt)
    if self.direction == "down" or self.direction == "up" then
        if self.xVel > 20 then
            self.xVel = math.max(self.xVel - self.acceleration * dt, 0)
        elseif self.xVel < -20 then
            self.xVel = math.min(self.xVel + self.acceleration * dt, 0)
        end
    elseif self.direction == "left" or self.direction == "right" then
        if self.yVel > 20 then
            self.yVel = math.max(self.yVel - self.acceleration * dt, 0)
        elseif self.yVel < -20 then
            self.yVel = math.min(self.yVel + self.acceleration * dt, 0)
        end
    end
end

function Police:syncPhysics()
    self.x, self.y = self.physics.body:getPosition()
    self.physics.body:setLinearVelocity(self.xVel, self.yVel)
end

function Police:applyFriction(dt)
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

function Police:avoid(collision)
    if self.direction == "up" then
        self.direction = "down"
    elseif self.direction == "down" then
        self.direction = "up"
    elseif self.direction == "left" then
        self.direction = "right"
    elseif self.direction == "right" then
        self.direction = "left"
    end
end

function Police:animate(dt)
    self.animation.timer = self.animation.timer + dt
    if self.animation.timer > self.animation.rate then
        self.animation.timer = 0
        self:setNewFrame()
    end
end

function Police:setNewFrame() 
    local anim = self.animation[self.state]

    if anim.current < anim.total then
        anim.current = anim.current + 1
    else
        anim.current = 1
    end

    self.animation.draw = anim.quad[anim.current]
end

function Police.updateAll(dt)
    for i, instance in ipairs(ActivePolice) do
        instance:update(dt)
    end
end

function Police.drawAll()
    for i,instance in ipairs(ActivePolice) do
        instance:draw()
    end
end

function Police.removeAll()
    for i,v in ipairs(ActivePolice) do
        v.physics.body:destroy()
    end

    ActivePolice = {}
end

function Police.beginContact(a, b, collision)
    for i,instance in ipairs(ActivePolice) do
       if a == instance.physics.fixture or b == instance.physics.fixture then
          if a == instance.physics.fixture then
            instance:avoid(b)
          elseif b == instance.physics.fixture then
            instance:avoid(a)
          end
       end
    end
 end

return Police

