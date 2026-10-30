
CREATE DATABASE IF NOT EXISTS gadget_store;
USE gadget_store;

CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DOUBLE NOT NULL,
    stock INT NOT NULL
);

SELECT *
FROM products
ORDER BY id;

SELECT *
FROM products
ORDER BY price ASC;

SELECT *
FROM products
ORDER BY price DESC;

SELECT *
FROM products
ORDER BY category, name;

SELECT *
FROM products
WHERE stock < 10
ORDER BY stock ASC;

SELECT *
FROM products
WHERE stock > 0;

SELECT *
FROM products
WHERE stock = 0;

SELECT *
FROM products
WHERE price > 5000
ORDER BY price DESC;

SELECT *
FROM products
WHERE id = 1;

SELECT *
FROM products
WHERE name LIKE '%phone%';

SELECT COUNT(*) AS total_gadgets
FROM products;

SELECT category, COUNT(*) AS number_of_gadgets
FROM products
GROUP BY category
ORDER BY category;

SELECT SUM(stock) AS total_stock_units
FROM products;

SELECT SUM(price * stock) AS total_inventory_value
FROM products;

SELECT
    AVG(price) AS average_price,
    MIN(price) AS lowest_price,
    MAX(price) AS highest_price
FROM products;

SELECT
    id,
    name,
    price,
    stock,
    price * stock AS stock_value
FROM products
ORDER BY stock_value DESC;

SELECT *
FROM products
WHERE stock >= 10
ORDER BY stock DESC;

SELECT *
FROM products
ORDER BY id DESC
LIMIT 10;

SELECT name, COUNT(*) AS occurrences
FROM products
GROUP BY name
HAVING COUNT(*) > 1;

SELECT
    COUNT(*) AS total_product_records,
    COALESCE(SUM(stock), 0) AS total_stock_units,
    COALESCE(SUM(price * stock), 0) AS inventory_value,
    COALESCE(AVG(price), 0) AS average_product_price
FROM products;