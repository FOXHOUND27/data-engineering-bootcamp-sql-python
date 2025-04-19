-- Todays topics are ORDER BY, LIMIT, DISTINCT

--  Challenge 1: Sort Products by Price to find the most expensive product
SELECT  TOP 5
       Product.ProductID,
       Product.Name as Product_Name,
       Product.ProductNumber,
       Product.ListPrice
FROM AdventureWorks2022.Production.Product
ORDER BY Product.ListPrice DESC


--  Challenge 2: Employees by Hire Date who has been with the company the longest.
SELECT  TOP 10 
        Person.Title,
        Person.FirstName,
        Person.LastName,
        Employee.BusinessEntityID,
        Employee.JobTitle,
        Employee.HireDate,
        Employee.Gender
FROM AdventureWorks2022.HumanResources.Employee
INNER JOIN Person.Person
ON Person.BusinessEntityID = Employee.BusinessEntityID
ORDER BY Employee.HireDate ASC;

-- Challenge 3: Sort Products Alphabetically
SELECT *
FROM Production.Product
ORDER BY Product.Name ASC;

-- Challenge 4: Product List Alphabetically by Sells start date and Name
SELECT * 
FROM Production.Product
ORDER BY Product.Name,Product.SellStartDate ASC;

-- Challenge 5: Top 10 Customers by Spending
SELECT TOP 10
      SalesOrderHeader.CustomerID,
      SalesOrderHeader.SalesOrderID,
      SalesOrderHeader.OrderDate,
      SalesOrderHeader.SalesOrderNumber,
      SalesOrderHeader.TotalDue

FROM AdventureWorks2022.Sales.SalesOrderHeader
ORDER BY SalesOrderHeader.TotalDue

