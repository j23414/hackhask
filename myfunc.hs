
-- Pass in a list of adjectives and nouns
adjnouncombo adjs nouns = [adj ++ " " ++ noun | adj <- adjs, noun=nouns]

-- Converts DNA to RNA, input is case insensitive
import Data.Char        -- get toUpper function
toUpperStr xs = [toUpper x| x<-xs]
dtoRNA xs = [if (x/='T') then x else 'U' | x<-toUpperStr xs, x `elem` ['A','C','G','T']]

