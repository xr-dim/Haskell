# Task Description 

The results of a football team's matches during the league can be represented as a list of pairs of integers. 
Each pair represents the result of a match, where the first element of the pair corresponds to the goals scored by the team and the second element to the goals conceded by the opposing team in that match.

------------------------------------

#### Given a list of a team's league results, we want to construct a quintet of numbers describing the following team statistics:

• the total number of matches he has played.

• the total points he has earned, given that for each win he earns three points and for each draw one point.

• the total number of goals he has scored.

• the total number of goals he has conceded.

• the goal difference in the best result it has brought.


This difference will be positive if the team has achieved at least one victory, zero if it has not achieved a victory but has
at least one draw and negative if they have lost all matches.


#### Write a statistics function in Haskell that will accept as an argument the list of results of a group and return a quintuple of integers with the statistics that described above.

The type of the function should be[(Int,Int)]->(Int,Int,Int,Int,Int).

If the list is empty, then the quintuple (0,0,0,0,0) should be returned.

You can assume that the list is finite and that each pair in the list consists of two non-negative numbers (ie the list contains only valid results). 

There is no limit to the number of goals a team can score in a match, nor to the length of the list.


-----------------------------

#### To check, use the following values:

Main> statistics []

(0,0,0,0,0)

------


Main> statistics [(1,5)]


(1,0,1,5,-4)

--------

Main> statistics [(0,1),(1,3),(1,2)]


(3,0,2,6,-1)


------


Main>statistics [(3,1),(5,2),(7,0)]

(3,9,15,3,7)

-----


Main> statistics [(1,1),(2,2),(4,4)]


(3,3,7,7,0)


-----


Main> statistics [(8,1),(2,3),(3,3),(2,0)]


(4,7,15,7,7)

----


Main> statistics [(0,4),(2,2),(2,3),(0,0)]


(4,2,4,9,0)

-----


Main> statistics [(1,1),(3,0),(0,2),(4,3),(7,1),(3,3),(1,4),(2,1 )]

(8,14,21,15,6)
