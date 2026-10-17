(defrule find-name
   (person (name Bohdan))
   =>
   (printout t "Found person: " Bohdan crlf)
)