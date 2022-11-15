INSERT INTO Department VALUES
("Electronics", "This is the department for home electronics", "/electronics", NULL),
("Computers", "This is the department for computers", "/electronics/computers", "Electronics"),
("Laptops", "This is the department for laptops", "/electronics/computers/laptops", "Computers"),
("Monitors", "This is the department for monitors", "/electronics/computers/monitors", "Computers"),
("Phones", "This is the department for phones", "/electronics/phones", "Electronics"),
("TV", "This is the department for TV", "/electronics/tv", "Electronics"),
("Gaming", "This is the department for gaming", "/gaming", NULL),
("Consoles", "This is the department for consoles", "/gaming/consoles", "Gaming"),
("Accessories", "This is the department for accessories", "/gaming/accessories", "Gaming"),
("Toys", "This is the department for toys", "/toys", NULL),
("Cars", "This is the department for cars", "/toys/cars", "Toys"),
("Dolls", "This is the department for dolls", "/toys/dolls", "Toys"),
("Plush", "This is the department for plush", "/toys/plush", "Toys"),
("Clothes", "This is the department for clothes", "/clothes", NULL),
("Shoes", "This is the department for shoes", "/clothes/shoes", "Clothes"),
("T-Shirts", "This is the department for t-shirts", "/clothes/t-shirts", "Clothes"),
("Jackets", "This is the department for jackets", "/clothes/jackets", "Clothes");

INSERT INTO Department VALUES
("Homepage", "Welcome to the AltOnline Webstore", "/", NULL)