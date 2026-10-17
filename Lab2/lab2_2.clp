(deftemplate AKO
   (slot child)
   (slot parent))

(deftemplate IS-A
   (slot object)
   (slot class))

(deffacts computer-network
   (AKO
      (child microcomputers)
      (parent general-purpose-computers))

   (AKO
      (child mainframes)
      (parent general-purpose-computers))

   (AKO
      (child supercomputers)
      (parent general-purpose-computers))

   (AKO
      (child general-purpose-computers)
      (parent computing-systems))

   (AKO
      (child dedicated-computers)
      (parent computing-systems))

   (AKO
      (child single-board-computers)
      (parent microcomputers))

   (AKO
      (child single-chip-computers)
      (parent microcomputers))

   (AKO
      (child single-processor-computers)
      (parent microcomputers))

   (AKO
      (child multiprocessor-computers)
      (parent microcomputers))

   (IS-A
      (object raspberry-pi)
      (class single-board-computers))

   (IS-A
      (object microcontroller-1)
      (class single-chip-computers))

   (IS-A
      (object office-pc)
      (class single-processor-computers))

   (IS-A
      (object server-1)
      (class multiprocessor-computers))

   (IS-A
      (object mainframe-1)
      (class mainframes))

   (IS-A
      (object supercomputer-1)
      (class supercomputers))

   (IS-A
      (object control-computer-1)
      (class dedicated-computers))
)