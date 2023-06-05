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
xCoord'' (MkCart2DVec'' {x = xVal, y = _}) = xVal
yCoord'' (MkCart2DVec'' {y = yVal, x = _}) = yVal -- uwaga na kolejność x,y


data Cart3DVec a = MkCart3DVec {x1::a, y1::a, z1::a}
xCoord1 (MkCart3DVec {x1=xVal, y1=_,z1=_})=xVal
yCoord1 (MkCart3DVec {y1=yVal, x1=_,z1=_})=yVal
zCoord1 (MkCart3DVec {z1=zVal, x1=_,y1=_})=zVal



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



data Shape = Circle Float |
             Rectangle Float Float

area :: Shape -> Float
area (Circle r)  = pi*r^2
area (Rectangle a b)  = a*b

--obliczającą pole powierzchni (figury płaskiej); założyć, że

data TrafficLights= Red |
                    Yellow |
                    Green

actionFor :: TrafficLights -> String
actionFor Red = "Stój"
actionFor Yellow ="Przygotuj się"
actionFor Green = "Jedź"


