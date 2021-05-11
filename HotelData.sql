USE Hotel;
INSERT INTO State (StateAbbr, `Name`) 
VALUES
    ('AL', 'Alabama'),
    ('AK', 'Alaska'),
    ('AZ', 'Arizona'),
    ('AR', 'Arkansas'),
    ('CA', 'California'),
    ('CO', 'Colorado'),
    ('CT', 'Connecticut'),
    ('DE', 'Delaware'),
    ('FL', 'Florida'),
    ('GA', 'Georgia'),
    ('HI', 'Hawaii'),
    ('ID', 'Idaho'),
    ('IL', 'Illinois'),
    ('IN', 'Indiana'),
    ('IA', 'Iowa'),
    ('KS', 'Kansas'),
    ('KY', 'Kentucky'),
    ('LA', 'Louisiana'),
    ('ME', 'Maine'),
    ('MD', 'Maryland'),
    ('MA', 'Massachusetts'),
    ('MI', 'Michigan'),
    ('MN', 'Minnesota'),
    ('MS', 'Mississippi'),
    ('MO', 'Missouri'),
    ('MT', 'Montana'),
    ('NE', 'Nebraska'),
    ('NV', 'Nevada'),
    ('NH', 'New Hampshire'),
    ('NJ', 'New Jersey'),
    ('NM', 'New Mexico'),
    ('NY', 'New York'),
    ('NC', 'North Carolina'),
    ('ND', 'North Dakota'),
    ('OH', 'Ohio'),
    ('OK', 'Oklahoma'),
    ('OR', 'Oregon'),
    ('PA', 'Pennsylvania'),
    ('RI', 'Rhode Island'),
    ('SC', 'South Carolina'),
    ('SD', 'South Dakota'),
    ('TN', 'Tennessee'),
    ('TX', 'Texas'),
    ('UT', 'Utah'),
    ('VT', 'Vermont'),
    ('VA', 'Virginia'),
    ('WA', 'Washington'),
    ('WV', 'West Virginia'),
    ('WI', 'Wisconsin'),
    ('WY', 'Wyoming');
INSERT INTO Amenities (`Name`) VALUES
    ('Microwave'),
    ('Jacuzzi'),
    ('Refrigerator'),
    ('Oven');
INSERT INTO Rooms
		(`RoomNumber`, `Type`, `AdaAccess`,`StandardOccupancy`, `MaxiumumOccupancy`,`Price`,`ExtraPerson`)
	VALUES
		(201,'Double',0,2,4,199.99,10),
		(202,'Double',1,2,4,174.99,10),
		(203,'Double',0,2,4,199.99,10),
		(204,'Double',1,2,4,174.99,10),
		(205,'Single', 0,2,2,174.99,0),
		(206,'Single',1,2,2,149.99,0),
		(207,'Single', 0,2,2,174.99,0),
		(208,'Single',1,2,2,149.99,0),
		(301,'Double',0,2,4,199.99,10),
		(302,'Double',1,2,4,174.99,10),
		(303,'Double',0,2,4,199.99,10),
		(304,'Double',1,2,4,174.99,10),
		(305,'Single',0,2,2,174.99,0),
		(306,'Single',1,2,2,149.99,0),
		(307,'Single', 0,2,2,174.99,0),
		(308,'Single',1,2,2,149.99,0),
		(401,'Suite',1,3,8,399.99,20),
		(402,'Suite',1,3,8,399.99,20);
