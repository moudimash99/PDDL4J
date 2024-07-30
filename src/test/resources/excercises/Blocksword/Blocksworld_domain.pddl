 ;; blocksword domain
;;


(define (domain blocksword)
  (:requirements :strips) 

  (:types
    block gnd - location )

  (:predicates 	(block ?block)
                (gnd ?gnd)
                (on-top ?block - block ?loc - location)
                (free-top ?block - block)
  )

  
(
  :action move-to-gnd
  :parameters
   (?blocka ?blockb)
  :precondition
   ( and (free-top ?blockb) (on-top ?blockb ?blocka)
   )
  :effect
   (not (on-top ?blockb ?blocka))
)

(
  :action move-to-blck
  :parameters
   (?blocka ?blockb ?blockc)
  :precondition
   ( and (free-top ?blockb) (free-top ?blockc) (on-top ?blockb ?blocka)
   )
  :effect
   (and (not (on-top ?blockb ?blocka)) ( not (free-top ?blockc)) (on-top ?blockb ?blockc)  )
)


)