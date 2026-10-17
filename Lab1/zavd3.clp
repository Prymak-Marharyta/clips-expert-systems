(defrule show-day
(Today is ?day)
=>
(printout t "Today is " ?day crlf)
)
