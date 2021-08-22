Ball = {
    x = 0,
    y = 0,
    radius = 5,
    colorR = 255,
    colorG = 0,
    colorB = 0
}

function Ball:update(dt)
end

function Ball:draw()
    love.graphics.setColor(self.colorR, self.colorG, self.colorB)
    love.graphics.circle("fill", self.x, self.y, self.radius)
end