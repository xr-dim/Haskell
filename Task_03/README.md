# Task Description 


#### Write a higher-order function named "combine" in Haskell that will accept as arguments two lists 

* s = [a1 , a2 , . . . , ak ]
* t = [b1 , b2 , . . . , bl]


#### with elements of type u and v respectively, two functions f and g of type u->v->w and a function h of type Int->Bool. Function "combine" will return as a result the list [c1 , c2 , . . . , cmin(k,l) ] with elements of type w, where


Ci =  f(ai,bi) if h(i) else g(ai,bi)


The function type should be [u]->[v]->(u->v->w)->(u->v->w)->(Int->Bool)->[w ].


----


