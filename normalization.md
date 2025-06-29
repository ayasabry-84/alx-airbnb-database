# Normalization – Airbnb Database

This document outlines the normalization process for the Airbnb database. The goal is to ensure the database is optimized, scalable, and free from redundancy.

---

## ✅ First Normal Form (1NF)

- All attributes contain atomic (indivisible) values.
- There are no repeating groups or arrays.
- Each record is uniquely identified by a primary key.

**Status:** All tables in the schema satisfy 1NF.

---

## ✅ Second Normal Form (2NF)

- Achieves 1NF.
- All non-key attributes are fully functionally dependent on the entire primary key.
- Since all tables use UUIDs as single-column primary keys, partial dependency is not applicable.

**Status:** All tables satisfy 2NF.

---

## ✅ Third Normal Form (3NF)

- Achieves 2NF.
- All attributes are dependent only on the primary key and not on other non-key attributes.
- No transitive dependencies are present.

**Status:** All tables satisfy 3NF.

---

## ✔️ Conclusion

The Airbnb database design is fully normalized up to the Third Normal Form (3NF). No redundant data or transitive dependencies were found. The structure is clean and optimized for scalability and consistency.
