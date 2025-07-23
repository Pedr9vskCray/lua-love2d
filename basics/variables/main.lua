-- working with variables

message = "my name is pedro!" -- string
number = 10 -- integer
age = number + 10
output = number + age
price = 20.17 -- floating point
day = true -- boolean

function love.draw()
    love.graphics.setFont(love.graphics.newFont(25))
    love.graphics.print(output)
end