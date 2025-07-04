-- Insert into users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('uuid-user-1', 'Aya', 'Sabry', 'aya@example.com', 'hashed_pw1', '0100000001', 'guest', CURRENT_TIMESTAMP),
('uuid-user-2', 'Mohamed', 'Mostafa', 'mohamed@example.com', 'hashed_pw2', '0100000002', 'host', CURRENT_TIMESTAMP),
('uuid-user-3', 'Admin', 'User', 'admin@example.com', 'hashed_pw3', NULL, 'admin', CURRENT_TIMESTAMP),
('uuid-user-4', 'Laila', 'Khaled', 'laila@example.com', 'hashed_pw4', '0100000004', 'guest', CURRENT_TIMESTAMP),
('uuid-user-5', 'Omar', 'Salah', 'omar@example.com', 'hashed_pw5', '0100000005', 'host', CURRENT_TIMESTAMP);

-- Insert into properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('uuid-property-1', 'uuid-user-2', 'Sea View Apartment', 'A cozy apartment near the beach.', 'Alexandria', 800.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('uuid-property-2', 'uuid-user-2', 'Downtown Flat', 'Close to everything you need.', 'Cairo', 550.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('uuid-property-3', 'uuid-user-5', 'Mountain Retreat', 'Peaceful place in the mountains.', 'Aswan', 1200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('uuid-property-4', 'uuid-user-5', 'Modern Loft', 'Stylish loft in city center.', 'Cairo', 750.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert into bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('uuid-booking-1', 'uuid-property-1', 'uuid-user-1', '2025-07-10', '2025-07-15', 4000.00, 'confirmed', CURRENT_TIMESTAMP),
('uuid-booking-2', 'uuid-property-2', 'uuid-user-1', '2025-08-01', '2025-08-03', 1100.00, 'pending', CURRENT_TIMESTAMP),
('uuid-booking-3', 'uuid-property-3', 'uuid-user-4', '2025-09-10', '2025-09-15', 6000.00, 'confirmed', CURRENT_TIMESTAMP),
('uuid-booking-4', 'uuid-property-4', 'uuid-user-4', '2025-10-01', '2025-10-05', 3000.00, 'canceled', CURRENT_TIMESTAMP);

-- Insert into payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('uuid-payment-1', 'uuid-booking-1', 4000.00, CURRENT_TIMESTAMP, 'credit_card'),
('uuid-payment-2', 'uuid-booking-3', 6000.00, CURRENT_TIMESTAMP, 'paypal');

-- Insert into reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
('uuid-review-1', 'uuid-property-1', 'uuid-user-1', 5, 'Amazing stay, very clean and peaceful!', CURRENT_TIMESTAMP),
('uuid-review-2', 'uuid-property-3', 'uuid-user-4', 4, 'Nice view but far from shops.', CURRENT_TIMESTAMP),
('uuid-review-3', 'uuid-property-2', 'uuid-user-1', 3, 'Good place, but noisy at night.', CURRENT_TIMESTAMP);

-- Insert into messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('uuid-message-1', 'uuid-user-1', 'uuid-user-2', 'Hello, is the apartment available on 10th July?', CURRENT_TIMESTAMP),
('uuid-message-2', 'uuid-user-2', 'uuid-user-1', 'Yes, it is available. You can book now.', CURRENT_TIMESTAMP),
('uuid-message-3', 'uuid-user-4', 'uuid-user-5', 'Hi, is the mountain retreat available in September?', CURRENT_TIMESTAMP),
('uuid-message-4', 'uuid-user-5', 'uuid-user-4', 'Yes, it’s free from 10th to 15th.', CURRENT_TIMESTAMP);
