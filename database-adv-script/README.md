# Airbnb Project – SQL Joins Practice

## 🎯 Objective
This task focuses on mastering SQL JOIN operations to retrieve meaningful insights from related tables in the Airbnb Clone database.

---

## 📌 Description

You are required to write three SQL queries using different types of JOINs to practice how to combine data from multiple related tables:

1. **INNER JOIN**  
   Retrieve all bookings and the users who made them.

2. **LEFT JOIN**  
   Retrieve all properties and their reviews, including properties that have no reviews.

3. **FULL OUTER JOIN**  
   Retrieve all users and all bookings, even if there is no match between them.

---

## 📝 Notes

- These JOIN queries are based on the Airbnb database schema involving tables like `users`, `bookings`, `properties`, and `reviews`.
- `FULL OUTER JOIN` is supported in PostgreSQL. If you are using MySQL, you may simulate it using `UNION` between `LEFT JOIN` and `RIGHT JOIN`.

---

## 🧠 Learning Outcome

This task helps in understanding how to:
- Retrieve related data using JOINs.
- Handle optional relationships with LEFT JOINs.
- Include unmatched records using FULL OUTER JOINs.


