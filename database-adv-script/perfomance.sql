EXPLAIN
SELECT 
    b.booking_id,
    u.first_name, u.last_name, u.email,
    p.name AS property_name, p.location, p.pricepernight,
    pay.amount, pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON pay.booking_id = b.booking_id
WHERE b.status = 'confirmed'
AND pay.amount > 1000;

EXPLAIN
SELECT 
    b.booking_id,
    u.first_name, u.last_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON pay.booking_id = b.booking_id
WHERE b.status = 'confirmed'
AND pay.amount > 1000;
