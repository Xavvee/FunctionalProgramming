import Data.List

sortDesc :: Ord a => [a] -> [a]
sortDesc xs = (reverse . sort) xs

are2FunsEqAt :: Eq a => (t -> a) -> (t -> a) -> [t] -> Bool
are2FunsEqAt _ _ [] = True
are2FunsEqAt f g (x:xs) = (f x)==(g x) && (are2FunsEqAt f g xs) -- are2FunsEqAt (+2) (\x -> x + 2) [1..1000] = True


infixl 9 >.>
(>.>) :: (a -> b) -> (b -> c) -> (a -> c)
g >.> f = f.g

