(define (problem puzzle-1-0)
(:domain puzzle)
(:objects
    pos1 pos2 pos3 pos4 - position 
    til1 til2 til3 -  tile
)
(:init 
    (free pos4)
    (positioned til2 pos1) (positioned til3 pos2) (positioned til1 pos3)
    (orthogonal pos1 pos2) (orthogonal pos1 pos3) (orthogonal pos4 pos2)  (orthogonal pos3 pos4)
)
(:goal (and (positioned til1 pos1) (positioned til2 pos2) (positioned til3 pos3)))
)


 