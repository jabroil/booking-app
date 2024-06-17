CREATE TABLE IF NOT EXISTS migration(
    id INTEGER PRIMARY KEY AUTOINCREMENT
);
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS airports (
    code TEXT NOT NULL PRIMARY KEY ,
    name TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS flights (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    from_airport TEXT,
    to_airport TEXT,
    departure DATETIME,
    arrival DATETIME,
    available_tickets INTEGER,
    CONSTRAINT from_airport_fk FOREIGN KEY (from_airport)  REFERENCES airports (code),
    CONSTRAINT to_airport_fk FOREIGN KEY (to_airport)  REFERENCES airports (code)
);
CREATE TABLE IF NOT EXISTS booking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    flight_id INTEGER,
    booking_status INTEGER,
    tickets_count INTEGER,
    CONSTRAINT flight_fk FOREIGN KEY (flight_id)  REFERENCES flights (id),
    CONSTRAINT user_fk FOREIGN KEY (user_id)  REFERENCES users (id)
);

INSERT INTO airports (code, name) VALUES ("SVX", "Yekaterinburg");
INSERT INTO airports (code, name) VALUES ("IST", "Istanbul");
INSERT INTO airports (code, name) VALUES ("DME", "Moscow");
INSERT INTO airports (code, name) VALUES ("LAX", "Los Angeles");
INSERT INTO airports (code, name) VALUES ("JFK", "New York John F. Kennedy");
INSERT INTO airports (code, name) VALUES ("HND", "Tokyo Haneda");
INSERT INTO airports (code, name) VALUES ("LHR", "London Heathrow");
INSERT INTO airports (code, name) VALUES ("CDG", "Paris Charles de Gaulle");
INSERT INTO airports (code, name) VALUES ("SIN", "Singapore Changi");
INSERT INTO airports (code, name) VALUES ("DXB", "Dubai International");
INSERT INTO airports (code, name) VALUES ("SYD", "Sydney Kingsford Smith");
INSERT INTO airports (code, name) VALUES ("FRA", "Frankfurt");
INSERT INTO airports (code, name) VALUES ("AMS", "Amsterdam Schiphol");


INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ( "SVX", "IST", "2024-06-14 20:34", "2024-06-14 22:34", 210);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ( "SVX", "IST", "2024-06-14 21:34", "2024-06-14 22:34", 150);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ( "SVX", "IST", "2024-06-15 06:34", "2024-06-15 22:34", 180);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ( "SVX", "IST", "2024-06-16 20:34", "2024-06-16 22:34", 220);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ( "SVX", "DME", "2024-06-18 16:00", "2024-06-18 18:30", 160);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ( "SVX", "DME", "2024-07-10 10:00", "2024-06-18 12:30", 140);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("SVX", "JFK", "2024-06-01 08:00", "2024-06-01 16:00", 130);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("SVX", "DXB", "2024-06-19 10:00", "2024-06-19 18:00", 110);


INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("JFK", "LHR", "2024-06-16 14:00", "2024-06-16 22:00", 200);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("HND", "CDG", "2024-06-17 23:00", "2024-06-18 05:00", 180);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("LHR", "SIN", "2024-06-18 09:00", "2024-06-18 19:00", 100);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("SIN", "SYD", "2024-06-20 06:00", "2024-06-20 14:00", 130);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("DXB", "FRA", "2024-06-21 00:00", "2024-06-21 06:00", 140);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("SYD", "AMS", "2024-06-22 11:00", "2024-06-22 21:00", 110);
INSERT INTO flights (from_airport, to_airport, departure, arrival, available_tickets)
VALUES ("FRA", "LAX", "2024-06-23 15:00", "2024-06-23 23:00", 160);


INSERT INTO users (username, password) VALUES ("test","test");

INSERT INTO migration (id) VALUES (1);