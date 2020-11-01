-- helloworld.hs
-- auth: jennifer chang
-- date: 2018/03/31

main = do
    putStrLn "hello, what's your name?"
    name <- getLine
    putStrLn $ "Hello " ++ name ++ ", you rock!"

