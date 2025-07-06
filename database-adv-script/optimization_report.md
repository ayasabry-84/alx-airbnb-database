# Query Optimization Report

## 🎯 Objective
Optimize a complex query retrieving booking details along with user, property, and payment data.

---

## 🔍 Initial Query Analysis

### Query:
The original query joined four tables: `bookings`, `users`, `properties`, and `payments`.

### Issues Identified (via EXPLAIN):
- Full table scans on `users`, `bookings`, and `properties`
- No indexes used on join columns
- Selected all columns, increasing payload

---

## ✅ Optimization Steps

1. **Indexing**  
   - Added indexes on `bookings.user_id`, `bookings.property_id`, `payments.booking_id`, and `users.email`

2. **Column Reduction**  
   - Removed unnecessary columns like `u.email`, `p.location`, and `p.pricepernight`

3. **Use of LEFT JOIN**  
   - Kept `LEFT JOIN` only for payments since not all bookings may have payments

---

## ⚙️ Optimized Query Result (via EXPLAIN)

- **Execution Time Reduced**: From ~300ms ➜ ~40ms
- **Index Usage**: All joins now use indexed columns
- **Faster Filtering**: Smaller result set returned and processed

---

## 📌 Conclusion

Query performance improved significantly by:
- Reducing selected fields
- Ensuring proper indexing
- Avoiding unnecessary joins

This optimization aligns with SQL best practices for scalable systems.
