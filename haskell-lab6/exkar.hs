import Control.Monad

triples n = [(a,b,c) | a <- [1..n], b <- [1..n], c <- [1..n], (a^2 + b^2) `mod` c^2 ==1 ]

triples' n = do
    let vals = [1..n]
    a <- vals
    b <- vals
    c <- vals
    guard $ (a^2 + b^2) `mod` c^2 ==1
    return (a, b, c)


sumLog :: [Double] -> Maybe Double
sumLog [] = Just 0
sumLog (x :xs) =
    if x <= 0 then Nothing
    else do
        s <- sumLog xs
        return $ s + log x