CREATE INDEX idx_users_email ON users(email);

CREATE INDEX idx_bookings_user_id ON bookings(user_id);

CREATE INDEX idx_bookings_property_id ON bookings(property_id);

CREATE INDEX idx_properties_host_id ON properties(host_id);

CREATE INDEX idx_bookings_created_at ON bookings(created_at);
