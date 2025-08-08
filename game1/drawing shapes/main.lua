-- love2d documentation: https://love2d.org/wiki/Main_Page

function love.load()

end

function love.update(dt)

end

function love.draw()
    -- drawing a rectangle -> ("mode", x, y, width, height)
    love.graphics.rectangle("fill", 100, 100, 200, 100)
    love.graphics.circle("fill", 400, 400, 100)
end