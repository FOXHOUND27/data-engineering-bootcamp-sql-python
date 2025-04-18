# ⁉️ What is the where clause ?

### WHERE clause is used to filter information from a table based on,

### one or more conditions

```sql
SELECT column1, column2
FROM table;
WHERE condition
```

# Common Filter operators

| Operator                | Description             | Example                                    |
| ----------------------- | ----------------------- | ------------------------------------------ |
| `=`                     | Equal                   | `WHERE LastName = 'Smith'`                 |
| `<>` or `!=`            | Not equal               | `WHERE City <> 'Windhoek'`                 |
| `>` / `<` / `>=` / `<=` | Greater/less than       | `WHERE ListPrice > 1000`                   |
| `BETWEEN`               | Between two values      | `WHERE ListPrice BETWEEN 100 AND 500`      |
| `LIKE`                  | Pattern match           | `WHERE FirstName LIKE 'A%'`                |
| `IN`                    | Match any value in list | `WHERE City IN ('Windhoek', 'Swakopmund')` |
| `IS NULL`               | Check for null          | `WHERE MiddleName IS NULL`                 |

## 🔍 SQL `LIKE` Operator

The `LIKE` operator is used in SQL to search for a specified **pattern** in a column, typically used with string/text fields.

### 🎯 Common Wildcards

| Wildcard | Description                          | Example Pattern | Matches Example     |
| -------- | ------------------------------------ | --------------- | ------------------- |
| `%`      | Zero or more characters (any length) | `'A%'`          | Alice, Adam, Amanda |
| `_`      | Exactly one character                | `'B_b'`         | Bob, Bib            |

---

### 🧪 Example Queries

#### 1. Names starting with 'A'

```sql
SELECT FirstName FROM Person.Person WHERE FirstName LIKE 'A%';
```
