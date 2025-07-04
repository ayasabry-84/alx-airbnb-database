SELECT properties.name , properties.description , properties.location , properties.created_at
FROM properties
WHERE (
		SELECT AVG(reviews.rating )
		FROM reviews
		WHERE reviews.property_id = properties.property_id
	) > 4.0;
    
SELECT users.first_name , 
	(
	SELECT COUNT(*) AS booking_counts
    FROM bookings
    WHERE booking.user_id = users.user_id
    )
FROM users
WHERE (
	SELECT COUNT(*)
    FROM bookings
    WHERE booking.user_id = users.user_id
    ) > 3
    

    
    
