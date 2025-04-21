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