isSortedAsc :: Ord a => [a] -> Bool
isSortedAsc xs = all (\(x, y) -> x <= y) $ zip xs (tail xs) -- isSortedAsc [1,2,2,3] -> True, isSortedAsc [1,2,1] -> False

isSortedDesc :: Ord a => [a] -> Bool
isSortedDesc xs = all (\(x, y) -> x >= y) $ zip xs (tail xs)

everySecond :: [t] -> [t]
everySecond xs = map fst $ filter (odd . snd) $ zip xs [1..] -- everySecond [1..8] -> [1,3,5,7]