INSERT INTO Guests (`FirstName`, `LastName`, `StreetAddress`, `City`, `StateAbbr`, `Zip`, `Phone`)
VALUES
	('Lars', 'Hall', '123 Green Street', 'Sebastian', 'FL', 32457, '(123) 456-789'),
    ('Mack', 'Simmer','379 Old Shore Street','Council Bluffs','IA',51501,'(291) 553-0508'),
	('Bettyann','Seery','750 Wintergreen Dr.','Wasilla','AK',99654,'(478) 277-9632'),
	('Duane','Cullison','9662 Foxrun Lane','Harlingen','TX',78552,'(308) 494-0198'),
	('Karie', 'Yang','9378 W. Augusta Ave.','West Deptford','NJ',08096,'(214) 730-0298'),
	('Aurore', 'Lipton', '762 Wild Rose Street', 'Saginaw','MI',48601,'(377) 507-0974'),
	('Zachery', 'Luechtefeld','7 Poplar Dr.', 'Arvada','CO',80003,'(814) 485-2615'),
	('Jeremiah', 'Pendergrass','70 Oakwood St.','Zion','IL',60099,'(279) 491-0960'),
	('Walter', 'Holaway', '7556 Arrowhead St.', 'Cumberland','RI',02864,'(446) 396-6785'),
	('Wilfred','Vise','77 WestSurrey Street','Oswego','NY',13126,'(834) 727-1001'),
	('Maritza', 'Tilton', '939 Linda Rd.','Burke','VA',22015,'(446) 351-6860'),
	('Joleen', 'Tison', '87 Queen St.', 'Drexel Hill', 'PA',19026,'(231) 893-2755');
    
insert into Reservations (`RoomNumber`,`GuestID`,`Adults`,`Children`,`StartDate`,`EndDate`,`Total`) values
	('308',2,'1','0','2023-02-02','2023-02-04','299.98'),
	('203',3,'2','1','2023-02-05','2023-02-10','999.95'),
	('305',4,'2','0','2023-02-22','2023-02-24','349.98'),
	('201',5,'2','2','2023-03-06','2023-03-07','199.99'),
	('307',1,'1','1','2023-03-17','2023-03-20','524.97'),
	('302',6,'3','0','2023-03-18','2023-03-23','924.95'),
	('202',7,'2','2','2023-03-29','2023-03-31','349.98'),
	('304',8,'2','0','2023-03-31','2023-04-05','874.95'),
	('301',9,'1','0','2023-04-09','2023-04-13','799.96'),
	('207',10,'1','1','2023-04-23','2023-04-24','174.99'),
	('401',11,'2','4','2023-05-30','2023-06-02','199.97'),
	('206',12,'2','0','2023-06-10','2023-06-14','599.96'),
	('208',12,'1','0','2023-06-10','2023-06-14','599.96'),
	('304',6,'3','0','2023-06-17','2023-06-18','184.99'),
	('205',1,'2','0','2023-06-28','2023-07-02','699.96'),
	('204',9,'3','1','2023-07-13','2023-07-14','184.99'),
	('401',10,'4','2','2023-07-18','2023-07-21','259.97'),
	('303',3,'2','1','2023-07-28','2023-07-29','199.99'),
	('305',3,'1','0','2023-08-30','2023-09-01','349.98'),
	('208',2,'2','0','2023-09-16','2023-09-17','149.99'),
	('203',5,'2','2','2023-09-13','2023-09-15','399.98'),
	('401',4,'2','2','2023-11-22','2023-11-25','199.97'),
	('206',2,'2','0','2023-11-22','2023-11-25','449.97'),
	('301',2,'2','2','2023-11-22','2023-11-25','599.97'),
	('302',11,'2','0','2023-12-24','2023-12-28','699.96');
    
    --     1) 'Microwave'
--     2) 'Jacuzzi'
--     3) 'Refrigerator'
--     4) 'Oven'
INSERT INTO RoomAmenities (`RoomNumber`, `AmenitiesID`)
VALUES
	(201, 1),
    (201, 2),
    (202, 3),
    (203, 1),
    (203, 2),
    (204, 3),
    (205, 1),
    (205, 2),
    (205, 3),
    (206, 1),
    (206, 3),
    (207, 1),
    (207, 2),
    (207, 3),
    (208, 1),
    (208, 3),
    (301, 1),
    (301, 2),
    (302, 3),
    (303, 1),
    (303, 2),
    (304, 3),
    (305, 1),
    (305, 2),
    (305, 3),
    (306, 1),
    (306, 3),
    (308, 1),
    (308, 3),
    (401, 1),
    (401, 3),
    (401, 4),
    (402, 1),
    (402, 3),
    (402, 4);