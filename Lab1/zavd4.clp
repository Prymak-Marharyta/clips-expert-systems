(deftemplate person
   (slot name)
   (slot age)
   (slot gender)
)

(deffacts people
   (person
      (name Maria)
      (age 19)
      (gender female)
   )
   (person
      (name Stepan)
      (age 25)
      (gender male)
   )
   (person
      (name Bohdan)
      (age 22)
      (gender female)
   )
)