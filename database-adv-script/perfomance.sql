-- Initial (Non-Optimized) Query: May include unnecessary joins or unindexed fields
SELECT 
    b.booking_id,
    u.first_name, u.last_name, u.email,
    p.name AS property_name, p.location, p.pricepernight,
    pay.amount, pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON pay.booking_id = b.booking_id;

-- Optimized Query: assuming proper indexing is already applied
-- (email, user_id, property_id, booking_id)
-- Only selects needed fields and avoids unnecessary columns
SELECT 
    b.booking_id,
    u.first_name, u.last_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON pay.booking_id = b.booking_id;
