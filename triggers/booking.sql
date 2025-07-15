-- On Booking – Set seat as booked

DELIMITER //

CREATE TRIGGER after_booking_insert
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
  UPDATE Seats SET is_booked = TRUE WHERE seat_id = NEW.seat_id;
END;
//

DELIMITER ;

-- This trigger automates the seat booking process. Whenever a new booking is inserted into the Bookings table, it automatically updates the corresponding seat's is_booked field to TRUE.

Output:
+------------------------+----------+-------------------+--------+--------+----------+-------------------------------------------------------------------------------+----------------------+----------------------+----------------------+  
| Trigger                | SQL_MODE | Creation          | Timing | Event  | Table    | Statement                                                                     | character_set_client | collation_connection | Database Collation   |
+------------------------+----------+-------------------+--------+--------+----------+-------------------------------------------------------------------------------+----------------------+----------------------+----------------------+
| after_booking_insert   |          | CURRENT_TIMESTAMP | AFTER  | INSERT | Bookings | BEGIN  UPDATE Seats SET  is_booked = TRUE WHERE seat_id = NEW.seat_id; END    | utf8mb4              | utf8mb4_general_ci   | utf8mb4_general_ci   |
+------------------------+----------+-------------------+--------+--------+----------+-------------------------------------------------------------------------------+----------------------+----------------------+----------------------+
