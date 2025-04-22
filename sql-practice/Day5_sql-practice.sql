--Simple query to see how group by works

SELECT
       SalesOrderHeader.CustomerID,
       COUNT(SalesOrderHeader.SalesOrderID) as Total_Orders
      
FROM Sales.SalesOrderHeader

GROUP BY SalesOrderHeader.CustomerID