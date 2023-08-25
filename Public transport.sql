--CREATE DATABASE PublicTransport
--ON PRIMARY
--(NAME = PublicTransport	,
--FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PublicTransport.mdf',
--SIZE = 5120KB,
--MAXSIZE = UNLIMITED,
--FILEGROWTH = 1024KB)
--LOG ON
--(NAME = PublicTransport_log,
--FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PublicTransport_log.ldf',
--SIZE = 2048KB,
--MAXSIZE = 2048GB,
--FILEGROWTH = 10%)
--GO

USE PublicTransport
GO

CREATE TABLE Employees
(
	ID INT NOT NULL PRIMARY KEY,
	FIO NVARCHAR(50),
	Age INT,
	Type NVARCHAR(15)
)

CREATE TABLE Transport
(
	ID INT NOT NULL PRIMARY KEY,
	Number NVARCHAR(5),
	Type NVARCHAR(15),
	Route NVARCHAR(100),
	EmployeeID INT,
	FOREIGN KEY (EmployeeID) REFERENCES Employees (ID)
)

INSERT INTO Employees
	(ID, FIO, Age, Type)
 VALUES
	(001, 'Moiseenkov Danila', '30', 'Driver'),
	(002, 'Roman Uskov', '31', 'Driver'),
	(003, 'Elizaveta Zaitseva', '42', 'Conductor'),
	(004, 'Ksenia Melnikova', '38', 'Driver'),
	(005, 'Ivanova Sofia', '28', 'Driver'),
	(006, 'Prokopenko Alina', '43', 'Conductor'),
	(007, 'Himich Elena', '49', 'Driver'),
	(008, 'Maxim Smirnov', '51', 'Conductor'),
	(009, 'Sokolov Ilya', '35', 'Driver'),
	(010, 'Lebedeva Ekaterina', '30', 'Driver')

INSERT INTO Transport
	(ID, Number, Type, Route, EmployeeID)
 VALUES
	(001, 'c163', 'Bus', 'Varshavskaya Metro Station - Vvedenskogo Street', 001),
	(002, 't76', 'Bus', 'Kholmogorskaya Street - VDNKh Metro station', 010),
	(003, 't73', 'Bus', 'VDNKh (main entrance) - 6th microdistrict of Bibireva', 008),
	(004, '366', 'Bus', 'Gerasim Kurin Street - Cinema House', 004),
	(005, '195', 'Bus', 'VDNKh (main entrance) - Rusanova Passage, 2', 007),
	(006, 'c17', 'Bus', 'Metro Innovative - MCD Ochakovo', 006),
	(007, 'e70', 'Bus', '138th quarter of Vykhin - Метро Китай-город', 005),
	(008, '195', 'Bus', 'VDNKh (main entrance) - Rusanova Passage, 2', 003),
	(009, 't73', 'Bus', 'VDNKh (main entrance) - 6th microdistrict of Bibireva', 009),
	(010, 'c163', 'Bus', 'Varshavskaya Metro Station - Vvedenskogo Street', 002)