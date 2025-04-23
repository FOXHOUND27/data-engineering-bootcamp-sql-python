
-- Testing my understanding of group by

-- Getting the total sales per sales person

SELECT  
      SalesOrderHeader.SalesPersonID,SUM(SalesOrderHeader.TotalDue) AS Total_Sales

FROM  Sales.SalesOrderHeader
WHERE SalesOrderHeader.SalesPersonID IS NOT NULL
GROUP BY SalesOrderHeader.SalesPersonID

-- Challenge 1: Average Order Value Per Customer
/*
Return each CustomerID and their average TotalDue.
*/

SELECT
       SalesOrderHeader.CustomerID,
       AVG(SalesOrderHeader.TotalDue) AS Average_Total_Due

FROM Sales.SalesOrderHeader
WHERE SalesOrderHeader.CustomerID IS NOT NULL

GROUP BY SalesOrderHeader.CustomerID

-- Challenge 2: Products with More Than 5 Orders
/*
Return each ProductID (or product name) and the number of times it was ordered,
only include products with more than 5 orders.
*/

SELECT
      Product.Name AS Product_Name,
      COUNT(SalesOrderDetail.OrderQty) AS Total_Orders 

FROM Sales.SalesOrderDetail

INNER JOIN Production.Product
ON SalesOrderDetail.ProductID = Product.ProductID

GROUP BY  Product.Name

HAVING COUNT(SalesOrderDetail.OrderQty) > 5


-- Applying Everything together to further cement my understanding

-- Challenge 1: Top-Selling 10 Products
/*
Goal: Find all products that have been ordered more than 1000 times in total and also the top 10 products.
*/

SELECT TOP 10
       Product.Name as Product_Name,
       COUNT(SalesOrderDetail.OrderQty)

FROM Sales.SalesOrderDetail

INNER JOIN Production.Product
ON SalesOrderDetail.ProductID = Product.ProductID

GROUP BY Product.Name

HAVING COUNT(SalesOrderDetail.OrderQty) > 1000

-- Challenge 2 : Customers with High Total Purchases
/*
Goal: Show customers whose total spending is over $10,000.
*/

SELECT 
       SalesOrderHeader.CustomerID,
       SUM(SalesOrderHeader.TotalDue)

FROM Sales.SalesOrderHeader

GROUP BY SalesOrderHeader.CustomerID

HAVING SUM(SalesOrderHeader.TotalDue) > 10000