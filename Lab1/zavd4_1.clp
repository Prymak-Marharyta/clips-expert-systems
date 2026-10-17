(deftemplate person
   (multislot name)
   (slot age (type INTEGER))
   (slot gender (allowed-values male female))
)

(deffacts people
   (person
      (name Maria Ruslanivna)
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
      (gender male)
   )
)