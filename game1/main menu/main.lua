-- love.mousepressed documentation: https://love2d.org/wiki/love.mousepressed

function love.load()
    target = {}
    target.x = 300
    target.y = 300
    target.radius = 50

    score = 0
    timer = 0
    gameFont = love.graphics.newFont(35)

    gameState = 1

    sprites = {}
    sprites.sky = love.graphics.newImage('assets/sky.png')
    sprites.target = love.graphics.newImage('assets/target.png')
    sprites.crosshairs = love.graphics.newImage('assets/crosshairs.png')

    love.mouse.setVisible(false)
end

function love.update(dt)

    if timer > 0 then
        timer = timer - dt
    end

    if timer < 0 then
        timer = 0
        gameState = 1
    end

end

function love.draw()

    -- sprite.sky 
    love.graphics.draw(sprites.sky, 0, 0)

    -- score and timer
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0, 0)
    love.graphics.print(math.ceil(timer), 200, 0)

    if gameState == 2 then

        -- target hitbox
        love.graphics.circle("fill", target.x, target.y, target.radius)

        -- sprite.target 
        love.graphics.draw(sprites.target, target.x - target.radius, target.y - target.radius)
        
    end

    -- sprite.crosshairs
    love.graphics.draw(sprites.crosshairs, love.mouse.getX()-20, love.mouse.getY()-20)

end

function love.mousepressed(x, y, button, istouch, presses)

    if gameState == 2 then
        if button == 1 and shooting_attempt(x, y, target.x, target.y, target.radius) then
            score = score + 1
            target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
        end
    elseif gameState == 1 then
        gameState = 2
        timer = 15
        score = 0
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