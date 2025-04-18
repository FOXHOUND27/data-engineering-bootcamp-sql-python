--20 Select statement to practice SELECT anad FROM

--PERSON & CUSTOMER TABLES

-- 1. Select all columns from the Person table.
SELECT * FROM Person.Person

-- 2. Select firstname , lastname and BusinessEntityId from Person Table
SELECT Person.BusinessEntityID,
       Person.FirstName,
       Person.LastName  
FROM Person.Person

-- 3. Select CustomerID, PersonID,AccountNumber from Sales.Customer.
SELECT   
       Customer.CustomerID,
       Customer.PersonID,
       Customer.AccountNumber

FROM Sales.Customer

-- 4. Select all columns from the Person.EmailAddress table.
SELECT *

FROM Person.EmailAddress