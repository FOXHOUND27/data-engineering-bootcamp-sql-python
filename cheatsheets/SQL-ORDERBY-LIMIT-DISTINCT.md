# SQL ORDER BY Clause - Tutorial

## 📌 What is ORDER BY?

The `ORDER BY` clause is used to **sort the result set** of a SQL query **in ascending or descending order** based on one or more columns.

By default, SQL sorts results in **ascending order (ASC)**.

---

## 🧠 Basic Syntax

```sql
SELECT column1, column2
FROM table_name
ORDER BY column1 [ASC|DESC];
```

# SQL LIMIT Clause - Tutorial

## 📌 What is LIMIT?

The `LIMIT` clause is used to **restrict the number of rows** returned in the result of a SQL query.

It’s especially useful when:

- You want to preview data
- You only need top N results
- You are working with large datasets

---

## 🧠 Basic Syntax

```sql
SELECT column1, column2
FROM table_name
LIMIT number;
```

# 📘 T-SQL `TOP` Clause – Tutorial

## 🧠 What is `TOP`?

The `TOP` clause in **T-SQL (SQL Server)** is used to **limit the number of rows** returned in a `SELECT` query.

> 🔄 It’s the SQL Server version of `LIMIT` (used in MySQL and PostgreSQL).

---

## ✅ Basic Syntax

```sql
SELECT TOP (number) column1, column2
FROM table_name
ORDER BY column;
```

# 🧠 SQL `DISTINCT` — Tutoring Session

## ✅ What is `DISTINCT`?

`DISTINCT` is used in SQL to **remove duplicate values** from the result set of a `SELECT` query. It returns **only unique rows**.

---

## 🔍 Syntax

```sql
SELECT DISTINCT column1, column2
FROM table_name;
```

- If you use `DISTINCT` on **one column**, it removes duplicates in that column.
- If you use it on **multiple columns**, it keeps rows where the **entire combination** of values is unique.

---

## 🎯 Example 1 – Single Column

```sql
SELECT DISTINCT City
FROM Person.Address;
```

This returns a list of **unique cities** in the `Address` table — duplicates are removed.

---

## 🎯 Example 2 – Multiple Columns

```sql
SELECT DISTINCT City, StateProvinceID
FROM Person.Address;
```

This returns unique **(City, StateProvinceID)** combinations.

Even if a city appears multiple times, if it's paired with a different state ID, it is counted as unique.

---

## ⚠️ Notes & Tips

| Tip                                      | Description                                                      |
| ---------------------------------------- | ---------------------------------------------------------------- |
| Use when necessary                       | Avoid using `DISTINCT` to "fix" bad joins or queries             |
| Better indexing = better performance     | `DISTINCT` can be slow on large datasets without proper indexing |
| `DISTINCT` applies to the **entire row** | Not just one column unless used on only one                      |
| Not the same as `GROUP BY`               | `GROUP BY` can aggregate; `DISTINCT` only filters unique rows    |

---

## 🧪 Practice Questions

1. Get all unique product colors:

```sql
SELECT DISTINCT Color FROM Production.Product;
```

2. Get all unique combinations of color and size:

```sql
SELECT DISTINCT Color, Size FROM Production.Product;
```

3. Get all unique sales years from the `OrderDate` column:

```sql
SELECT DISTINCT YEAR(OrderDate) FROM Sales.SalesOrderHeader;
```

---

## ✅ Summary Table

| Concept               | What It Does                                 |
| --------------------- | -------------------------------------------- |
| `DISTINCT column`     | Removes duplicates in that column            |
| `DISTINCT col1, col2` | Removes rows where both columns are the same |
| Use with caution      | Avoid overuse, can slow down queries         |
