addz a = (+) a

orz a b = if a then True else b

drill :: [Boolean] -> Boolean
drill [] = FALSE
drill (x:xs) = if x == TRUE
    then x
    else drill xs

test (a,b) = b*2

lastButOne [x] = x
lastButOne (x:xs) = if length xs == 1
    then x
    else lastButOne xs

lastButOne2 [x] = x
lastButOne2 (x:xs)
    | length xs == 1 = x
    | otherwise = lastButOne2 xs

lastButOne3 [] = error "wrong size"
lastButOne3 (x:_:[]) = x
lastButOne3 (x:xs) = lastButOne3 xs

type Title = String
type Titles = [Title]
type Year = Int
data Book = Book {title :: Title, year :: Year}
    deriving (Show)

data Car a = Car a
    deriving (Show)

data Boolean = TRUE | FALSE | NONE
    deriving (Show, Eq)

booleanNot TRUE = FALSE
booleanNot FALSE = TRUE
booleanNot NONE = NONE

getTitle (Book title year) = title

dance list = let x:xs = list in xs

data List a = Con a (List a)
    | Nil
    deriving (Show)

listToList (Con x xs) = x:(listToList xs)
listToList Nil = []


splitLines [] = []
splitLines cs =
    let (pre, suf) = break isLineTerminator cs
    in pre : case suf of
        ('\r':'\n':rest) -> splitLines rest
        ('\r':rest) -> splitLines rest
        ('\n':rest) -> splitLines rest
        _ -> []

isLineTerminator c = c == '\r' || c == '\n' 

myLength [] = 0
myLength (x:xs) = 1 + myLength xs

myNull [] = True
myNull _ = False

myHead [] = error "empty list"
myHead (x:xs) = x

myTail [] = error "empty list"
myTail (x:xs) = xs

myLast [] = error "empty list"
myLast [x] = x
myLast (x:xs) =  myLast xs

myInit [] = error "empty list"
myInit [x] = []
myInit (x:xs) = x : myInit xs


pluz [] ys = ys
pluz (x:xs) ys  = x : pluz xs ys

myConcat [] = []
myConcat [x] = x
myConcat (l:ls) = pluz l $ myConcat ls

myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = pluz (myReverse xs) [x]

betterMyReverse [] = []
betterMyReverse xs = splitz xs []
    where
        splitz [] a = a
        splitz (x:xs) a = splitz xs (x:a)

name :: [Type] -> Type
name [] = undefined
name (x:xs) = undefined
