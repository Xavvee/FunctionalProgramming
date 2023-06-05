import Data.Char

fun::String->Int
fun = sum . map((^2).length)  . filter (all isUpper)   .  filter((=='K').head) . words 


fun2::String->Int
fun2=length . filter((>2).length)  . map(filter(`elem` vowels))  . words 
    where vowels="aeyiou"