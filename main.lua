--  Debugging setup in visual studio code
if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
    require("lldebugger").start()
end

PlayerClass =require("player")
Player1 = PlayerClass:new()
Player2 = PlayerClass:new()

function love.load()
    local window_width = 560
    local window_height = 272
    local success = love.window.setMode( window_width, window_height, {fullscreen=false,resizable = false,centered = true})
    love.window.setTitle("Pong")
    love.graphics.setNewFont(30)
    BackgroundImg = love.graphics.newImage("data/waterfall.png")

    -- Initial setup for Player1
    Player1:load(window_width,window_height,1)
    Player1:setKeys("a","w")
    -- Initial setup for Player2
    Player2:load(window_width,window_height,2)
    Player2:setKeys("p",":")
    
end

function love.draw()
    love.graphics.draw(BackgroundImg, 0, 0)
    love.graphics.setColor(0,0,0)
    -- love.graphics.print('Hello World!', 400, 300)
    Player1:draw()
    Player2:draw()
end
function love.update(dt)
    Player1:update(dt)
    Player2:update(dt)
end