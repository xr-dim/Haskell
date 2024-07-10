# Task Description 


#### Write a function named "move" in Haskell that will accept as arguments a list s of any type that supports comparison for equality, an element "x" of the same type as the elements in the list, and an integer "n".

The result will be a list derived from s in the following way:


* if "x" is not contained in "s" , then the returned list is "s".

* if "x" is contained in "s" then : 

    *  if "n" is a positive number, then the returned list is obtained from "s" by moving the first occurrence of "x" by "n" positions to the right, or to the end of
  the list if the first occurrence of "x" in s is followed by fewer than "n" elements.


    * if "n" is a negative number, then the returned list is derived from "s" by moving the first occurrence of element "x" |n| positions to the left,
     or by moving it to the beginning of the list if there are fewer than |n| in "s" elements before the first occurrence of "x".


    * if n = 0, then the returned list is obtained from "s" by deleting the first one
      occurrence of element "x".

---


The function type should be Eq u => [u]->u->Int->[u]. The function should return a result even if its first argument is an infinite list
which contains the element x.

### Examples 

Main> move [] 3 5

[]

---



Main> move [1,2,3,4] 0 4


[1,2,3,4]

---


Main> move [1,2,3,4,3,2,1] 3 3


[1,2,4,3,2,3,1]

----

Main> move [1,2,3,4,5,6,7,8] 6 7


[1,2,3,4,5,7,8,6]

----


Main> move "skin" ’k’ 0


"sin"

----


Main> move "factor.bit." ’.’ (-2)


"fact.orbit."

----


Main> move "0000.1111.00" ’.’ (-10)


".00001111.00"

-----

Main> move ["one", "two", "three"] "one" (-2)


["one","two","three"]



-----


Main> move ["one", "two", "three"] "one" 1


["two","one","three"]

-----


Main> move ["one", "two", "three"] "three" 5


["one","two","three"]


------


Main> move ["one", "two", "three"] "three" (-2)


["three","one","two"]

-------

Main> move [True] True 0


[]

-------

Main> move [True] True 3


[True]

------

Main> move [True] True (-1003


[True]

-------

Main> head (move [1..] 1 91)


2

--------

Main> head (tail (move [1,5..] 4005 (-1000)))


4005
