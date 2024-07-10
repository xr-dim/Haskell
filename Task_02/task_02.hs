move :: Eq u => [u]->u->Int->[u]
move s x n
  | delete x s == s = s
  | n == 0 = delete x s
  | otherwise = fix s x n (conc  (firstPartElementInsert (i+n) 0 (x) (delete x s)) (secondPart (i+n) 0 (delete x s)))
    where i = indexFirstApp 0 x s


------------------------------------------------------------------------------------------------------------------------
conc :: [u] -> [u] ->[u]
conc (h:t) s = h : conc t s
conc [] s = s


------------------------------------------------------------------------------------------------------------------------
delete :: Eq u => u -> [u] -> [u]
delete n (h:t)
  | n == h = t
  | otherwise = h:delete n t

delete n [] = []

------------------------------------------------------------------------------------------------------------------------
elemList :: Int -> [u] -> u
elemList 1 (h:t) = h
elemList n (h:t) = elemList (n-1) t
elemList n [] = error "elemList : index out of range"

------------------------------------------------------------------------------------------------------------------------
indexFirstApp ::Eq u => Int -> u -> [u] -> Int
indexFirstApp i y z
  | y == (head z) = 0
  | otherwise =  indexFirstApp (i+1) y (tail z) +1


------------------------------------------------------------------------------------------------------------------------
firstPartElementInsert ::Eq u => Int -> Int -> u -> [u] -> [u]
firstPartElementInsert poss count element list
  | poss == count || list == [] = [element]
  | otherwise = [head list] ++ firstPartElementInsert poss (count+1) element (tail list)

------------------------------------------------------------------------------------------------------------------------
secondPart ::Eq u => Int -> Int-> [u] -> [u]
secondPart poss count list
  | poss  == count || list == [] = list
  | otherwise = secondPart poss (count+1) (tail list)

------------------------------------------------------------------------------------------------------------------------
fix :: Eq u => [u]->u->Int->[u]->[u]
fix s x n list2
  | n > 0 = list2
  | n < 0 &&  (indexFirstApp 0 x s) + n >= 0 = list2
  | otherwise = [last list2] ++ init list2
