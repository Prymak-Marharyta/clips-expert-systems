(defrule find-age
   (person (age 25) (name $?name))
   =>
   (printout t "Person aged 25: " $?name crlf)
)