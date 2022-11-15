SELECT D.* 
   FROM Department D
   WHERE NOT EXISTS (
		SELECT P.* 
        FROM Department P 
        WHERE P.dep_parent = D.dep_title)
        AND D.dep_title != "Homepage";

DELETE FROM Product WHERE prod_title is not null;
truncate featured;