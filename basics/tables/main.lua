-- tables 


-- tables are kind of a mix between arrays and hashmaps

-- 3 different ways of inserting values into tables

scores = {1050} -- on declaration

scores[2] = 950 -- by index

table.insert(scores, 750) -- appending at the end



-- your can start an array at index 0 on any other value

names = {}

names["first"] = "pedro"
names[0] = "ronaldo"



-- it's possible to define table exclusive properties that can be accessed later
-- tbh it's just a simplified and more readable way of doing key/value pairs

scores.gameID = "space-invaders" -- this is equal to -> scores["gameID"] = "space-invaders"



function love.draw()
    love.graphics.setFont(love.graphics.newFont(25))
    love.graphics.print(scores["gameID"])
end

-- both key/value pairs and index/value pairs can coexist within a table
-- to access key/value information you'll need to use the key of that specific value
-- to access sequentially stored index/value information you can use the specific index 
-- or go through it all with for loops