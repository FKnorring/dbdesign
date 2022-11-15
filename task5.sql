SELECT dep_desc as Welcome_Text FROM department WHERE dep_title = "Homepage";

SELECT * FROM Department WHERE dep_parent IS NULL AND dep_title != "Homepage";

SELECT P.* FROM Featured F
	LEFT JOIN Product P
    ON F.featured_product = P.prod_title;
    
SELECT * FROM Product WHERE prod_title LIKE "%iPhone%";

SELECT P.* FROM Department D
	LEFT JOIN Product P
    ON D.dep_title = P.prod_dep
    WHERE D.dep_title = "Laptops";
    
SELECT * FROM Product ORDER BY (prod_discount) DESC; 