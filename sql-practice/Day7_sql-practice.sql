-- Doing 10 challenge question to test whether I understand all the concepts

-- 1. Find the top 5 most expensive products and display their names and prices.

SELECT DISTINCT TOP 5
             Product.Name as Product_Name,
             Product.ListPrice as Product_Price

FROM Production.Product

INNER JOIN Sales.SalesOrderDetail
ON Product.ProductID = SalesOrderDetail.ProductID

ORDER BY Product.ListPrice DESC;

/*

 2. Get a list of customers who have placed more than 3 orders. 
Display their names and the number of orders they’ve placed.

Faced a problem with this query because I summed the orderQTY from sales detail
table and got corected by chat gpt  because it would tell me the total quantity
if items ordered and not how many actual orders they placed
*/

SELECT 
      Person.FirstName ,
      COUNT(SalesOrderHeader.SalesOrderID) AS Number_Of_Orders
      
FROM Sales.Customer

INNER JOIN Person.Person
ON Customer.PersonID = Person.BusinessEntityID

INNER JOIN Sales.SalesOrderHeader
ON Customer.CustomerID = SalesOrderHeader.CustomerID

GROUP BY Person.FirstName

HAVING COUNT(SalesOrderHeader.SalesOrderID) > 3


-- 3. Retrieve all products that have never been ordered.