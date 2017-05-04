CREATE DATABASE bamazonDB
use bamazonDB;
CREATE TABLE products(
item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
product_name VARCHAR(200) NOT NULL,
department_name VARCHAR(300) NOT NULL,
price Decimal(10,4) NULL,
stock_quantity INTEGER(10) NOT NULL,

PRIMARY KEY (item_id)
);
SELECT * FROM bamazonDB
