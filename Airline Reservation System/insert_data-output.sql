Output:

+-----------+---------------+----------+--------------------------+---------------------+---------------------+
| flight_id | flight_number | origin   | destination              | departure_time      | arrival_time        |
+-----------+---------------+----------+--------------------------+---------------------+---------------------+
|         1 | AI101         | New York | London                   | 2025-08-01 10:00:00 | 2025-08-01 20:00:00 |
|         2 | AI202         | London   | Paris                    | 2025-08-21 08:00:00 | 2025-08-21 09:30:00 |
|         3 | AI202         | India    | United States of America | 2025-09-12 08:20:00 | 2025-09-13 05:40:00 |
+-----------+---------------+----------+--------------------------+---------------------+---------------------+
+-------------+-----------+--------------------+-----------------+
| customer_id | full_name | email              | phone           |
+-------------+-----------+--------------------+-----------------+
|           1 | Saachi P  | saachi.p@gmail.com | +91 7708702844  |
|           2 | Adharv M  | m.adharv@gmail.com | +91 8631378676  |
|           3 | Anvi R    | anvi.r@gmail.com   | +91 97235476081 |
+-------------+-----------+--------------------+-----------------+
+---------+-----------+-------------+-----------+
| seat_id | flight_id | seat_number | is_booked |
+---------+-----------+-------------+-----------+
|       1 |         1 | 1A          |         0 |
|       2 |         1 | 1B          |         0 |
|       3 |         1 | 2A          |         0 |
|       4 |         2 | 1A          |         0 |
|       5 |         2 | 1B          |         0 |
+---------+-----------+-------------+-----------+

-- is_booked is 0 because it is BOOLEAN and 0 means FALSE as we did not insert is_booked values it will be FALSE by DEFAULT 
