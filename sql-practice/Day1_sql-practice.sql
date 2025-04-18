--10 Select statement to practice SELECT anad FROM

--PERSON & CUSTOMER TABLES

-- 1. Select all columns from the Person table.
SELECT * FROM AdventureWorks2022.Person.Person

-- 2. Select firstname , lastname and BusinessEntityId from Person Table
SELECT Person.BusinessEntityID,
       Person.FirstName,
       Person.LastName  
FROM   AdventureWorks2022.Person.Person

-- 3. Select CustomerID, PersonID,AccountNumber from Sales.Customer.
SELECT   
       Customer.CustomerID,
       Customer.PersonID,
       Customer.AccountNumber

FROM AdventureWorks2022.Sales.Customer

-- 4. Select all columns from the Person.EmailAddress table.
SELECT *
FROM Person.EmailAddress

-- 5. Select the EmailAddress and BusinessEntityID from Person.EmailAddress.
SELECT 
       Person.EmailAddress.EmailAddress,
       Person.EmailAddress.BusinessEntityID

FROM AdventureWorks2022.Person.EmailAddress


--Product & Category Tables.

-- 6. Select all columns from the Production.Product table.
SELECT * 
FROM AdventureWorks2022.Production.Product

-- 7. Select the Name, ProductNumber, and ListPrice from Production.Product.
SELECT
      Production.Product.ProductNumber,
      Production.Product.ListPrice

FROM AdventureWorks2022.Production.Product

--7. Select all columns from Production.ProductCategory.
SELECT *
FROM AdventureWorks2022.Production.ProductCategory


-- SALES ORDER TABLES

-- 8. Select all columns from Sales.SalesOrderHeader.
SELECT *
FROM Sales.SalesOrderHeader

-- 9. Select the SalesOrderID, CustomerID, OrderDate, and TotalDue from Sales.SalesOrderHeader.
SELECT 
       Sales.SalesOrderHeader.SalesOrderID,
       Sales.SalesOrderHeader.CustomerID,
       Sales.SalesOrderHeader.OrderDate,
       Sales.SalesOrderHeader.TotalDue

FROM AdventureWorks2022.Sales.SalesOrderHeader

-- 10. Select all columns from Sales.SalesOrderDetail.
SELECT *
FROM AdventureWorks2022.Sales.SalesOrderDetail

--DONE with practicing and learning about SQL SELECT and FROM syntax




-- 10 WHERE clause practice questions to learn filtering

-- 1. Select all people from Person.Person where the LastName is 'Smith'.
SELECT * 
FROM AdventureWorks2022.Person.Person
WHERE Person.LastName = 'Smith'

-- 2. Select all products from Production.Product where ListPrice is greater than 1000.
SELECT *
FROM AdventureWorks2022.Production.Product
WHERE Product.ListPrice > 1000

-- 3. Select employees from HumanResources.Employee who were hired after 2010-01-01.
SELECT *
FROM HumanResources.Employee
WHERE Employee.HireDate >= '2010-01-01'

-- 4. Select addresses from Person.Address where the City is 'Seattle'.
SELECT *
FROM AdventureWorks2022.Person.Address
WHERE Address.City = 'Seattle'

-- 5. Select sales orders from Sales.SalesOrderHeader where the TotalDue is between 500 and 1000.
SELECT *
FROM AdventureWorks2022.Sales.SalesOrderHeader
WHERE SalesOrderHeader.TotalDue BETWEEN 500 AND 1000

-- 6. Select people from Person.Person where the FirstName starts with 'J'.
SELECT *
FROM AdventureWorks2022.Person.Person
WHERE Person.FirstName LIKE  'J%'

-- 7. Select products from Production.Product where the Color is not 'Red'.
SELECT *
FROM AdventureWorks2022.Production.Product
WHERE Product.Color != 'Red'

-- 8. Select stores from Sales.Store where Name contains 'Bike' (use LIKE).
SELECT *
FROM AdventureWorks2022.Sales.Store
WHERE Store.Name LIKE '%Bike%'

-- 9. Select email addresses from Person.EmailAddress where EmailAddress ends with 'adventure-works.com'.
SELECT *
FROM AdventureWorks2022.Person.EmailAddress
WHERE Person.EmailAddress.EmailAddress LIKE '%adventure-works.com'

-- 10. Select product models from Production.ProductModel where the ProductModelID is in the list (1, 3, 5, 7).
SELECT *
FROM AdventureWorks2022.Production.ProductModel
WHERE ProductModel.ProductModelID IN (1,3,5,7)


-- INTERMEDIATE CHALLENGE BASED ON WHAT I LEARNED

-- 1. List all employees whose job title contains the word “Manager”.
SELECT *
FROM AdventureWorks2022.HumanResources.Employee
WHERE Employee.JobTitle LIKE '%Manager%'

-- 2. Find all people whose last name starts with the letter ‘C’.
SELECT *
FROM AdventureWorks2022.Person.Person
WHERE Person.LastName LIKE '%C'

-- 3. Show all employees hired between January 1, 2010 and December 31, 2014
SELECT *
FROM AdventureWorks2022.HumanResources.Employee
WHERE Employee.HireDate BETWEEN '2010-01-01' AND '2014-12-01'
