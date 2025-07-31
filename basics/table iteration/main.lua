-- iterating over tables using for loop

scores = {55, 24, 23}
total = 0
sum = 0

-- ipairs(table) function is needed to iterate this way

for key,value in ipairs(scores) do 
    total = total + value
    sum = sum + key
end

function love.draw()
    love.graphics.setFont(love.graphics.newFont(25))
    love.graphics.print(sum)
end