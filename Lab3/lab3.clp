(deftemplate father
   (slot child)
   (slot father-name))

(deftemplate mother
   (slot child)
   (slot mother-name))

(deftemplate parent
   (slot child)
   (slot parent-name))

(deftemplate role
   (slot person)
   (slot role-name))

(deftemplate gender
   (slot person)
   (slot gender-name))


(deffacts family-facts
   (father
      (child John)
      (father-name Tom))

   (mother
      (child John)
      (mother-name Susan))

   (parent
      (child John)
      (parent-name Tom))

   (parent
      (child John)
      (parent-name Susan))

   (role
      (person Tom)
      (role-name father))

   (role
      (person Susan)
      (role-name mother))

   (role
      (person John)
      (role-name son))

   (gender
      (person Tom)
      (gender-name male))

   (gender
      (person Susan)
      (gender-name female))

   (gender
      (person John)
      (gender-name male))
)


(defrule print-father
   (declare (salience 90))
   (father
      (child John)
      (father-name Tom))
   =>
   (printout t "The father of John is Tom." crlf))


(defrule print-mother
   (declare (salience 80))
   (mother
      (child John)
      (mother-name Susan))
   =>
   (printout t "The mother of John is Susan." crlf))


(defrule print-parents
   (declare (salience 70))
   (parent
      (child John)
      (parent-name Tom))
   (parent
      (child John)
      (parent-name Susan))
   =>
   (printout t "The parents of John are Tom and Susan." crlf))


(defrule print-tom-father
   (declare (salience 60))
   (role
      (person Tom)
      (role-name father))
   =>
   (printout t "Tom is a father." crlf))


(defrule print-susan-mother
   (declare (salience 50))
   (role
      (person Susan)
      (role-name mother))
   =>
   (printout t "Susan is a mother." crlf))


(defrule print-john-son
   (declare (salience 40))
   (role
      (person John)
      (role-name son))
   =>
   (printout t "John is a son." crlf))


(defrule print-tom-male
   (declare (salience 30))
   (gender
      (person Tom)
      (gender-name male))
   =>
   (printout t "Tom is a male." crlf))


(defrule print-susan-female
   (declare (salience 20))
   (gender
      (person Susan)
      (gender-name female))
   =>
   (printout t "Susan is a female." crlf))


(defrule print-john-male
   (declare (salience 10))
   (gender
      (person John)
      (gender-name male))
   =>
   (printout t "John is a male." crlf))