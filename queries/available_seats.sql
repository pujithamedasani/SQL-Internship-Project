-- To Find Available Seats on a Flight

SELECT seat_number
FROM Seats
WHERE flight_id = 1 AND is_booked = FALSE;

-- This query retrieves all unbooked seat numbers for a specific flight (i.e., flight with ID = 1). It helps identify which seats are currently available for booking.
