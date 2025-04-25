-- 3. Retrieve all products that have never been ordered.

SELECT 
       Product.Name as Product_Name
FROM Production.Product

LEFT JOIN Sales.SalesOrderDetail
ON Product.ProductID = SalesOrderDetail.ProductID
WHERE SalesOrderDetail.ProductID is NULL

-- 4.Show the total amount spent per customer. Only include customers who have spent more than $1000.

SELECT
       Customer.CustomerID,
       Person.FirstName + ' ' + Person.LastName AS Full_Name,
       SUM(SalesOrderHeader.TotalDue) AS Total_Spent

FROM  Sales.Customer

INNER JOIN Person.Person
ON  Person.BusinessEntityID = Customer.PersonID

INNER JOIN Sales.SalesOrderHeader
ON Customer.CustomerID = SalesOrderHeader.CustomerID

GROUP BY Customer.CustomerID,Person.FirstName,Person.LastName

HAVING SUM(SalesOrderHeader.TotalDue) > 1000


-- 5. List all unique cities where customers are located.

SELECT 
       COUNT(DISTINCT Sales.Customer.CustomerID) AS Total_Customers,
       Person.Address.City AS Customer_City

FROM Sales.Customer

INNER JOIN Person.StateProvince
ON Customer.TerritoryID = StateProvince.TerritoryID

INNER JOIN Person.Address
ON StateProvince.StateProvinceID = Address.StateProvinceID

GROUP BY Address.City

ORDER BY Address.City ASC;