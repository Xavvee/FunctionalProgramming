-- product type example (one constructor)
data CartInt2DVec = MkCartInt2DVec Int Int -- konwencja: prefix 'Mk' dla konstruktora

xCoord :: CartInt2DVec -> Int
xCoord (MkCartInt2DVec x _) = x

yCoord :: CartInt2DVec -> Int
yCoord (MkCartInt2DVec _ y) = y


data Cart2DVec' a = MkCart2DVec' a a

xCoord' :: Cart2DVec' a -> a
xCoord' (MkCart2DVec' x _) = x

yCoord' :: Cart2DVec' a -> a
yCoord' (MkCart2DVec' _ y) = y


data Cart2DVec'' a = MkCart2DVec'' {x::a, y::a}

-- xCoord'' :: Cart2DVec'' a -> a
-- xCoord'' (MkCart2DVec'' {x = xVal, y = _}) = xVal

-- yCoord'' :: Cart2DVec'' a -> a
-- yCoord'' (MkCart2DVec'' {y = yVal, x = _}) = yVal -- uwaga na kolejność x,y

-- sum type example (two constructors)
data List a = EmptyL | Cons a (List a) deriving Show

head' :: List a -> a
head' EmptyL      = error "head': the empty list has no head!"
head' (Cons x xs) = x


-- enum type example (special case of sum type)
data ThreeColors = Blue |
                   White |
                   Black

type ActorName = String

leadingActor :: ThreeColors -> ActorName
leadingActor Blue  = "Juliette Binoche"
leadingActor White = "Zbigniew Zamachowski"
leadingActor Black   = "Irene Jacob"


data TrafficLights = Green |
                     Yellow |
                     Red

actionFor :: TrafficLights -> String
actionFor Green = "Jedz"
actionFor Yellow = "Przygotuj sie"
actionFor Red = "Stoj"


{-
uwaga: ta sama nazwa* dla:
 - konstruktora typu (po lewej)
 - konstruktora danych/wartości (po prawej)

 * druga (obok omówionej poprzednio -- z prefiksem 'Mk') powszechna konwencja w Haskellu!
-}
data Cart3DVec a = MkCart3DVec {x0::a, y0::a, z0::a}

-- xCoords :: Cart3DVec a -> a
-- xCoords (MkCart3DVec {x0 = xVal, y0 = _, z0=_}) = xVal

-- yCoords :: Cart3DVec a -> a
-- yCoords (MkCart3DVec {y0 = yVal, x0 = _, z0=_}) = yVal -- uwaga na kolejność x,y

-- zCoords :: Cart3DVec a->a
-- zCoords (MkCart3DVec{z0=zVal, x0=_, y0=_})=zVal
