(defrule find-men
   (person (gender male) (name $?name))
   =>
   (printout t "Man: " $?name crlf)
)