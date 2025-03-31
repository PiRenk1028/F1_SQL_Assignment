-- Create database
CREATE DATABASE F1;

USE F1;

-- Create tables
Create Table Racers(
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
    Racer_1 SMALLINT ,
    Racer_2 SMALLINT,
    Total_Championships SMALLINT,
    Intragram_following INT,
    Sponsor_1 INT,
    Sponsor_2 INT,
    Sponsor_3 INT,
    Sponsor_4 INT,
    Sponsor_5 INT,
    FOREIGN KEY (Car_ID) REFERENCES Cars (Car_ID) ON DELETE SET NULL,
    FOREIGN KEY (Racer_1) REFERENCES Racers (Race_Number) ON DELETE SET NULL,
    FOREIGN KEY (Racer_2) REFERENCES Racers (Race_Number) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_1) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_2) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_3) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_4) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
    FOREIGN KEY (Sponsor_5) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL
    );
    
CREATE TABLE Cars(
    Car_ID SMALLINT PRIMARY KEY AUTO_INCREMENT,
    Team_ID SMALLINT,
    Engine_Name VARCHAR(50) NOT NULL,
    Chassis_Name VARCHAR(50) NOT NULL, 
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

-- Insert data into tables
INSERT INTO Racers (Race_Number, Name, Birthday, Team_ID, Total_Points, Start_Date, Contract_End, Instagram_following)
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

INSERT INTO Teams (Team_ID, Team_Name, Car_ID, Racer_1, Racer_2, Total_Championships, Intragram_following, Sponsor_1, Sponsor_2, Sponsor_3, Sponsor_4, Sponsor_5 )
Values
(1, "BWT Alpine Formula One Team", NULL, 10, 7, 0, 4200000, NULL, NULL, NULL, NULL, NULL),
(2, "Aston Martin Aramco Formula One Team", NULL, 18, 14, 0, 4800000, NULL, NULL, NULL, NULL, NULL),
(3, "Scuderia Ferrari HP Formula One Team", NULL, 16, 44, 16, 17900000, NULL, NULL, NULL, NULL, NULL),
(4, "MoneyGram Haas Formula One Team", NULL, 31, 87, 0, 3100000, NULL, NULL, NULL, NULL, NULL),
(5, "Stake Formula One Team Kick Sauber", NULL, 27, 5, 0, 2800000, NULL, NULL, NULL, NULL, NULL),
(6, "McLaren Formula One Team", NULL, 81, 4, 9, 14700000, NULL, NULL, NULL, NULL, NULL),
(7, "Mercedes-AMG PETRONAS Formula One Team", NULL, 63, 12, 8, 14100000, NULL, NULL, NULL, NULL, NULL),
(8, "Visa Cash App Racing Bulls Formula One Team", NULL, 6, 30, 0, 3300000, NULL, NULL, NULL, NULL, NULL),
(9, "Oracle Red Bull Racing", NULL, 1, 22, 6, 12900000, NULL, NULL, NULL, NULL, NULL),
(10, "Atlassian Williams Racing", NULL, 23, 55, 9, 4300000, NULL, NULL, NULL, NULL, NULL)
;




