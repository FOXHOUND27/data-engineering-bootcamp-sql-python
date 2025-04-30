-- 6. Return a list of orders that include more than 5 items (quantity-wise), showing the order ID and total quantity.

SELECT 
       SalesOrderDetail.SalesOrderID, 
       COUNT(SalesOrderDetail.OrderQty) AS Total_Number_Of_Items

FROM Sales.SalesOrderDetail

GROUP BY SalesOrderDetail.SalesOrderID

HAVING  COUNT(SalesOrderDetail.OrderQty) > 5

ORDER BY SalesOrderDetail.OrderQty ASC;