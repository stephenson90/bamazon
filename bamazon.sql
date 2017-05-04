CREATE DATABASE bamazonDB
USE bamazonDB;
CREATE TABLE products(
item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
product_name VARCHAR(200) NOT NULL,
department_name VARCHAR(300) NOT NULL,
price Decimal(10,4) NULL,
stock_quantity INTEGER(10) NOT NULL,

PRIMARY KEY (item_id)
);


INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Frog_Free Shower Mirror", "Household", 11.99, 500);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Amazon Echo", "Echo Alexa", 179.99, 10000);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Dewalt 20v String Trimmer & Blower Bundle", "Lawn & Garden", 239.00, 700);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Webber Natural Gas Grill", "Lawn & Garden", 519.00, 700);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("TP Link Smart LED Light Bulb", "Tools & Home", 24.51, 100000);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Car Phone Mount Holder", "Cell Phone & accessories", 9.99, 500);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Viva Naturals Appple Cider", "Grocery & Gourmet Food", 11.19, 20000);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Genuine Replacement Bands for Fitbit", "Sports & Outdoors", 10.39, 100);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Premium Hose Splitter", "Pation Lawn & Garden", 13.97, 500000);
SELECT * FROM products

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Smart Colon Art 80 Colors Gel Pens", "Arts Crafts & Sewing", 15.99, 750);
SELECT * FROM products