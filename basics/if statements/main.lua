-- if / else / elseif statements

relayMessage = 0
maximumTime = 300
elapsedTime = 301

if elapsedTime <= maximumTime then
    if elapsedTime <= 100 then
        relayMessage = 1
    elseif elapsedTime <= 200 then
        relayMessage = 2
    elseif elapsedTime <= 299 then
        relayMessage = 3
    end
else
    relayMessage = 0
end

function love.draw()
    love.graphics.setFont(love.graphics.newFont(25))
    if relayMessage == 1 then
        love.graphics.print("There's still a lot of time left.")
    elseif relayMessage == 2 then
        love.graphics.print("Better hurry up a little!")
    elseif relayMessage == 3 then
        love.graphics.print("You're almost out of time!")
    else
        love.graphics.print("Time's up, game over!")
    end
end