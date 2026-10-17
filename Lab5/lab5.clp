
(deftemplate question
   (slot query-string)
   (slot answer))

(defrule start
   (initial-fact)
   (not (question (query-string "Is the animal very big?")))
   =>
   (printout t "Is the animal very big? (yes/no): ")
   (bind ?answer (read))
   (assert
      (question
         (query-string "Is the animal very big?")
         (answer ?answer))))

(defrule small-animal
   (question
      (query-string "Is the animal very big?")
      (answer no))
   (not (question (query-string "Does it squeak?")))
   =>
   (printout t "Does it squeak? (yes/no): ")
   (bind ?answer (read))
   (assert
      (question
         (query-string "Does it squeak?")
         (answer ?answer))))

(defrule large-animal
   (question
      (query-string "Is the animal very big?")
      (answer yes))
   (not (question (query-string "Does it have a long neck?")))
   =>
   (printout t "Does it have a long neck? (yes/no): ")
   (bind ?answer (read))
   (assert
      (question
         (query-string "Does it have a long neck?")
         (answer ?answer))))

(defrule squirrel
   (question (query-string "Does it squeak?") (answer no))
   =>
   (printout t "It may be a squirrel." crlf))

(defrule mouse
   (question (query-string "Does it squeak?") (answer yes))
   =>
   (printout t "It may be a mouse." crlf))

(defrule giraffe
   (question (query-string "Does it have a long neck?") (answer yes))
   =>
   (printout t "It may be a giraffe." crlf))

(defrule elephant-question
   (question
      (query-string "Does it have a long neck?")
      (answer no))
   (not (question (query-string "Does it have a trunk?")))
   =>
   (printout t "Does it have a trunk? (yes/no): ")
   (bind ?answer (read))
   (assert
      (question
         (query-string "Does it have a trunk?")
         (answer ?answer))))

(defrule elephant
   (question (query-string "Does it have a trunk?") (answer yes))
   =>
   (printout t "It may be an elephant." crlf))

(defrule water-question
   (question
      (query-string "Does it have a trunk?")
      (answer no))
   (not (question (query-string "Does it like being in water?")))
   =>
   (printout t "Does it like being in water? (yes/no): ")
   (bind ?answer (read))
   (assert
      (question
         (query-string "Does it like being in water?")
         (answer ?answer))))

(defrule hippopotamus
   (question
      (query-string "Does it like being in water?")
      (answer yes))
   =>
   (printout t "It may be a hippopotamus." crlf))

(defrule rhinoceros
   (question
      (query-string "Does it like being in water?")
      (answer no))
   =>
   (printout t "It may be a rhinoceros." crlf))