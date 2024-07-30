(define (problem blocksword-1-0)
(:domain blocksword)
(:objects
    blocka blockb blockc blockd - block
    gnd - gnd
)
(:init 
 (on-top blocka gnd) (on-top blockb blocka) (on-top blockc blockb) (on-top blockd blockc) (free-top blockd) (gnd gnd) (free-top gnd)
)



 (:goal (and (on-top blocka blockb) (on-top blockb blockc) (on-top blockc blockd) ))
;(:goal (and (on-top blocka blockb) (on-top blockb blockc) (on-top blockc blockd) ))
)
  

;(on-top blocka gnd) (on-top blockb blocka) (free-top blockd)
;(on-top blockc blockb) (on-top blockd blockc)  (gnd gnd)


;move blockc blockd gnd

