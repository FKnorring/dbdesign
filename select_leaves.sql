SELECT D.* 
   FROM Department D
   WHERE NOT EXISTS (
		SELECT P.* 
        FROM Department P 
        WHERE P.dep_parent = D.dep_title)