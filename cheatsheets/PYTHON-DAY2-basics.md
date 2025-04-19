# 🐍 Python Basics Cheat Sheet

Welcome to your Python quickstart guide! This cheat sheet covers the fundamental concepts every beginner should know.

---

## 📌 1. Variables and Data Types

```python
name = "Alice"        # String
age = 25              # Integer
height = 5.5          # Float
is_student = True     # Boolean
```

---

## 🧮 2. Basic Operators

```python
# Arithmetic
a = 5 + 3     # 8
b = 10 - 2    # 8
c = 4 * 2     # 8
d = 16 / 2    # 8.0
e = 9 % 2     # 1

# Comparison
a == b   # True/False
a != b   # True/False
```

---

## 🔁 3. Control Flow

```python
# If-else
if age > 18:
    print("Adult")
else:
    print("Minor")

# Loops
for i in range(5):
    print(i)

while age > 0:
    age -= 1
```

---

## 📦 4. Collections

```python
# List
fruits = ["apple", "banana", "cherry"]
fruits.append("orange")

# Dictionary
person = {"name": "Alice", "age": 25}
print(person["name"])

# Tuple
point = (10, 20)

# Set
unique_numbers = {1, 2, 3}
```

---

## 🧰 5. Functions

```python
def greet(name):
    return f"Hello, {name}!"

print(greet("Alice"))
```

---

## 🗃️ 6. File Handling

```python
# Write to a file
with open("data.txt", "w") as f:
    f.write("Hello, World!")

# Read from a file
with open("data.txt", "r") as f:
    content = f.read()
    print(content)
```

---

## 🛠️ 7. Error Handling

```python
try:
    result = 10 / 0
except ZeroDivisionError:
    print("You can't divide by zero!")
```

---

## 🎯 8. Best Practices

- Use meaningful variable names
- Write reusable functions
- Comment your code
- Test small chunks as you go
- Follow PEP 8 (Python style guide)

---

Happy coding! 🚀
