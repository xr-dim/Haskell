# Task Description 


#### Write a higher-order function named "combine" in Haskell that will accept as arguments two lists 

* s = [a1 , a2 , . . . , ak ]
* t = [b1 , b2 , . . . , bl]


#### with elements of type u and v respectively, two functions f and g of type u->v->w and a function h of type Int->Bool. Function "combine" will return as a result the list [c1 , c2 , . . . , cmin(k,l) ] with elements of type w, where


Ci =  f(ai,bi) if h(i) else g(ai,bi)


The function type should be [u]->[v]->(u->v->w)->(u->v->w)->(Int->Bool)->[w ].


----
### Examples 

Main> combine [5,4,3,2] [7,8,9,10] (*) (^) odd


[35,65536,27,1024]

----


Main> combine [2,2..] [1..20] (*) (^) (\n -> mod n 5 == 1)


[2,4,8,16,32,12,128,256,512,1024,22,4096,8192,16384,32768,32,131072,262144,524288,1048576]

----


Main> combine ["summer","drops","black","white"] ["time","rain","board","snow"] (++) (\x y -> y++x) odd


["summertime","raindrops","blackboard","snowwhite"]

----


Main> combine ["summer","drops","black","white","time","rain","board","snow"] [1..] (\x y -> (x,0)) (\x y -> ("",y)) even


[("",1),("drops",0),("",3),("white",0),("",5),("rain",0),("",7),("snow",0)]




