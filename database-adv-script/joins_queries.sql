SELECT 
  b.booking_id,
  u.first_name, u.last_name,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;

SELECT properties.name , reviews.rating
FROM properties
LEFT JOIN reviews ON reviews.property_id = properties.property_id;

SELECT bookings.booking_id,
  users.first_name, users.last_name,
  bookings.start_date,
  bookings.end_date,
  bookings.total_price,
  bookings.status
FROM users
FULL OUTER JOIN bookings ON bookings.user_id = users.user_id;