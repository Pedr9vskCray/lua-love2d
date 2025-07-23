-- global and local variables

message = "test message"

function foo()
    local message = "altered test message" -- added local keyword to not change global "message" variable
end

function love.draw()

    foo()

    love.graphics.setFont(love.graphics.newFont(25))
    love.graphics.print(message)
end