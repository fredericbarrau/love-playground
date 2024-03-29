BallState = {
    START = 0,
    MOVING = 1,
}

Ball = {
    x = 0,
    y = 0,
    max_x = 0,
    max_y = 0,
    radius = 5,
    colorR = 255,
    colorG = 0,
    colorB = 0,
    mvmtVectorX = 0,
    mvmtVectorY = 0,
    mvmtVectorSpeed = 0,
    showMvmtVector = false,
    state = BallState.START
}


-- Common methods for Love

function Ball:load(window_width,window_height, x, y)
    self.x = x
    self.y = y
    self.max_x = window_width
    self.max_y = window_height
end

--[[ 
    Update the ball positions
 ]]
-- function Ball:update(dt,control_player)
--     if control_player ~= nil then
--         if self.mvmtVectorSpeed == 0
--     end
-- end

function Ball:draw()
    love.graphics.setColor(self.colorR, self.colorG, self.colorB)
    love.graphics.circle("fill", self.x, self.y, self.radius)
end

-- Helpers

return Ball