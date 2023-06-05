sgn :: Int -> Int
sgn n = if n < 0
       then -1
       else if n == 0
            then 0
            else 1


absInt :: Int -> Int -- absInt 2 = absInt (-2) = 2
absInt n = if n >=0
            then n
            else
                -n


min2Int :: (Int, Int) -> Int 
min2Int (a, b) = if a>b
            then b
            else a

min3Int :: (Int, Int, Int) -> Int 
min3Int (a, b, c) = if (a<b)&&(a<c)
                then a
                else if (b<a)&&(b<c)
                    then b
                    else if (c<a)&&(c<b)
                        then c
                        else if (a==b)&&(a<c)
                            then a
                            else if (a==c)&&(a<b)
                                then a
                                else c

romanDigit :: Char -> String
romanDigit a = if (a=='1')
            then  "I"
            else if (a=='2')
                then  "II" 
                else if (a=='2')
                    then  "II" 
                        else if (a=='3')
                        then  "III" 
                            else if (a=='4')
                            then  "IV" 
                                else if (a=='5')
                                then  "V" 
                                    else if (a=='6')
                                    then  "VI" 
                                        else if (a=='7')
                                        then  "VII" 
                                            else if (a=='8')
                                            then  "VIII" 
                                                else if (a=='9')
                                                then  "IX" 
                                                else "nie ma takiego numeru"