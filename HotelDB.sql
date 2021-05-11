DROP DATABASE IF EXISTS Hotel;
create database Hotel;
use Hotel;
CREATE TABLE Rooms (
	RoomNumber SMALLINT PRIMARY KEY NOT NULL,
    Type VARCHAR(6) NOT NULL,
    StandardOccupancy TINYINT NOT NULL,
    MaxiumumOccupancy TINYINT NOT NULL,
    AdaAccess BOOL,
    Price DECIMAL(6,2) NOT NULL,
    ExtraPerson DECIMAL(6,2) NOT NULL
);
CREATE TABLE Amenities (
	AmenitiesID SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Name VARCHAR(30) NOT NULL
);
CREATE TABLE RoomAmenities (
	RoomNumber SMALLINT NOT NULL,
    AmenitiesID SMALLINT NOT NULL,
    PRIMARY KEY CLUSTERED ( RoomNumber, AmenitiesID ),
    FOREIGN KEY fk_RoomAmenities_RoomNumber(RoomNumber)
		REFERENCES Rooms(RoomNumber),
	FOREIGN KEY fk_RoomAmenities_AmenitiesID(AmenitiesID)
		REFERENCES Amenities(AmenitiesID)    
);
CREATE TABLE State (
	StateAbbr CHAR(2) PRIMARY KEY NOT NULL,
    Name VARCHAR(30)    
);
CREATE TABLE Guests (
	GuestID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(45) NOT NULL,
	LastName VARCHAR(45) NOT NULL,
	StreetAddress VARCHAR(45) NOT NULL,
    City VARCHAR(45) NOT NULL,
    StateAbbr CHAR(2) NOT NULL,
	Zip MEDIUMINT NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    FOREIGN KEY fk_Guests_StateAbbr(StateAbbr)
		REFERENCES State(StateAbbr)
);
CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    GuestID INT NOT NULL,
    RoomNumber SMALLINT NOT NULL,
    Adults TINYINT NOT NULL,
    Children TINYINT NOT NULL,
    StartDate Date NOT NULL,
    EndDate Date NOT NULL,
    Total DECIMAL(12,2) NOT NULL, 
    FOREIGN KEY fk_Reservations_GuestID(GuestID)
		REFERENCES Guests(GuestID),
	FOREIGN KEY fk_Reservations_RoomNumber(RoomNumber)
		REFERENCES Rooms(RoomNumber)
);