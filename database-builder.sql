-- Create database
CREATE DATABASE F1;

USE F1;

-- Create tables
Create Table Drivers(
    Race_Number SMALLINT PRIMARY KEY,
    Name VARCHAR(30),
    Birthday DATE,
    Team_ID SMALLINT,
    Total_Points DEC,
    Start_Date DATE,
    Contract_End DATE,
    Intragram_following BIGINT,
    FOREIGN KEY (Team_ID) REFERENCES Teams (Team_ID) ON DELETE SET NULL
    );
    
Create Table Teams(
    Team_ID SMALLINT PRIMARY KEY,
    Team_Name VARCHAR(50),
    Car_ID SMALLINT,
    Driver_1 SMALLINT ,
    Driver_2 SMALLINT,
    Total_Championships SMALLINT,
    Intragram_following INT,
    Sponsor_1 INT,
    Sponsor_2 INT,
    Sponsor_3 INT,
    Sponsor_4 INT,
    Sponsor_5 INT,
    FOREIGN KEY (Car_ID) REFERENCES Cars (Car_ID) ON DELETE SET NULL,
    FOREIGN KEY (Driver_1) REFERENCES Racers (Race_Number) ON DELETE SET NULL,
    FOREIGN KEY (Driver_2) REFERENCES Racers (Race_Number) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_1) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_2) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_3) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_4) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_5) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL
    );
    
CREATE TABLE Cars(
    Car_ID SMALLINT PRIMARY KEY AUTO_INCREMENT,
    Team_ID SMALLINT,
    Car_Name VARCHAR(50) NOT NULL,
    Engine_Name VARCHAR(50) NOT NULL,
    Fuel_Type VARCHAR(50) NOT NULL,
    FOREIGN KEY (TeamID) REFERENCES Teams (Team_ID) ON DELETE SET NULL
);

CREATE TABLE Finances(
    Team_ID SMALLINT NOT NULL,
    Budget INT,
    Spending INT,
    CFO VARCHAR(50),
    Revenue INT,
    FOREIGN KEY (Team_ID) REFERENCES Teams (Team_ID) ON DELETE CASCADE
);

CREATE TABLE Sponsors(
    Sponsors_ID SMALLINT PRIMARY KEY,
    Sponsor_Name INT,
    Team_ID SMALLINT,
    Funding INT,
    FOREIGN KEY (Team_ID) REFERENCES Teams(Team_ID) on Delete set null
);

CREATE TABLE Circuits(
    Circuit_ID SMALLINT PRIMARY KEY,
    Grand_Prix SMALLINT
    Location INT,
    Country SMALLINT,
    Laps SMALLINT,
    Length_of_Track INT,
    Time_Zone SMALLINT,
    Seating_Number INT
);

-- Insert data into tables
INSERT INTO Drivers (Race_Number, Name, Birthday, Team_ID, Total_Points, Start_Date, Contract_End, Instagram_following)
Values
(10, "Pierre Gasly", '1996-02-07', 1, 436.0, '2017-10-01', '2027-01-01', 5400000),
(7, "Jack Doohan", '2003-01-20', 1, 0.0, '2024-12-08', '2025-04-21', 441000),
(18, "Lance Stroll", '1998-10-29', 2, 302.0, '2017-03-08','2027-01-01', 1400000),
(14, "Fernando Alonso", '1991-07-29', 2, 2337.0, '2001-03-04', '2027-01-01', 7300000),
(16, "Charles Leclerc", '1997-10-16', 3, 1438.0, '2018-03-24', '2029-01-01', 17900000),
(44, "Lewis Hamilton", '1985-01-07', 3, 4871.5, '2007-03-18', '2027-01-01', 39300000),
(31, "Esteban Ocon", '1996-09-17', 4, 455.0, '2016-08-28', '2028-01-01', 2500000),
(87, "Oliver Bearman", '2005-05-08', 4, 11.0, '2024-03-09', '2027-01-01', 2500000),
(27, "Nico Hulkenberg", '1987-08-19', 5, 25.0, '2010-03-14', '2027-01-01', 2100000),
(5, "Gabriel Borotoleto", '2004-10-14', 5, 0.0, '2025-03-15', '2027-01-01', 1100000),
(81, "Oscar Piastri", '2001-04-06', 6, 423.0, '2023-03-05', '2028-01-01', 3500000),
(4, "Lando Norris", '1999-11-13', 6, 1051.0, '2019-03-16', '2028-01-01', 9700000),
(63, "George Russell", '1998-02-15', 7, 749.0, '2019-03-16', '2026-01-01', 6300000),
(12, "Andrea Kimi Antonelli", '2006-08-25', 7, 22.0, '2025-03-15', '2026-01-01', 1700000),
(6, "Isack Habjar", '2004-09-28', 8, 0.0, '2025-03-15', '2026-01-01', 339000),
(30, "Liam Lawson", '2002-02-11', 8, 6.0, '2023-08-27', '2026-01-01', 100000),
(1, "Max Versteppen", '1997-09-30', 9, 3059.5, '2015-03-15', '2029-01-01', 13800000),
(22, "Yuki Tusunoda", '2000-05-11', 9, 94.0, '2021-03-28', '2026-01-01', 2800000),
(23, "Alexander Albon", '1996-03-23', 10, 256.0, '2019-03-16', '2027-01-01', 3200000),
(55, "Carlos Sainz", '1994-07-01', 10, 1273.5, '2015-03-15', '2027-01-01', 11200000)
;   

