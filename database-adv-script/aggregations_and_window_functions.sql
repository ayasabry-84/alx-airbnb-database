-- ✅ 1. Total number of bookings made by each user
SELECT 
    users.user_id,
    users.first_name,
    COUNT(bookings.booking_id) AS total_bookings
FROM 
    users
LEFT JOIN 
    bookings ON users.user_id = bookings.user_id
GROUP BY 
    users.user_id, users.first_name;


-- ✅ 2. Rank properties based on total number of bookings using RANK()
SELECT 
    properties.property_id,
    properties.name,
    COUNT(bookings.booking_id) AS booking_count,
    RANK() OVER (ORDER BY COUNT(bookings.booking_id) DESC) AS rank_by_bookings
FROM 
    properties
LEFT JOIN 
    bookings ON properties.property_id = bookings.property_id
GROUP BY 
    properties.property_id, properties.name;


-- ✅ 3. Use ROW_NUMBER() to list bookings per user ordered by start_date
SELECT 
    bookings.booking_id,
    bookings.user_id,
    bookings.start_date,
    ROW_NUMBER() OVER (PARTITION BY bookings.user_id ORDER BY bookings.start_date) AS booking_order
FROM 
    bookings;
