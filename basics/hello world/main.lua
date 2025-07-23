-- hello world and changing font size

function love.draw()
    love.graphics.setFont(love.graphics.newFont(25))
    love.graphics.print("Hello World!")
end