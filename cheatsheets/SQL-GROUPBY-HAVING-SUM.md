# SQL Concepts Explained: GROUP BY, COUNT, SUM, HAVING

## 1. GROUP BY

### 🧠 Technical Explanation:

The `GROUP BY` clause is used to group rows that have the same values in specified columns into summary rows. It's often used with aggregate functions like `COUNT()`, `SUM()`, `AVG()`, etc.

### 🗣️ Non-Technical Explanation:

Think of `GROUP BY` like sorting your class into groups by favorite subject. Then you can see how many students like Math, English, or Science.

### Example:

```sql
SELECT department, COUNT(*)
FROM Employees
GROUP BY department;
```

---

## 2. COUNT()

### 🧠 Technical Explanation:

`COUNT()` returns the number of non-null values for a specified column or rows. When used with `*`, it counts all rows.

### 🗣️ Non-Technical Explanation:

It’s like counting how many apples you have in a basket. If you use `COUNT(*)`, you count everything. If you use `COUNT(color)`, you only count apples with a color.

### Example:

```sql
SELECT COUNT(*) FROM Orders;
```

---

## 3. SUM()

### 🧠 Technical Explanation:

`SUM()` calculates the total sum of a numeric column.

### 🗣️ Non-Technical Explanation:

Imagine adding up all the prices of items in your shopping cart – that’s what `SUM()` does.

### Example:

```sql
SELECT SUM(price) FROM Products;
```

---

## 4. HAVING

### 🧠 Technical Explanation:

The `HAVING` clause is used to filter groups after aggregation. It’s like `WHERE`, but for grouped data.

### 🗣️ Non-Technical Explanation:

You first group your data (e.g., by department), then say “show me only departments with more than 5 employees.” That filter happens after the group is made.

### Example:

```sql
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 5;
```

---

## 🧩 Combined Example:

```sql
SELECT customer_id, COUNT(order_id) AS total_orders, SUM(amount) AS total_spent
FROM Orders
GROUP BY customer_id
HAVING SUM(amount) > 500;
```

This query gives you customers who spent more than $500 in total.
