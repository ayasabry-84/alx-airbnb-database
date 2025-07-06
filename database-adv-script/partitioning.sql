-- Drop if exists (for reruns)
DROP TABLE IF EXISTS bookings_partitioned;

-- Create partitioned table by RANGE on start_date
CREATE TABLE bookings_partitioned (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status VARCHAR(10) CHECK (status IN ('pending', 'confirmed', 'canceled')) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pMax VALUES LESS THAN MAXVALUE
);
