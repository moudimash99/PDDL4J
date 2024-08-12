
(define (problem hanoi-1-0)
(:domain hanoi)
(:objects
    disca discb discc discd disc0 disc1 disc2  - disc
    roda rodb rodc - rod
)
(:init 
 (on-top disca roda) (on-top discb disca) (on-top discc discb) (on-top discd discc) (on-top disc0 rodb) (on-top disc1 disc0) (on-top disc2 disc1) 
 (free-top discd) (free-top disc2) (free-top rodc)
)



 (:goal (and (on-top disca discb) (on-top discb discc) (on-top discc discd) (on-top discd rodc) (on-top disc0 disca) (on-top disc1 disc0) (on-top disc2 disc1) ) )

)
