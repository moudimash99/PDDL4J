 ;; blocksword domain
;;

 
(define (domain blocksword)
  (:requirements :adl) 
  (:types
    block gnd - location
  )
  (:predicates 	
                (gnd ?gnd - location)
                (on-top ?block - block  ?loc - location)
                (free-top ?loc - location)
  )
(
  :action move
  :parameters
   (?from - location ?block - block ?to - location)
  :precondition
   ( and (free-top ?block) (free-top ?to) (on-top ?block ?from)
   )
  :effect
   ( and (not (on-top ?block ?from)) (on-top ?block ?to) (free-top ?from) (when (not (gnd ?to)) (not (free-top ?to)) )   )
)
  
)