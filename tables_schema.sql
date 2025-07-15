-- Tables:

-- 1. Customers – customer details

-- 2. Flights – flight metadata

-- 3. Seats – per-flight seat data

-- 4. Bookings – booking info and associations

CREATE TABLE Customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(20)
);

CREATE TABLE Flights (
  flight_id INT AUTO_INCREMENT PRIMARY KEY,
  flight_number VARCHAR(10),
  origin VARCHAR(50),
  destination VARCHAR(50),
  departure_time DATETIME,
  arrival_time DATETIME
);

CREATE TABLE Seats (
  seat_id INT AUTO_INCREMENT PRIMARY KEY,
  flight_id INT,
  seat_number VARCHAR(5),
  is_booked BOOLEAN DEFAULT FALSE,
  FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

CREATE TABLE Bookings (
  booking_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  flight_id INT,
  seat_id INT,
  booking_time DATETIME DEFAULT NOW(),
  status ENUM('confirmed', 'cancelled') DEFAULT 'confirmed',
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
  FOREIGN KEY (seat_id) REFERENCES Seats(seat_id)
);

-- All foreign keys are defined.

-- Seats ensures seat uniqueness per flight.

-- Bookings connects customers, seats, and flights.
