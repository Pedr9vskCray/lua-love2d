-- love.mousepressed documentation: https://love2d.org/wiki/love.mousepressed

function love.load()
    target = {}
    target.x = 300
    target.y = 300
    target.radius = 50

    score = 0
    timer = 0
    gameFont = love.graphics.newFont(35)
end

function love.update(dt)

end

function love.draw()
    -- target
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    -- score
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0, 0)


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