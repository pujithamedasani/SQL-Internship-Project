--  On Cancellation – Free the seat

CREATE TRIGGER after_booking_cancel
AFTER UPDATE ON Bookings
FOR EACH ROW
BEGIN
  IF NEW.status = 'cancelled' THEN
    UPDATE Seats SET is_booked = FALSE WHERE seat_id = NEW.seat_id;
  END IF;
END;

-- This trigger ensures that when a booking is cancelled, the corresponding seat is freed up (i.e., is_booked = FALSE) and becomes available again for other customers.

Output:

+------------------------+----------+--------------------+--------+--------+----------+-------------------------------------------------------------------------------------------------------------------------+----------------------+----------------------+----------------------+
| Trigger                | SQL_MODE | Creation           | Timing | Event  | Table    | Statement                                                                                                               | character_set_client | collation_connection | Database Collation   |
+------------------------+----------+--------------------+--------+--------+----------+-------------------------------------------------------------------------------------------------------------------------+----------------------+----------------------+----------------------+
| after_booking_cancel   |          | CURRENT_TIMESTAMP  | AFTER  | UPDATE | Bookings | BEGIN IF NEW.status = 'cancelled' THEN UPDATE Seats SET is_booked = FALSE WHERE seat_id = NEW.seat_id; END IF; END      | utf8mb4              | utf8mb4_general_ci   | utf8mb4_general_ci   |
+------------------------+----------+--------------------+--------+--------+----------+-------------------------------------------------------------------------------------------------------------------------+----------------------+----------------------+----------------------+
