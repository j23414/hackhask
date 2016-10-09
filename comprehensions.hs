-- List Comprehensions
-- Similar to set notation where the conditions are on the right of a pipe

[x*2 | x<-[1..10]]               -- [2,4,6,8,10,12,14,16,18,20]
[x*2 | x<-[1..10],x*2 >= 12]     -- [12,14,16,18,20]
[x | x <-[50..100], x `mod` 7 == 3]

-- function that prints BOOM! if even, BANG if odd
-- convention where xs is a list and x is individual element
boomBangs xs = [ if x<10 then "BOOM!" else "BANG!" | x <- xs, odd x]

[ x | x<-[10..20], x/=13,x/=15,x/=19]

-- All combination of two lists
[x*y| x<-[2,5,10],y<-[8,10,11]]

-- Works with strings
nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]

[adjective ++ " " ++ noun | adjective<-adjectives, noun<-nouns]

--["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog",
-- "grouchy pope","scheming hobo","scheming frog","scheming pope"]

-- use _ when it is a throw away variable
length' xs = sum[1| _ <- xs]

removeNonUppercase st = [c | c<-st, c `elem` ['A'..'Z']]

-- list of list Comprehension 
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
[[x|x<-xs, even x]|xs<-xxs]

-- Use tuple for a list of pairs
[(1,2),(8,11),(4,5)]
[(1,2),(8,11,5),(4,5)]    -- Error: Each list should have same length
[(1,2),("One",2)]         -- Error: Must contain same data type (either (num,num) or (str, num))

-- Tuple functions
fst (8,11)               -- 8, first element in a tuple
snd (8,11)               -- 11, second item
fst ("Wow", False)       -- "Wow", works on strings

zip [1,2,3,4,5] [5,5,5,5,5]
-- [(1,5),(2,5),(3,5),(4,5),(5,5)]
zip [1..5] ["one","two","three","four","five"]
-- [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]