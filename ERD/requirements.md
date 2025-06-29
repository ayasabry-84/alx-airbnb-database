# Airbnb ER Diagram – Requirements

This ER diagram represents the structure of the Airbnb-like database system. It includes all core entities, their attributes, and the relationships between them.

---

## 📦 Entities and Attributes

### 1. User
- user_id (PK)
- first_name
- last_name
- email (unique)
- password_hash
- phone_number
- role (ENUM: guest, host, admin)
- created_at

### 2. Property
- property_id (PK)
- host_id (FK to User)
- name
- description
- location
- pricepernight
- created_at
- updated_at

### 3. Booking
- booking_id (PK)
- property_id (FK to Property)
- user_id (FK to User)
- start_date
- end_date
- total_price
- status (ENUM: pending, confirmed, canceled)
- created_at

### 4. Payment
- payment_id (PK)
- booking_id (FK to Booking)
- amount
- payment_date
- payment_method (ENUM: credit_card, paypal, stripe)

### 5. Review
- review_id (PK)
- property_id (FK to Property)
- user_id (FK to User)
- rating (1 to 5)
- comment
- created_at

### 6. Message
- message_id (PK)
- sender_id (FK to User)
- recipient_id (FK to User)
- message_body
- sent_at

---

## 🔗 Relationships

- A **User** can create multiple **Bookings**
- A **Booking** is made for one **Property**
- A **Booking** has one **Payment**
- A **User** can write multiple **Reviews** for **Properties**
- A **User** can send and receive **Messages** from other Users
- A **Property** is owned by one **User** (host)

---

> The diagram was created using Draw.io and includes all entities and relationships necessary to support a real-world Airbnb-like system.
