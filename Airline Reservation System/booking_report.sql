Query:

SELECT * FROM Bookings ;

SELECT 
  B.booking_id,
  C.full_name,
  F.flight_number,
  F.origin,
  F.destination,
  S.seat_number,
  B.status,
  B.booking_time
FROM Bookings B
JOIN Customers C ON B.customer_id = C.customer_id
JOIN Flights F ON B.flight_id = F.flight_id
JOIN Seats S ON B.seat_id = S.seat_id
ORDER BY B.booking_time DESC;

Output:

+------------+-----------+---------------+----------+--------------------------+-------------+-----------+---------------------+
| booking_id | full_name | flight_number | origin   | destination              | seat_number | status    | booking_time        |
+------------+-----------+---------------+----------+--------------------------+-------------+-----------+---------------------+
|          1 | Saachi P  | AI101         | New York | London                   | 1A          | confirmed | 2025-07-17 18:17:29 |
|          2 | Adharv M  | AI202         | London   | Paris                    | 1B          | confirmed | 2025-07-17 18:17:29 |
|          3 | Anvi R    | AI202         | India    | United States of America | 2A          | confirmed | 2025-07-17 18:17:29 |
+------------+-----------+---------------+----------+--------------------------+-------------+-----------+---------------------+
