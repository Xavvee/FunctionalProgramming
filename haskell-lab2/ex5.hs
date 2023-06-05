isPrime :: Integral t => t -> Bool
isPrime n = [i | i <- [2..round (sqrt n)], n `mod` i == 0] == []