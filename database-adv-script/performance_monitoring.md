# 🔍 Performance Monitoring and Schema Refinement

## 🎯 Objective

To monitor and optimize database performance by:
- Analyzing query execution plans.
- Identifying slow queries and bottlenecks.
- Applying schema refinements such as indexing.

---

## 🧪 Tools Used

- `EXPLAIN` / `EXPLAIN ANALYZE` — to analyze how queries are executed.
- `SHOW INDEX` — to inspect existing indexes.
- Sample queries from Bookings, Users, and Properties.

---

## ✅ Optimization Examples

### 1. JOIN Between `bookings` and `users`

#### Original Query:
```sql
SELECT * 
FROM bookings 
JOIN users ON bookings.user_id = users.user_id;
