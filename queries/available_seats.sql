-- To Find Available Seats on a Flight

SELECT seat_number
FROM Seats
WHERE flight_id = 1 AND is_booked = FALSE;
