(deftemplate symptom
   (slot name))


(deftemplate deficiency-found
   (slot nutrient))


(deffacts plant-symptoms
   (symptom
      (name stunted-root-growth))

   (symptom
      (name purplish-color))
)


(defrule nitrogen-stunted-growth
   (symptom
      (name stunted-growth))
   (not
      (deficiency-found
         (nutrient nitrogen)))
   =>
   (printout t "The plant may have a nitrogen deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient nitrogen))))


(defrule nitrogen-pale-yellow
   (symptom
      (name pale-yellow))
   (not
      (deficiency-found
         (nutrient nitrogen)))
   =>
   (printout t "The plant may have a nitrogen deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient nitrogen))))


(defrule nitrogen-reddish-brown-edges
   (symptom
      (name reddish-brown-leaf-edges))
   (not
      (deficiency-found
         (nutrient nitrogen)))
   =>
   (printout t "The plant may have a nitrogen deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient nitrogen))))


(defrule phosphorus-stunted-root-growth
   (symptom
      (name stunted-root-growth))
   (not
      (deficiency-found
         (nutrient phosphorus)))
   =>
   (printout t "The plant may have a phosphorus deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient phosphorus))))


(defrule phosphorus-spindly-stalk
   (symptom
      (name spindly-stalk))
   (not
      (deficiency-found
         (nutrient phosphorus)))
   =>
   (printout t "The plant may have a phosphorus deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient phosphorus))))


(defrule phosphorus-purplish
   (symptom
      (name purplish-color))
   (not
      (deficiency-found
         (nutrient phosphorus)))
   =>
   (printout t "The plant may have a phosphorus deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient phosphorus))))


(defrule phosphorus-delayed-maturing
   (symptom
      (name delayed-maturing))
   (not
      (deficiency-found
         (nutrient phosphorus)))
   =>
   (printout t "The plant may have a phosphorus deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient phosphorus))))


(defrule potassium-scorched-edges
   (symptom
      (name scorched-leaf-edges))
   (not
      (deficiency-found
         (nutrient potassium)))
   =>
   (printout t "The plant may have a potassium deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient potassium))))


(defrule potassium-weakened-stems
   (symptom
      (name weakened-stems))
   (not
      (deficiency-found
         (nutrient potassium)))
   =>
   (printout t "The plant may have a potassium deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient potassium))))


(defrule potassium-shriveled-seeds
   (symptom
      (name shriveled-seeds-or-fruits))
   (not
      (deficiency-found
         (nutrient potassium)))
   =>
   (printout t "The plant may have a potassium deficiency." crlf)
   (assert
      (deficiency-found
         (nutrient potassium))))