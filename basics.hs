-- Lists

[1,2,3,4]      -- bare list
b = [1,2,3,4]  -- can be assigned to a name
[1..10]        -- [1,2,3,4,5,6,7,8,9,10], declares a range of values
['a'..'z']     -- abcdefghijklmnopqrstuvwxyz, works for strings
[2,4..10]      -- [2,4,6,8,10], specify steps, careful with this...
[0.1,0.3..1]   -- works for doubles, but can have weird results

[[1,1,1],[2,2,2],[3,3,3],[4,4,4]]  -- list of lists

-- List Operations

[1,2,3,4]++[5,6,7,8]    -- Append two lists
"hello"++" "++"world"   -- Applies to strings
10:[1,2,3,4]            -- prepend a value to list
[1,2,3,4]:10            -- postpend a value to list
"A":" SMALL CAT"        -- works on strings

[1,2,3,4] !! 2          -- get an element of list, output=3
"Steve Buscemi" !! 6    -- works on strings, output='B'
head [5,4,3,2,1]        -- 5
last [5,4,3,2,1]        -- 1
init [5,4,3,2,1]        -- [5,4,3,2]
tail [5,4,3,2,1]        -- [4,3,2,1]

-- Do not pass above functions an empty list or exception
-- head []    -- Exception: Prelude.head: empty lsit
null [1,2,3]            -- False
null []                 -- True

length [5,4,3,2,1]      -- returns length of list, output=5
reverse [5,4,3,2,1]     -- [1,2,3,4,5]
take 3 [5,4,3,2,1]      -- [5,4,3], takes first n elements
drop 3 [5,4,3,2,1]      -- [2,1], drops first n elements

maximum [8,4,2,1,5,6]   -- 8
minimum [1,9,2,3,4]     -- 1
sum [5,4,3,2,1]         -- 15, sum of all elements
product [5,4,3,2,1]     -- 120, product of all elements

4 `elem` [3,4,5,6]      --True, checks to see if 4 is element of a list
10 `elem` [3,4,5,6]     --False, called an infix function, easier to read

-- Working with infinite lists
take 24 [13,26..]       -- get first 24 values of multiples of 13
cycle [1,2,3]           -- creates an infinite list, cycling through values
take 10 (cycle [1,2,3])
take 12 (cycle "LOL")   -- works for strings
take 10 (repeat 5)

