--20 Select statement to practice SELECT anad FROM

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