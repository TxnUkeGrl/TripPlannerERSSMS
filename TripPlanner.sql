CREATE DATABASE TripPlanner;

USE TripPlanner;

CREATE TABLE [User] 
	(FullName CHAR(100) NOT NULL, AddressUser NVARCHAR, PhoneNumberUser NVARCHAR NOT NULL, DOB DATE NOT NULL, 
	PRIMARY KEY (FullName));

CREATE TABLE Passport 
	(NumberPassport NVARCHAR NOT NULL, ExpirationDate DATE NOT NULL, AddressPassport NTEXT, PassportName CHAR(100) NOT NULL,
	PRIMARY KEY (PassportName), FOREIGN KEY (PassportName) REFERENCES [User](FullName));

CREATE TABLE Trip 
	(NickName NVARCHAR NOT NULL, Budget DECIMAL(10, 2) NOT NULL, StartingDestination NTEXT NOT NULL, 
	EndingDestination NTEXT NOT NULL, TravelMode NTEXT NOT NULL, StartDate DATE NOT NULL, EndDate DATE NOT NULL, 
	GuestName CHAR(100) NOT NULL,
	PRIMARY KEY (GuestName), FOREIGN KEY (GuestName) REFERENCES [User](FullName));

CREATE TABLE Hotel 
	(NameHotel NVARCHAR NOT NULL, InDate DATE NOT NULL, OutDate DATE NOT NULL, NightlyRate DECIMAL(10, 2) NOT NULL, 
	AddressHotel NVARCHAR NOT NULL, PhoneNumberHotel NVARCHAR NOT NULL, PartyName CHAR(100) NOT NULL,
	PRIMARY KEY (PartyName), FOREIGN KEY (PartyName) REFERENCES [User](FullName));

--DROP TABLE [User], Passport, Trip, Hotel;
