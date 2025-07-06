# Index Performance Analysis

## Objective
Improve query performance by creating indexes on high-usage columns used in JOINs, WHERE, and ORDER BY clauses.

---

## Indexed Columns and Justification

| Table      | Column         | Justification                         |
|------------|----------------|---------------------------------------|
| users      | email          | Used in user lookup and login         |
| bookings   | user_id        | Used in JOINs with users              |
| bookings   | property_id    | Used in JOINs with properties         |
| bookings   | created_at     | Used in date range filtering          |
| properties | host_id        | Used in JOINs with users (hosts)      |

---

## Example Query (Before Index)

```sql
EXPLAIN ANALYZE
SELECT users.first_name, users.last_name, bookings.total_price
FROM users
JOIN bookings ON users.user_id = bookings.user_id
WHERE users.email = 'aya@example.com';
