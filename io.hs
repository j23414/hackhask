import Data.List

mylength = foldr (const (+1)) 0
main = print (mylength "haskell")