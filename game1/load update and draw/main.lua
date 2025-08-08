function love.load()
-- 1/3 main functions that compose any love game, everything here loads as soon as the game starts

    number = 0
end

function love.update(dt)
-- 2/3 this is our game loop function, it's called every frame while our game is running

    number = number + 1
end

function love.draw()
-- 3/3 this function is used to drawing stuff on the screen, it runs every single frame aswell

    love.graphics.setFont(love.graphics.newFont(20))
    love.graphics.print(number)
end