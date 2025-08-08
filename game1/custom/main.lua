-- love.mousepressed documentation: https://love2d.org/wiki/love.mousepressed

function love.load()
    target = {}
    target.x = 300
    target.y = 300
    target.radius = 50

    targetColor = math.random(1, 2)

    score = 0
    timer = 15
    gameFont = love.graphics.newFont(35)

    sprites = {}
    sprites.sky = love.graphics.newImage('assets/sky.png')
    sprites.crosshairs = love.graphics.newImage('assets/crosshairs.png')

    love.mouse.setVisible(false)
end

function love.update(dt)

    if timer > 0 then
        timer = timer - dt
    end

    if timer < 0 then
        timer = 0
    end

end

function love.draw()

    -- sprites.sky
    love.graphics.draw(sprites.sky, 0, 0)

    -- target
    if targetColor == 1 then
        love.graphics.setColor(1, 0, 0)
        love.graphics.circle("fill", target.x, target.y, target.radius)
        love.graphics.setColor(1, 1, 1)
        love.graphics.circle("fill", target.x, target.y, target.radius-13)
        love.graphics.setColor(1, 0, 0)
        love.graphics.circle("fill", target.x, target.y, target.radius-30)
    else
        love.graphics.setColor(0, 1, 0)
        love.graphics.circle("fill", target.x, target.y, target.radius)
        love.graphics.setColor(1, 1, 1)
        love.graphics.circle("fill", target.x, target.y, target.radius-13)
        love.graphics.setColor(0, 1, 0)
        love.graphics.circle("fill", target.x, target.y, target.radius-30)
    end
    
    -- score
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0, 0)
    love.graphics.print(math.ceil(timer), 200, 0)

    -- sprites.crosshairs
    love.graphics.draw(sprites.crosshairs, love.mouse.getX()-20, love.mouse.getY()-20)

end

function love.mousepressed(x, y, button, istouch, presses)
    if targetColor == 1 then
        if button == 1 and shooting_attempt(x, y, target.x, target.y, target.radius) then
            score = score + 1
            target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
            targetColor = math.random(1, 2)
        end
    else
        if button == 2 and shooting_attempt(x, y, target.x, target.y, target.radius) then
            score = score + 1
            target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
            targetColor = math.random(1, 2)
        end
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