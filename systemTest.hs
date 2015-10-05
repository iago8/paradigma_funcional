import System.IO

main = do
     contents <- readFile "intro.txt"
     putStr contents 