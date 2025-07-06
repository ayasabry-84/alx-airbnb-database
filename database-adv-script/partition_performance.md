# 📊 Booking Table Partitioning Report

## 🎯 Goal
Improve query performance for large Booking table by partitioning on `start_date`.

---

## ⚙️ Strategy
We applied **RANGE partitioning** based on `YEAR(start_date)`:
- 2023 bookings → `p2023`
- 2024 bookings → `p2024`
- 2025 bookings → `p2025`
- Future → `pMax`

---

## 🧪 Performance Test

### Query:
```sql
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';
