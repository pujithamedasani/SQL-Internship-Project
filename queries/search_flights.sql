-- Search Flights
-- To search flights between the departure timing and arrival timings from that specific origin and destinaion

SELECT * FROM Flights
WHERE origin = 'New York' AND destination = 'London'
AND departure_time BETWEEN '2025-08-01 00:00:00' AND '2025-08-01 23:59:59';

-- This query searches for all flights departing from New York to London on August 1, 2025. It uses the BETWEEN clause to filter flights scheduled within the full day.

