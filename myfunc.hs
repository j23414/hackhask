
-- Pass in a list of adjectives and nouns
adjnouncombo adjs nouns = [adj ++ " " ++ noun | adj <- adjs, noun=nouns]

-- Converts DNA to RNA, input is case insensitive
import Data.Char        -- need to get toUpper
dtoRNA xs = [if ((toUpper x)/='T') then toUpper x else 'U' | x<-xs, x `elem` ['A','C','G','T','a','c','g','t']]
