-- Flights Table
INSERT INTO Flights (flight_number, origin, destination, departure_time, arrival_time) VALUES 
('AI101', 'New York', 'London', '2025-08-01 10:00:00', '2025-08-01 20:00:00'),
('AI202', 'London', 'Paris', '2025-08-21 08:00:00', '2025-08-21 09:30:00');

-- Customers Table
INSERT INTO Customers (full_name, email, phone) VALUES 
('Saachi', 'saachi.12@gmail.com', '7708702844'),
('Adharv', 'adharv@gmail.com', '8631378676');

-- Seats Table
INSERT INTO Seats (flight_id, seat_number) VALUES 
(1, '1A'), (1, '1B'), (1, '2A'),
(2, '1A'), (2, '1B');
