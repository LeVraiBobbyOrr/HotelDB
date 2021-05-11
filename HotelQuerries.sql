-- 1
-- Write a query that returns a list of reservations that end in July 2023, 
-- including the name of the guest, the room number(s), and the reservation dates.
SELECT 
	Guests.FirstName,
    Guests.LastName,
    RoomNumber
FROM Reservations
JOIN Guests ON Reservations.GuestId = Guests.GuestId
WHERE MONTH(EndDate) = 7 AND YEAR(EndDate) = 2023;

-- RESULT 4 rows
-- 	Lars		Hall	205
-- 	Bettyann	Seery	303
-- 	Walter		Holaway	204
-- 	Wilfred		Vise	401

-- 2
-- Write a query that returns a list of all reservations for rooms with a jacuzzi, 
-- displaying the guest's name, the room number, and the dates of the reservation.

SELECT ReservationId FROM reservations
JOIN rooms on rooms.RoomNumber = reservations.RoomNumber
JOIN roomamenities ON roomamenities.RoomNumber = rooms.RoomNumber
WHERE roomamenities.AmenitiesID=2;

-- RESULT 10 rows
-- 4
-- 2
-- 21
-- 15
-- 10
-- 9
-- 24
-- 18
-- 3
-- 19

-- 3
-- Write a query that returns all the rooms reserved for a specific guest, 
-- including the guest's name, the room(s) reserved, the starting date of the reservation, 
-- and how many people were included in the reservation. (Choose a guest's name from the existing data.)
	
SELECT
	Guests.FirstName,
    Guests.LastName,
    Reservations.RoomNumber,
    Reservations.StartDate,
    Reservations.Adults,
    Reservations.Children
FROM
	Reservations
JOIN Guests ON Reservations.GuestId = Guests.GuestId
WHERE Guests.FirstName LIKE 'Joleen' AND Guests.LastName LIKE 'Tison';

-- RESULT 2 rows
-- 	Joleen	Tison	206	2023-06-10	2	0
-- 	Joleen	Tison	208	2023-06-10	1	0
    
-- 4 
-- Write a query that returns a list of rooms, reservation ID, 
-- and per-room cost for each reservation. The results should include all rooms, 
-- whether or not there is a reservation associated with the room.

SELECT
	Rooms.RoomNumber,
    GROUP_CONCAT(ReservationId),
    Price
FROM Reservations
RIGHT JOIN Rooms ON Reservations.RoomNumber = Rooms.RoomNumber
GROUP BY Rooms.RoomNumber;
    
-- RESULT 18 rows
-- 201		4			199.99
-- 202		7			174.99
-- 203		2,21		199.99
-- 204		16			174.99
-- 205		15			174.99
-- 206		12,23		149.99
-- 207		10			174.99
-- 208		13,20		149.99
-- 301		9,24		199.99
-- 302		6,25		174.99
-- 303		18			199.99
-- 304		8,14		174.99
-- 305		3,19		174.99
-- 306					149.99
-- 307		5			174.99
-- 308		1			149.99
-- 401		11,17,22	399.99
-- 402					399.99

-- 5 
-- Write a query that returns all the rooms accommodating at least three guests and 
-- that are reserved on any date in April 2023.

SELECT 
	Rooms.RoomNumber,
    Reservations.Adults,
    Reservations.Children
FROM Rooms
JOIN Reservations ON Rooms.RoomNumber = Reservations.RoomNumber
WHERE Reservations.Adults+Reservations.Children >=3;

-- RESULT 12 rows
-- 203	2	1
-- 201	2	2
-- 302	3	0
-- 202	2	2
-- 401	2	4
-- 304	3	0
-- 204	3	1
-- 401	4	2
-- 303	2	1

-- 6 
-- Write a query that returns a list of all guest names and the number of 
-- reservations per guest, sorted starting with the guest with the most 
-- reservations and then by the guest's last name.

SELECT FirstName, LastName, (reservations.Adults + reservations.Children) as "Total Guests"
FROM reservations
JOIN guests on guests.GuestID = reservations.GuestID
ORDER BY (reservations.Adults + reservations.Children) DESC, LastName;

-- RESULT 25 rows
-- 'Maritza', 'Tilton', '6'
-- 'Wilfred', 'Vise', '6'
-- 'Duane', 'Cullison', '4'
-- 'Walter', 'Holaway', '4'
-- 'Zachery', 'Luechtefeld', '4'
-- 'Mack', 'Simmer', '4'
-- 'Karie', 'Yang', '4'
-- 'Karie', 'Yang', '4'
-- 'Aurore', 'Lipton', '3'
-- 'Aurore', 'Lipton', '3'
-- 'Bettyann', 'Seery', '3'
-- 'Bettyann', 'Seery', '3'
-- 'Duane', 'Cullison', '2'
-- 'Lars', 'Hall', '2'
-- 'Lars', 'Hall', '2'
-- 'Jeremiah', 'Pendergrass', '2'
-- 'Mack', 'Simmer', '2'
-- 'Mack', 'Simmer', '2'
-- 'Maritza', 'Tilton', '2'
-- 'Joleen', 'Tison', '2'
-- 'Wilfred', 'Vise', '2'
-- 'Walter', 'Holaway', '1'
-- 'Bettyann', 'Seery', '1'
-- 'Mack', 'Simmer', '1'
-- 'Joleen', 'Tison', '1'


-- 7
-- Write a query that displays the name, address, and phone number of a guest based on 
-- their phone number. (Choose a phone number from the existing data.)

SELECT
	Guests.FirstName,
    Guests.LastName,
    StreetAddress,
    City,
    Zip,
    Phone
FROM Guests
WHERE Phone LIKE '(123) 456-789';

-- RESULT 1 row
-- 'Lars', 'Hall', '123 Green Street', 'Sebastian', '32457', '(123) 456-789'

