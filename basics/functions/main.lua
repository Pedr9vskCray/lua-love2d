-- functions and parameters

output = 0 -- global

function increase(step)
    output = output + step
end

function double(step)
    number = step * 2 -- local
    return number
end

-- functions can be assigned to variables

assignedVar = double

--[[
increase(5)
increase(10)
increase(15)
]]

function love.draw()
    love.graphics.setFont(love.graphics.newFont(25))
    love.graphics.print(assignedVar(5))
end