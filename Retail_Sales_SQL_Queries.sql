SELECT SUM(s.Quantity * p.Price) AS Total_Revenue
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID;

SELECT SUM(s.Quantity * p.Price) AS Total_Revenue
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID;

SELECT c.CustomerName,
SUM(s.Quantity * p.Price) AS Total_Spent
FROM sales s
JOIN customers c
ON s.CustomerID = c.CustomerID
JOIN products p
ON s.ProductID = p.ProductID
GROUP BY c.CustomerName
ORDER BY Total_Spent DESC
LIMIT 10;

SELECT p.ProductName,
SUM(s.Quantity) AS Total_Sold
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Total_Sold DESC
LIMIT 5;

SELECT p.Category,
SUM(s.Quantity * p.Price) AS Revenue
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY Revenue DESC;

SELECT DATE_FORMAT(s.SaleDate,'%Y-%m') AS Month,
SUM(s.Quantity * p.Price) AS Revenue
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID
GROUP BY Month
ORDER BY Month;

SELECT AVG(s.Quantity * p.Price) AS Avg_Order_Value
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID;

SELECT c.CustomerName,
SUM(s.Quantity) AS Total_Items
FROM sales s
JOIN customers c
ON s.CustomerID = c.CustomerID
GROUP BY c.CustomerName
ORDER BY Total_Items DESC
LIMIT 10;

SELECT 
s.SaleID,
c.CustomerID,
c.CustomerName,
c.Gender,
c.City,
c.Age,
p.ProductID,
p.ProductName,
p.Category,
p.Price,
s.Quantity,
s.SaleDate,
s.StoreLocation,
(s.Quantity * p.Price) AS Revenue
FROM sales s
JOIN customers c
ON s.CustomerID = c.CustomerID
JOIN products p
ON s.ProductID = p.ProductID;