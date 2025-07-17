-- Flights Table
INSERT INTO Flights (flight_number, origin, destination, departure_time, arrival_time) VALUES 
('AI101', 'New York', 'London', '2025-08-01 10:00:00', '2025-08-01 20:00:00'),
('AI202', 'London', 'Paris', '2025-08-21 08:00:00', '2025-08-21 09:30:00'),
('AI202', 'India', 'United States of America' , '2025-09-12 08:20:00', '2025-09-13 05:40:00');

-- Customers Table
INSERT INTO Customers (full_name, email, phone) VALUES 
('Saachi P', 'saachi.p@gmail.com', '+91 7708702844'),
('Adharv M', 'm.adharv@gmail.com', '+91 8631378676'),
('Anvi R' , 'anvi.r@gmail.com', '+91 97235476081');

-- Seats Table
INSERT INTO Seats (flight_id, seat_number) VALUES 
(1, '1A'),
(1, '1B'),
(1, '2A'),
(2, '1A'),
(2, '1B');
