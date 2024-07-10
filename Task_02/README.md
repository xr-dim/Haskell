# Τask Description


#### We call a partition of a string w any sequence consisting of two or more non-empty strings z1 , z2 , . . . , zk (k ≥ 2) where the union of all of them is the string w


Write a function named "partition" in Haskell that takes a string w as an argument and returns a list of all partitions of w. Each partition of w is represented as one
list of strings.

----

### Examples : 

Main> partition "on"

[["o","n"]]

----- 



Main>   partition "sun"

[["s","un"],["s","u","n"],["su","n"]]

---


Main>   partition "band"


[["b","and"],["b","a","nd"],["ba","nd"],["b","a","n","d"],["ba","n","d"],
["b","an","d"],["ban","d"]]

---



Main>   partition "crazy"


[["c","razy"],["c","r","azy"],["cr","azy"],["c","r","a","zy"],["cr","a","zy"],
["c","ra","zy"],["cra","zy"],["c","r","a","z","y"],["cr","a","z","y"],
["c","ra","z","y"],["cra","z","y"],["c","r","az","y"],["cr","az","y"],
["c","raz","y"],["craz","y"]]

---



Main>   partition "a"

[]

---


Main>   length (partition "abcdefghijklmn")

8191
