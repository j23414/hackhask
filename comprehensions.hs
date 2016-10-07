-- List Comprehensions
-- Similar to set notation where the conditions are on the right of a pipe

[x*2 | x<-[1..10]]            -- [2,4,6,8,10,12,14,16,18,20]
[x*2 | x<-[1..10],x*2 >= 12]  -- [12,14,16,18,20]
[x | x <-[50..100], x `mod` 7 == 3]

-- function that prints BOOM! if even, BANG if odd
boomBangs xs = [ if x<10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- predicate = odd x

