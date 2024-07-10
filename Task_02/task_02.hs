partition :: String->[[String]]
partition w
  | length w == 1 = []
  | length w == 2 = [map(:[]) w]
  | otherwise = [[head w]: [tail w]] ++ [[init w] ++ [[last w]]] ++ [map(:[]) w]
