combine :: [u]->[v]->(u->v->w)->(u->v->w)->(Int->Bool)->[w]
combine s t f g h = comb 1 s t f g h


------------------------------------------------------------------------------------------------------------------------
comb :: Int -> [u]->[v]->(u->v->w)->(u->v->w)->(Int->Bool)->[w]
comb i s t f g h
  | null s || null t = []
  | h i = [ f (head s) (head t)] ++ comb (i+1) (tail s) (tail t) f g h
  | otherwise = [ g (head s) (head t)] ++ comb (i+1) (tail s) (tail t) f g h
