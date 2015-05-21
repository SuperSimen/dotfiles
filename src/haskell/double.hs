import Data.List
import Data.Char

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

suck a b = if a > 10
			then a
			else b

fibTuple (x, y, 0) = (x, y, 0)
fibTuple (x, y, index) = fibTuple (y, x + y, index - 1)

fibResult (x,a,b) = x

fib x = fibResult (fibTuple (0,1,x))

fibSlow 0 = 0
fibSlow 1 = 1
fibSlow x = fibSlow(x - 1) + fibSlow(x - 2)

dude x = "dude"

recox 0 = 0
recox x = recox (x - 1)


recog xs = [ x
	| x <- xs
	, odd x]


applyTwice f x = f (f x)

circumference :: Float -> Float
circumference r = 2 * pi * r

factorial 0 = 1
factorial x = x * factorial (x - 1)

first (x1,x2) = show x1 ++ show x2

test x | x< 10 = x

rep i 0 = []
rep i count =  i: (rep i ( count - 1))

takez _ [] = []
takez count list@(x:xs)
	| count <= 0 = []
	| otherwise = x : takez ( count - 1) xs 
	
rev [] = []
rev ( x:xs ) = (rev xs) ++ [x]

rept x = x:rept x

zipt :: (Eq a, Eq b) => [a] -> [b] -> [(a,b)]
zipt x y | x == [] = [] | y == [] = []
zipt (x:xs) (y:ys) = (x,y):zipt xs ys

elemt _ [] = False
elemt v (x:xs) | v == x = True | otherwise = elemt v xs

quick [] = []
quick (x:xs) = quick (filter (<=x) xs) ++ [x] ++ quick (filter (>x) xs)

fodl f acc = go
	where
		go [] = acc
		go (x:xs) = go xs `f` x

fodr f acc = go
	where
		go [] = acc
		go (x:xs) = x `f` go xs 

and' xs = fodr (&&) True xs

reverse' = foldl (\acc x -> x : acc) []

makeList x
	| fib x > 4000000 = 0
	| odd (fib x) = makeList (x + 1)
	| otherwise = fib x + makeList (x + 1)

list p = [p `mod` x /= 0 | x <- [2..p-1]]
isPrime p = foldr  (&&) True (list p)

fixPrime p | isPrime p = (True, p) | otherwise = (False, p)

everyDivisor p = [fixPrime x | x <- [2..p-1], p `mod` x == 0] 

findFirstTrue [] = (-1)
findFirstTrue ((a,b):xs) | a = b | otherwise = findFirstTrue  xs

largestPrime p = findFirstTrue (everyDivisor p)

isPalindrome x = rev x == x

dance = [x*y | x <- [999,998..100], y <- [999,998..100] , isPalindrome( show (x*y))]

evenDivisible number = go
	where
		go [] = True
		go (x:xs) | number `mod` x == 0 = go xs
			| otherwise = False

largeNumber = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450

largestProduct acc [] = acc
largestProduct acc list@(x:xs)
	| dooz > acc = largestProduct dooz xs
	| otherwise = largestProduct acc xs
	where dooz = getProduct . take 13 $ list

getProduct = foldr1 (*) . map digitToInt  

mainz = do
	rs <- sequence [getLine, getLine]
	print rs
