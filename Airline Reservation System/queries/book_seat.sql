-- Book a Seat

UPDATE Seats SET is_booked = TRUE WHERE seat_id = 1;

INSERT INTO Bookings (customer_id, flight_id, seat_id)
VALUES (1, 1, 1);

-- This pair of queries simulates manual booking:
-- At First , it marks a seat as booked (is_booked = TRUE). 
-- Then, it inserts a new record into the Bookings table, linking a customer, flight, and seat together.

Output:

+------------+-------------+-----------+---------+---------------------+-----------+
| booking_id | customer_id | flight_id | seat_id | booking_time        | status    |
+------------+-------------+-----------+---------+---------------------+-----------+
|          1 |           1 |         1 |       1 | 2025-07-15 19:19:46 | confirmed |
+------------+-------------+-----------+---------+---------------------+-----------+
