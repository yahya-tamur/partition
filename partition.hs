import Data.List (intercalate)
import System.Environment (getArgs)

main = do
    args <- getArgs
    let n = read (head args) :: Int
    foldMap putStrLn. map (intercalate " ". map show). partition$ n

partition :: Int -> [[Int]]
partition n = p n n
    where
        p n m --partitions, where every element is <= m
            | n == 0 = [[]]
            | m == 1 = [replicate n 1]
            | otherwise =
                    concatMap (\(n',k) -> ((replicate k m)++) <$> (p n' (m-1))).
                    takeWhile ((>=0). fst).
                    iterate (\(n',k) -> (n'-m, k+1)) $ (n,0)

