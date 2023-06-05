data BinIntTree = EmptyIntBT |
                  IntNodeBT Int BinIntTree BinIntTree

sumBinIntTree :: BinIntTree -> Int
sumBinIntTree EmptyIntBT = 0
sumBinIntTree (IntNodeBT n lt rt) = n + sumBinIntTree lt + sumBinIntTree rt


data BinTree a = EmptyBT |
                 NodeBT a (BinTree a) (BinTree a)

sumBinTree :: (Num a) => BinTree a -> a
sumBinTree EmptyBT = 0
sumBinTree (NodeBT n lt rt) = n + sumBinTree lt + sumBinTree rt



data Expr a = Lit a | -- literal/value a, e.g. Lit 2 = 2
              Add (Expr a) (Expr a)

eval :: Num a => Expr a -> a
eval (Lit n) = n
eval (Add e1 e2) = eval e1 + eval e2

show' :: Show a => Expr a -> String
show' (Lit n) = show n
show' (Add e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"


depthOfBT :: BinTree a -> Int -- głębokość drzewa binarnego
depthOfBT EmptyBT =0
depthOfBT (NodeBT n lt rt) = max (1+depthOfBT lt ) (1+ depthOfBT rt)


flattenBTPre :: BinTree a -> [a]  -- napisać trzy wersje: preorder, inorder, postorder
flattenBTPre EmptyBT = []
flattenBTPre (NodeBT n lt rt) = [n]++flattenBTPre lt ++ flattenBTPre rt

flattenBTIn :: BinTree a -> [a]  -- napisać trzy wersje: Inorder, inorder, postorder
flattenBTIn EmptyBT = []
flattenBTIn (NodeBT n lt rt) = flattenBTIn lt ++  [n]++ flattenBTIn rt

flattenBTPost :: BinTree a -> [a]  -- napisać trzy wersje: Postorder, Postorder, postorder
flattenBTPost EmptyBT = []
flattenBTPost (NodeBT n lt rt) = flattenBTPost lt ++ flattenBTPost rt++[n]


-- mapBT :: (a -> b) -> BinTree a -> BinTree b -- funkcja map dla drzewa binarnego
mapBT :: (a -> b) -> BinTree a -> BinTree b
mapBT f EmptyBT = EmptyBT
mapBT f (NodeBT n lt rt) = NodeBT (f n) (mapBT f lt) (mapBT f rt)
-- insert :: Ord a => a -> BinTree a -> BinTree a -- insert element into BinTree
insert :: Ord a => a -> BinTree a -> BinTree a
insert a EmptyBT= NodeBT a EmptyBT EmptyBT
insert a (NodeBT n lt rt) | a>n= NodeBT n lt (insert a rt)
                          | a<n= NodeBT n (insert a lt) rt 
                          | otherwise = NodeBT n lt rt 

-- list2BST :: Ord a => [a] -> BinTree a -- list to Binary Search Tree (BST)