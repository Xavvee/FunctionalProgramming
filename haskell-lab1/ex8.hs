not' :: Bool -> Bool
not' b = case b of
          True  -> False
          False -> True


absInt n =
 case (n >= 0) of
   True -> n
   _    -> -n


isItTheAnswer :: String -> Bool
isItTheAnswer a = 
 case (a=="Love") of
    True -> True
    False -> False

or' :: (Bool, Bool) -> Bool
or' (a,b) = case (a==True)||(b==True) of
    True -> True
    False -> False


and' :: (Bool, Bool) -> Bool
and' (a,b) = case (a==True)&&(b==True) of
    True -> True
    False -> False

nand' :: (Bool, Bool) -> Bool
nand' (a,b) = case (a==True)&&(b==True) of
    True -> False
    False -> True

xor' :: (Bool, Bool) -> Bool
xor' (a,b) = case ((a==True)&&(b==True))||((a==False)&&(b==False)) of
    True -> False
    False -> True