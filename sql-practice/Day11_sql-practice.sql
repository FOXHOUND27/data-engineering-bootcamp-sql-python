-- 3. Retrieve all products that have never been ordered.

SELECT DISTINCT
       Product.ProductID,
       Product.Name AS Product_Name

FROM Production.Product

LEFT JOIN Sales.SalesOrderDetail
ON Product.ProductID = SalesOrderDetail.ProductID

WHERE SalesOrderDetail.ProductID IS NULL

-- 4. Show the total amount spent per customer. Only include customers who have spent more than $1000.

SELECT DISTINCT
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