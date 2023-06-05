f(x,y,z) = if x+3 < z
           then True
           else y /= y 

collatz:: Int->Int
collatz n =
    let divides (d,n) = n `mod` d ==0
        isEven n = divides (2, n)
    in if isEven n then n`div`2
        else 3 * n +1

collatz2::Int->Int
collatz2 n | isEven n = n`div`2
           | otherwise = 3*n+1
           where divides d n =  n`mod`d==0
                 isEven n = divides 2 n