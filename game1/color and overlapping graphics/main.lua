function love.load()

end

function love.update(dt)

end

function love.draw()
-- RGB values for colors - 1 is highest and 0 is lowest
    love.graphics.setColor(0, 1, 0) -- green
    love.graphics.rectangle("fill", 100, 100, 200, 100)
    love.graphics.setColor(255/255, 107/255, 153/255) -- ff6b99
    love.graphics.circle("fill", 200, 250, 100)

    --[[ code for drawing a target shape

    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", 300, 300, 150)
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", 300, 300, 100)
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", 300, 300, 50)

    --]]
end