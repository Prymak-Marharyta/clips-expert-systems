(defrule find-woman
   (person (gender female) (name $?name))
   =>
   (printout t "Woman: " $?name crlf)
)