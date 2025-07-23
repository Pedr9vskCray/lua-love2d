-- for loops

time = 0

for i=1, 100, 2 do -- (start, stop, step)
    time = time + i
end

function love.draw()
    love.graphics.setFont(love.graphics.newFont(25))
    love.graphics.print(time)
end