INSERT INTO Teams (Team_ID, Team_Name, Car_ID, Driver_1, Driver_2, Total_Championships, Intragram_following, Sponsor_1, Sponsor_2, Sponsor_3, Sponsor_4, Sponsor_5 )
Values
(1, "BWT Alpine Formula One Team", 1, 10, 7, 0, 4200000, NULL, NULL, NULL, NULL, NULL),
(2, "Aston Martin Aramco Formula One Team", 2, 18, 14, 0, 4800000, NULL, NULL, NULL, NULL, NULL),
(3, "Scuderia Ferrari HP Formula One Team", 3, 16, 44, 16, 17900000, NULL, NULL, NULL, NULL, NULL),
(4, "MoneyGram Haas Formula One Team", 4, 31, 87, 0, 3100000, NULL, NULL, NULL, NULL, NULL),
(5, "Stake Formula One Team Kick Sauber", 5, 27, 5, 0, 2800000, NULL, NULL, NULL, NULL, NULL),
(6, "McLaren Formula One Team", 6, 81, 4, 9, 14700000, NULL, NULL, NULL, NULL, NULL),
(7, "Mercedes-AMG PETRONAS Formula One Team", 7, 63, 12, 8, 14100000, NULL, NULL, NULL, NULL, NULL),
(8, "Visa Cash App Racing Bulls Formula One Team", 8, 6, 30, 0, 3300000, NULL, NULL, NULL, NULL, NULL),
(9, "Oracle Red Bull Racing", 9, 1, 22, 6, 12900000, NULL, NULL, NULL, NULL, NULL),
(10, "Atlassian Williams Racing", 10, 23, 55, 9, 4300000, NULL, NULL, NULL, NULL, NULL)
;

INSERT INTO Cars (Team_ID,Car_Name,Engine_Name,Fuel_Type)
VALUES
(1,"Alpine A525","Renault E-Tech RE25","Eni"),
(2,"AMR25","0","0"),
(3,"SF-25","0","0"),
(4,"VF-25","0","0"),
(5,"Kick Sauber C44","0","0"),
(6,"MCL39","0","0"),
(7,"F1 W16","0","0"),
(8,"VCARB02","0","0"),
(9,"RB21","0","0"),
(10,"FW47","0","0")
;

--Finances

INSERT INTO Circuits (Circuit_ID, Grand_Prix, Location, Country, Laps, Length_of_Track, Time_Zone,Seating_Number)
Values(
(1,'Australian GP', 'Albert Park Circuit', 'Australia', 58, '5.278 Kilometers', 'AEST', 125000),
(2,'Chinese GP', 'Shanghai International Circuit', 'China', 56, '5.451 Kilometers', 'UTC+8', 200000),
(3,'Japanese GP', 'Suzuka Circuit, Japan', 53, '5.807 Kilometers', 'JST', 155000),
(4,'Bahrain GP', 'Bahrain International Circuit', 'Bahrain', 57, '5.412 Kilometers', 'UTC+03:00', 70000),
(5,'Saudi Arabian GP', 'Jeddah Street Circuit', 'Saudi Arabia', 50, '6.174 Kilometers', 'UTC+03:00', 50000),
(6,'Miami GP', 'Miami International Autodrome', 'United States', 57, '5.412 Kilometers', 'UTC-5', 65000),
(7,'Imola GP', 'Autodromo Enzo E dino Ferrari', 'Italy', 63, '4.909 Kilometers' 'CET', 78000),
(8,'Monaco GP', 'Circuit De Monaco', 'Monaco', 78, '3.337 Kilometers', 'CET', 37000),
(9,'Spanish GP', 'Circuit De Catalunya', 'Spain', 66, '4.675 Kilometers', 'CET', 140700),
(10,'Canadian GP', 'Circuit Gilles Villeneuve', 'Canada', 70, '4.361 Kilometers', 'EDT', 100000),
(11,'Austrian GP', 'Red Bull Ring', 'Austria', 71, '4.318 Kilometers', 'CET', 105000),
(12,'British GP', 'Circuit Silverstone', 'Britain', 52, '5.891 Kilometers', 'GMT', 164000),
(13,'Belgian GP', 'Spa-Francorchamps', 'Belgum', 44, '7.004 Kilometers', 'CET', 70000),
(14,'Hungarian GP', 'Hungaroring', 'Hungary', 70, '4.381 Kilometers', 'CET', 70000),
(15,'Dutch GP', 'Circuit Zandvoort', 'Netherlands', 72, '4.259 Kilometers', 'CET', 105000),
(16,'Italian GP', 'Autodromo Nazionale Monza', 'Italy', 53, '5.793 Kilometers', 'CET', 118865),
(17,'Azerbaijan GP', 'Baku City Circuit', 'Azerbaijan', 51, '6.003 Kilometers', 'UTC+04:00', 18500),
(18,'Singapore GP', 'Marina Bay Street circuit', 'Singapore', 61, '5.063 Kilometers', 'SST', 90000),
(19,'United States GP', 'Circuit of the Americas', 'United States', 56, '5.513 Kilometers', 'UTC-6', 120000),
(20,'Mexican GP', 'Autodromo Hermanos Rodriguez', 'Mexico', 71, '4.304 Kilometers', 'UTC-6', 110000),
(21,'Brazilian GP', 'Autodromo Jose Carlose Pace Interlagos', 'Brazil', 71, '4.309 Kilometers', 'UTC-03:00', 60000),
(22,'Las Vegas GP', 'Las Vegas Street Circuit', 'United States', 50, '6.120 Kilometers', 'UTC-8', 100000),
(23,'Qatar GP', 'Losail International Circuit', 'Qatar', 57, '5.380 Kilometers', 'UTC+03:00', 52000),
(24,'Abu Dhabi GP', 'Yas Marina Circuit', 'United Arab Emirates', 58, '5.281 Kilometers', 'UTC+04:00', 60000)
);

--Sponsors

