 -- INNER JOINS PRACTICE
 -- Question 1: List Orders with Customer Details
 /*
 Write a query to list the SalesOrderID, OrderDate, CustomerID, 
 and the Customer's full name (FirstName + LastName) 
 for all sales orders.

Tables to Use:
Sales.SalesOrderHeader
Sales.Customer
Person.Person
*/

 SELECT DISTINCT
                SalesOrderHeader.SalesOrderID,
                SalesOrderHeader.OrderDate,
                SalesOrderHeader.CustomerID,
                Person.Person.FirstName,
                Person.Person.LastName

FROM Sales.SalesOrderHeader

INNER JOIN Sales.Customer
ON SalesOrderHeader.CustomerID = Customer.CustomerID

INNER JOIN Person.Person
ON Person.BusinessEntityID = Customer.CustomerID


-- Question 2: List Product Details in Orders
/*

Write a query to show the SalesOrderID, ProductID, Product Name, 
and UnitPrice for all products sold in orders.

Tables to Use:
Sales.SalesOrderDetail
Production.Product

*/

SELECT DISTINCT
                SalesOrderDetail.SalesOrderID,
                SalesOrderDetail.ProductID,
                Production.Product.Name as Product_Name,
                Sales.SalesOrderDetail.UnitPrice

FROM Sales.SalesOrderDetail

INNER JOIN Production.Product
ON  SalesOrderDetail.ProductID = Product.ProductID

-- LEFT JOINS PRACTICE

-- Challenge 1: Customers Without Recent Orders
/*
Write a query to list all customers, along with the date of their most recent order,
even if they haven’t placed any orders.

Show: CustomerID, Full Name, OrderDate (can be NULL if no order)
*/

SELECT DISTINCT
               Sales.Customer.CustomerID,
               Person.Person.FirstName,
               Person.Person.LastName,
               Sales.SalesOrderHeader.OrderDate

FROM Person.Person

INNER JOIN Sales.Customer
ON Person.BusinessEntityID = Customer.PersonID

LEFT  JOIN Sales.SalesOrderHeader
ON Customer.CustomerID = SalesOrderHeader.CustomerID

ORDER BY SalesOrderHeader.OrderDate DESC;



-- Challenge 2: Products Never Sold
/*
Write a query that lists all products, along with the quantity sold and order ID,
even if they’ve never been sold.

Show: ProductID, Product Name, SalesOrderID, OrderQty
*/


SELECT DISTINCT
               Production.Product.ProductID,
               Production.Product.Name as Product_Name,
               Sales.SalesOrderDetail.SalesOrderID,
               Sales.SalesOrderDetail.OrderQty

FROM Production.Product

LEFT JOIN Sales.SalesOrderDetail
ON Product.ProductID = SalesOrderDetail.ProductID
