(define (problem blocksword-1-0)
(:domain blocksword)
(:objects
    blocka blockb blockc blockd 
)
(:init 
(block blocka) (block blockb) (block blockc) (block blockd)
 (on-top blockb blocka) (on-top blockc blockb) (on-top blockd blockc) 
)



(:goal (and (on-top blocka blockb) (on-top blockb blockc) (on-top blockc blockd) ))

)
 