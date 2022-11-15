CREATE TABLE Department (
    dep_title VARCHAR(50) NOT NULL,
    dep_desc VARCHAR(100) NOT NULL,
    dep_path VARCHAR(100) NOT NULL,
    dep_parent VARCHAR(50),
    CONSTRAINT pk_department PRIMARY KEY (dep_title),
    CONSTRAINT fk_department_parent FOREIGN KEY (dep_parent) REFERENCES Department(dep_title)
    ON DELETE CASCADE
);

CREATE TABLE Product (
   prod_title VARCHAR(50) NOT NULL,
   prod_desc VARCHAR(100) NOT NULL,
   prod_price INTEGER NOT NULL,
   prod_tax INTEGER NOT NULL,
   prod_stock INTEGER NOT NULL,
   prod_dep VARCHAR(50) NOT NULL,
   prod_discount INTEGER,
   CONSTRAINT pk_product PRIMARY KEY (prod_title),
   CONSTRAINT fk_product_department FOREIGN KEY (prod_dep) REFERENCES Department(dep_title)
   ON DELETE CASCADE
);

CREATE TABLE User (
   user_ssn VARCHAR(50) NOT NULL,
   user_name VARCHAR(50) NOT NULL,
   user_pass VARCHAR(50) NOT NULL,
   user_email VARCHAR(50) NOT NULL,
   user_phone VARCHAR(50) NOT NULL,
   user_address VARCHAR(50) NOT NULL,
   user_news BOOLEAN NOT NULL,
   CONSTRAINT pk_user PRIMARY KEY (user_ssn)
);

CREATE TABLE Orders (
   order_id INTEGER AUTO_INCREMENT NOT NULL,
   order_created DATETIME NOT NULL,
   order_updated DATETIME NOT NULL,
   order_status ENUM("new", "open", "dospatched") NOT NULL,
   order_pay_ref VARCHAR(50) NOT NULL,
   order_tracking VARCHAR(50),
   order_user VARCHAR(50) NOT NULL,
   order_product VARCHAR(50) NOT NULL,
   CONSTRAINT pk_order PRIMARY KEY (order_id),
   CONSTRAINT fk_order_user FOREIGN KEY (order_user) REFERENCES User(user_ssn)
   ON DELETE CASCADE,
   CONSTRAINT fk_order_product FOREIGN KEY (order_product) REFERENCES Product(prod_title)
   ON DELETE CASCADE
);

CREATE TABLE Review (
   review_id INTEGER AUTO_INCREMENT NOT NULL,
   review_content VARCHAR(255) NOT NULL,
   review_rating INTEGER NOT NULL,
   review_user VARCHAR(50) NOT NULL,
   review_product VARCHAR(50) NOT NULL,
   CONSTRAINT pk_review PRIMARY KEY (review_id),
   CONSTRAINT fk_review_user FOREIGN KEY (review_user) REFERENCES User(user_ssn)
   ON DELETE CASCADE,
   CONSTRAINT fk_review_product FOREIGN KEY (review_product) REFERENCES Product(prod_title)
   ON DELETE CASCADE
);

CREATE TABLE Featured (
	featured_product VARCHAR(50) NOT NULL,
    CONSTRAINT fk_featured_product FOREIGN KEY (featured_product) REFERENCES Product(prod_title)
)

