-- while loops

counter = 1
otherVariable = 1

function love.draw()
    while counter < 10 do
        counter = counter + 1
        otherVariable = otherVariable - 1
    end
    love.graphics.setFont(love.graphics.newFont(25))
    love.graphics.print(otherVariable)
end