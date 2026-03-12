use marks;
CREATE TABLE Sales (
    id INT,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2)
);
INSERT INTO Sales (id, product, category, quantity, price) VALUES
(1, 'Laptop', 'Electronic', 3, 800.00),
(2, 'Smartphone', 'Electronics', 5, 600.00),
(3, 'Desk', 'Furniture', 2, 150.00),
(4, 'Chair', 'Furniture', 4, 100.00),
(5, 'Mouse', 'Electronics', 10, 20.00);
select *from sales;
SELECT 
    category,
    COUNT(*),
    SUM(quantity),
    AVG(price) ,
    MIN(price) ,
    MAX(price)
FROM 
    Sales
GROUP BY 
    category;
    truncate table sales;
