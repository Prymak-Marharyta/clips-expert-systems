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