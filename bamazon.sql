-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS bamazon;
-- Creates the "animals_db" database --
CREATE DATABASE bamazon;

-- Makes it so all of the following code will affect animals_db --
USE bamazon;

-- Creates the table "people" within animals_db --
CREATE TABLE products (
  -- Makes an item id number which can reference each item, self generating-incremented
  item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  -- Makes a string column called "product_name" which cannot contain null --
  product_name VARCHAR(90) NOT NULL,
  -- Makes a string column called "department_name" which cannot contain null --
  department_name VARCHAR(90) NOT NULL,
  -- Makes an integer with decimal place column called "price" which cannot contain null --
  price DECIMAL(50,2) NOT NULL,
  -- Makes string column called "stock-quantity" which cannot contain null --
  stock_quantity INTEGER(30) NOT NULL,
  
  PRIMARY KEY (item_id)
);

-- Creates new rows containing data in all named columns --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Trucker Hat", "Apparel", "18.99", "85");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Lecosta Polo", "Apparel", "45.29", "100");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Printed Tee", "Apparel", "32.79", "170");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Hurley Top", "Apparel", "25.99", "48");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Runner Socks", "Apparel", "12.99", "68");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Rolex Mariner", "Accessories", "2500.00", "20");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Hawthorne Bag", "Accessories", "62.89", "35");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Coleman Sove", "Camping", "159.49", "12");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bigg Tent", "Camping", "189.79", "8");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Sleeping Giant", "Camping", "89.99", "17");



select * from products
