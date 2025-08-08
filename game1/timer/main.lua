-- love.mousepressed documentation: https://love2d.org/wiki/love.mousepressed

function love.load()
    target = {}
    target.x = 300
    target.y = 300
    target.radius = 50

    score = 0
    timer = 10
    gameFont = love.graphics.newFont(35)
end

function love.update(dt)
--[[ delta time is the amount of time that has passed since the last frame, since love.update() runs 
every frame of our application, the value of dt changes depending on the amount of time passed
between each frame, love games run around 60 frames per second and that means dt value will be very
close to 1/60 => 0,0167, close and not exactly this number because when a game runs the frame rate
isn't always consistent, luckly dt also keeps track of the frame rate for us and any calculations we do
using dt will automatically take the frame rate into account, we can use this to tick down our timer]]

    if timer > 0 then
        timer = timer - dt
    end

    if timer < 0 then
        timer = 0
    end

-- since the game usually runs at 60fps we are subtracting 0,0167 of our timer every 1/60 of a second
-- after one second the amount of time subtracted from our timer is exactly one, all thanks to dt
-- if for some reason the game were to run at 30fps, the value of dt would be 0,0333
-- thus subtracting 0,0333 every 1/30 of a second, achieving the same result

end

function love.draw()
    -- target
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    -- score
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0, 0)
    love.graphics.print(math.ceil(timer), 200, 0)

end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 and shooting_attempt(x, y, target.x, target.y, target.radius) then
        score = score + 1
        target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
        target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
    end
end

function shooting_attempt(x1, y1, x2, y2, radius)
    local temp = math.sqrt(((x1 - x2) ^ 2) + ((y1 - y2) ^ 2))
    local distance = math.abs(temp)

    if distance > radius then
        return false
    else
        return true
    end
end