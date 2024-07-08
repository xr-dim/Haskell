statistics :: [(Int,Int)]->(Int,Int,Int,Int,Int)
statistics [] = (0,0,0,0,0)
statistics s = (matches,totalPoints,goalsScored,goalsConceded,bestScoreDifference)
    where matches = div (length (foldList (++) ( map (\(x,y) -> [x,y]) s ))) 2
          goalsScored = foldList (+) (map head ( map (\(x,y) -> [x,y]) s ))
          goalsConceded = foldList (+) (map last ( map (\(x,y) -> [x,y]) s ))
          totalPoints = 3*(length ( filterList (\x -> head x > last x) (map (\(x,y) -> [x,y]) s )))
            + length ( filterList (\x -> head x == last x) (map (\(x,y) -> [x,y]) s ))
          bestScoreDifference = (x - y)
            where x = head (foldList max (map (\(x,y) -> [x,y]) s))
                  y = last (foldList min (filterList (\z -> head z == x) (map (\(x,y) -> [x,y]) s )))

----------------------------------------------------------------------
foldList :: (u -> u -> u) -> [u] -> u
foldList f (h:[]) = h
foldList f (h:t) = f h (foldList f t)

-----------------------------------------------------------------------
filterList :: (u -> Bool) -> [u] -> [u]
filterList f [] = []
filterList f (h:t)
  | f h = h : filterList f t
  | otherwise =  filterList f t
