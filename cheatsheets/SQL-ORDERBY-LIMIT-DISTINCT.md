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
