SELECT
       COUNT(Employee.BusinessEntityID) as Total_Employees

FROM HumanResources.Employee

INNER JOIN Person.Person
ON Person.BusinessEntityID = Employee.BusinessEntityID

SELECT
       Product.ProductID

FROM Production.Product

INNER JOIN Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID

INNER JOIN Production.ProductCategory
ON ProductSubcategory.ProductCategoryID = ProductCategory.ProductCategoryID