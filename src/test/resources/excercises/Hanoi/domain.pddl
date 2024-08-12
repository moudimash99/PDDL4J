 ;; hanoi domain
;;

 
(define (domain hanoi)
  (:requirements :adl) 
  (:types
    disc rod - location
  )
  (:predicates 	
                ;(rod ?rod - location)
                (on-top ?disc - disc  ?loc - location)
                (free-top ?loc - location)
  )
(
  :action move
  :parameters
   (?from - location ?disc - disc ?to - location)
  :precondition
   ( and (free-top ?disc) (free-top ?to) (on-top ?disc ?from)
   )
  :effect
   ( and (not (on-top ?disc ?from)) (on-top ?disc ?to) (free-top ?from) (not (free-top ?to))   ) ;(when (not (gnd ?to))
)
  
)
