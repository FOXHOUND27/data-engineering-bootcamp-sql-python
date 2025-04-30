-- 3. Retrieve all products that have never been ordered.

SELECT DISTINCT
       Product.ProductID,
       Product.Name AS Product_Name

FROM Production.Product

LEFT JOIN Sales.SalesOrderDetail
ON Product.ProductID = SalesOrderDetail.ProductID

WHERE SalesOrderDetail.ProductID IS NULL

-- 4. Show the total amount spent per customer. Only include customers who have spent more than $1000.

SELECT
       Customer.CustomerID,
       Person.FirstName + ' ' + Person.LastName AS Full_Name,
       SUM(SalesOrderHeader.TotalDue) AS Total_Spent

FROM Sales.Customer

INNER JOIN Person.Person
ON Customer.PersonID = Person.BusinessEntityID

INNER JOIN Sales.SalesOrderHeader
ON Customer.CustomerID = SalesOrderHeader.CustomerID

GROUP BY Customer.CustomerID,Person.FirstName,Person.LastName

HAVING SUM(SalesOrderHeader.TotalDue) > 1000

ORDER BY Customer.CustomerID ASC;

-- 5 List all unique cities where customers are located.

SELECT
      Address.City,
      COUNT(DISTINCT Customer.CustomerID) AS Number_Of_Customers

FROM Sales.Customer

INNER JOIN Person.Person
ON Customer.PersonID = Person.BusinessEntityID

INNER JOIN  Person.BusinessEntityAddress
ON Person.BusinessEntityID = BusinessEntityAddress.BusinessEntityID

INNER JOIN Person.Address
ON BusinessEntityAddress.AddressID = Address.AddressID

GROUP BY Address.City

ORDER BY Address.City ASC;

