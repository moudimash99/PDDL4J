
 ;;  puzzle domain
;;

 
(define (domain puzzle)
  (:requirements :adl) 
  (:types
    position tile - objects
  )
  (:predicates 	
                
                (positioned ?tile - tile  ?pos - position)
                (free ?pos - position)
                (orthogonal ?pos1 - position ?pos2 - position)
  )
(
  :action move
  :parameters
   (?from - position ?tile - tile ?to - position)
  :precondition
   ( and (free ?to) (positioned ?tile ?from) (or (orthogonal ?from ?to) (orthogonal  ?to ?from))
   )
  :effect
   ( and (not (free ?to)) (not (positioned ?tile ?from)) (free ?from) (positioned ?tile ?to)  ) 
)
  
)