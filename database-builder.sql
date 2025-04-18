-- Create database
CREATE DATABASE F1;

USE F1;

-- Create tables
CREATE TABLE Cars(
    Car_ID SMALLINT PRIMARY KEY,
    Car_Name VARCHAR(50) NOT NULL,
    Car_Length INT NOT NULL,
    Car_Height INT NOT NULL,
    Car_Primary_Color VARCHAR(50) NOT NULL,
    Car_Secondary_Color VARCHAR(50) NOT NULL
);

Create Table Drivers(
    Race_Number SMALLINT PRIMARY KEY,
    Name VARCHAR(30),
    Birthday DATE,
    Total_Points DECIMAL(10,1),
    Start_Date DATE,
    Contract_End DATE,
    Intragram_following BIGINT
    );
    

CREATE TABLE Sponsors(
    Sponsor_ID SMALLINT PRIMARY KEY,
    Sponsor_Name VARCHAR(50),
    Funding INT
);

CREATE TABLE Finances(
    Finance_ID SMALLINT PRIMARY KEY,
    Team_Principal VARCHAR(25),
    Valuation BIGINT,
    Driver_Salary_Totals BIGINT,
    Revenue_2023 BIGINT
);

Create Table Teams(
    Team_ID SMALLINT PRIMARY KEY,
    Team_Name VARCHAR(50),
    Total_Championships SMALLINT,
    Intragram_following INT,
    Car_ID SMALLINT,
    Driver_1 SMALLINT,
    Driver_2 SMALLINT,
    Sponsor_1 SMALLINT,
    Sponsor_2 SMALLINT,
    Sponsor_3 SMALLINT,
    Sponsor_4 SMALLINT,
    Sponsor_5 SMALLINT,
    Finance_ID SMALLINT, 
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID) ON DELETE CASCADE,
    FOREIGN KEY (Driver_1) REFERENCES Drivers(Race_Number) ON DELETE CASCADE,
    FOREIGN KEY (Driver_1) REFERENCES Drivers(Race_Number) ON DELETE CASCADE,
    FOREIGN KEY (Sponsor_1) REFERENCES Sponsors(Sponsor_ID) ON DELETE CASCADE,
    FOREIGN KEY (Sponsor_2) REFERENCES Sponsors(Sponsor_ID) ON DELETE CASCADE,
    FOREIGN KEY (Sponsor_3) REFERENCES Sponsors(Sponsor_ID) ON DELETE CASCADE,
    FOREIGN KEY (Sponsor_4) REFERENCES Sponsors(Sponsor_ID) ON DELETE CASCADE,
    FOREIGN KEY (Sponsor_5) REFERENCES Sponsors(Sponsor_ID) ON DELETE CASCADE,
    FOREIGN KEY (Finance_ID) REFERENCES Finances(Finance_ID) ON DELETE CASCADE
    );


CREATE TABLE Circuits(
    Circuit_ID SMALLINT PRIMARY KEY,
    Grand_Prix VARCHAR(50),
    Location VARCHAR(50),
    Country VARCHAR(50),
    LAPS SMALLINT,
    Length_of_Track VARCHAR(50),
    Time_Zone VARCHAR(50),
    Seating_Number INT
);

-- Insert data into tables 
INSERT INTO Cars (Car_ID,Car_Name,Car_Length,Car_Height,Car_Primary_Color,Car_Secondary_Color)
VALUES
(1,"Alpine A525",5620,950,"Blue","Pink"),
(2,"AMR25",5600,950,"Green","Black"),
(3,"SF-25",5580,950,"Red","Black"),
(4,"VF-25",5688,950,"White","Black"),
(5,"Kick Sauber C44",5640,970,"Neon Green","Black"),
(6,"MCL39",5630,900,"Orange","Black"),
(7,"F1 W16",5773,950,"Black","Teal"),
(8,"VCARB02",5000,950,"White","Red"),
(9,"RB21",5000,950,"Black","Yellow"),
(10,"FW47",5000,950,"Blue","Black")
;

INSERT INTO Drivers (Race_Number, Name, Birthday, Total_Points, Start_Date, Contract_End, Intragram_following)
Values
(10, "Pierre Gasly", '1996-02-07', 436.0, '2017-10-01', '2027-01-01', 5400000),
(7, "Jack Doohan", '2003-01-20', 0.0, '2024-12-08', '2025-04-21', 441000),
(18, "Lance Stroll", '1998-10-29', 302.0, '2017-03-08','2027-01-01', 1400000),
(14, "Fernando Alonso", '1991-07-29', 2337.0, '2001-03-04', '2027-01-01', 7300000),
(16, "Charles Leclerc", '1997-10-16', 1438.0, '2018-03-24', '2029-01-01', 17900000),
(44, "Lewis Hamilton", '1985-01-07', 4871.5, '2007-03-18', '2027-01-01', 39300000),
(31, "Esteban Ocon", '1996-09-17', 455.0, '2016-08-28', '2028-01-01', 2500000),
(87, "Oliver Bearman", '2005-05-08', 11.0, '2024-03-09', '2027-01-01', 2500000),
(27, "Nico Hulkenberg", '1987-08-19', 25.0, '2010-03-14', '2027-01-01', 2100000),
(5, "Gabriel Borotoleto", '2004-10-14', 0.0, '2025-03-15', '2027-01-01', 1100000),
(81, "Oscar Piastri", '2001-04-06', 423.0, '2023-03-05', '2028-01-01', 3500000),
(4, "Lando Norris", '1999-11-13', 1051.0, '2019-03-16', '2028-01-01', 9700000),
(63, "George Russell", '1998-02-15', 749.0, '2019-03-16', '2026-01-01', 6300000),
(12, "Andrea Kimi Antonelli", '2006-08-25', 22.0, '2025-03-15', '2026-01-01', 1700000),
(6, "Isack Habjar", '2004-09-28', 0.0, '2025-03-15', '2026-01-01', 339000),
(30, "Liam Lawson", '2002-02-11', 6.0, '2023-08-27', '2026-01-01', 100000),
(1, "Max Versteppen", '1997-09-30', 3059.5, '2015-03-15', '2029-01-01', 13800000),
(22, "Yuki Tusunoda", '2000-05-11', 94.0, '2021-03-28', '2026-01-01', 2800000),
(23, "Alexander Albon", '1996-03-23', 256.0, '2019-03-16', '2027-01-01', 3200000),
(55, "Carlos Sainz", '1994-07-01', 1273.5, '2015-03-15', '2027-01-01', 11200000)
;   

INSERT INTO Sponsors(Sponsor_ID, Sponsor_Name, Funding)
VALUES
(1, "OKX", 25000000),
(2, "British American Tobacco", 30000000),
(3, "DP World", NULL),
(4, "Dell", 15000000),
(5, "Darktrace", 10000000),
(6, "Petronas", 65090000),
(7, "Ineos", NULL),
(8, "IWC", NULL),
(9, "Snapdragon", NULL),
(10, "TeamViewer", NULL),
(11, "Oracle", 300000000),
(12, "Bybit", 150000000),
(13, "Honda", 20000000),
(14, "ExxonMobil", NULL),
(15, "TAG Heuer", 150000000),
(16, "Santander", 60000000),
(17, "Shell", 27000000),
(18, "Virtual Gaming Worlds", NULL),
(19, "Genesys", 110000000),
(20, "HCL Technologies", NULL),
(21, "Duracell", NULL),
(22, "Gulf Oil", NULL),
(23, "Kraken", NULL),
(24, "PPG Industries", NULL),
(25, "Terra Virtua", NULL),
(26, "Moneygram", 20000000),
(27, "Haas Automation", NULL),
(28, "Palm Angels", NULL),
(29, "Schuberth", NULL),
(30, "Opensea", NULL),
(31, "Saudi Aramco", 150000000),
(32, "Cognizant", 35000000),
(33, "Citi", NULL),
(34, "Crypto.com", 100000000),
(35, "JCB", NULL),
(36, "Visa", 20000000),
(37, "Cash App", 20000000),
(38, "Mobil", NULL),
(39, "ExxonMobil", NULL),
(40, "Hugo", NULL),
(41, "Stake.com", NULL),
(42, "Alfa Romeo", 99400000),
(43, "AMX", NULL),
(44, "PUMA", NULL),
(45, "Globeair", NULL),
(46, "BWT", NULL),
(47, "Castrol", 218000000),
(48, "Binance", NULL),
(49, "Microsoft", NULL),
(50, "Kappa", NULL)
;

INSERT INTO Finances (Finance_ID,Team_Principal,Valuation,Driver_Salary_Totals,Revenue_2023)
Values
(1,'Oliver Oakes',1500000000,11000000,311000000),
(2,'Andy Cowell',2070000000,23000000,304000000),
(3,'Fred Vasseur',4780000000,94000000,619000000),
(4,'Ayao Komatsu',1020000000,8000000,184000000),
(5,'Alessandro Alunni Bravi',1200000000,9000000,189000000),
(6,'Andrea Stella',2650000000,26000000,536000000),
(7,'Toto Wolff',3940000000,17000000,6000000),
(8,'Laurent Mekies',1220000000,3000000,226000000),
(9,'Christian Horner',3500000000,66000000,555000000),
(10,'James Vowles',1240000000,23000000,158000000)
;

INSERT INTO Teams (Team_ID, Team_Name, Total_Championships, Intragram_following, Car_ID, Driver_1, Driver_2, Sponsor_1, Sponsor_2, Sponsor_3, Sponsor_4, Sponsor_5, Finance_ID)
Values
(1, "BWT Alpine Formula One Team", 0, 4200000, 1, 10, 7, 46, 47, 48, 49, 50, 1),
(2, "Aston Martin Aramco Formula One Team", 0, 4800000, 2, 14, 18, 31, 32, 33, 34, 35, 2),
(3, "Scuderia Ferrari HP Formula One Team", 16, 17900000, 3, 44, 16, 16, 17, 18, 19, 20, 3),
(4, "MoneyGram Haas Formula One Team", 0, 3100000, 4, 31, 87, 26, 27, 28, 29, 30, 4),
(5, "Stake Formula One Team Kick Sauber", 0, 2800000, 5, 27, 5, 41, 42, 43, 44, 45, 5),
(6, "McLaren Formula One Team", 9, 14700000, 6, 81, 4, 1, 2, 3, 4, 5, 6),
(7, "Mercedes-AMG PETRONAS Formula One Team", 8, 14100000, 7, 63, 12, 6, 7, 8, 9, 10, 7),
(8, "Visa Cash App Racing Bulls Formula One Team", 0, 3300000, 8, 6, 30, 36, 37, 38, 39, 40, 8),
(9, "Oracle Red Bull Racing", 6, 12900000, 9, 1, 22, 11, 12, 13, 14, 15, 9),
(10, "Atlassian Williams Racing", 9, 4300000, 10, 23, 55, 21, 22, 23, 24, 25, 10)
;

INSERT INTO Circuits (Circuit_ID, Grand_Prix, Location, Country, Laps, Length_of_Track, Time_Zone, Seating_Number)
Values
(1,"Australian GP", "Albert Park Circuit", "Australia", 58, "5.278 Kilometers", "AEST", 125000),
(2,"Chinese GP", "Shanghai International Circuit", "China", 56, "5.451 Kilometers", "UTC+8", 200000),
(3,"Japanese GP", "Suzuka Circuit", "Japan", 53, "5.807 Kilometers", "JST", 155000),
(4,"Bahrain GP", "Bahrain International Circuit", "Bahrain", 57, "5.412 Kilometers", "UTC+03:00", 70000),
(5,"Saudi Arabian GP", "Jeddah Street Circuit", "Saudi Arabia", 50, "6.174 Kilometers", "UTC+03:00", 50000),
(6,"Miami GP", "Miami International Autodrome", "United States", 57, "5.412 Kilometers", "UTC-5", 65000),
(7,"Imola GP", "Autodromo Enzo E dino Ferrari", "Italy", 63, "4.909 Kilometers", "CET", 78000),
(8,"Monaco GP", "Circuit De Monaco", "Monaco", 78, "3.337 Kilometers", "CET", 37000),
(9,"Spanish GP", "Circuit De Catalunya", "Spain", 66, "4.675 Kilometers", "CET", 140700),
(10,"Canadian GP", "Circuit Gilles Villeneuve", "Canada", 70, "4.361 Kilometers", "EDT", 100000),
(11,"Austrian GP", "Red Bull Ring", "Austria", 71, "4.318 Kilometers", "CET", 105000),
(12,"British GP", "Circuit Silverstone", "Britain", 52, "5.891 Kilometers", "GMT", 164000),
(13,"Belgian GP", "Spa-Francorchamps", "Belgum", 44, "7.004 Kilometers", "CET", 70000),
(14,"Hungarian GP", "Hungaroring", "Hungary", 70, "4.381 Kilometers", "CET", 70000),
(15,"Dutch GP", "Circuit Zandvoort", "Netherlands", 72, "4.259 Kilometers", "CET", 105000),
(16,"Italian GP", "Autodromo Nazionale Monza", "Italy", 53, "5.793 Kilometers", "CET", 118865),
(17,"Azerbaijan GP", "Baku City Circuit", "Azerbaijan", 51, "6.003 Kilometers", "UTC+04:00", 18500),
(18,"Singapore GP", "Marina Bay Street circuit", "Singapore", 61, "5.063 Kilometers", "SST", 90000),
(19,"United States GP", "Circuit of the Americas", "United States", 56, "5.513 Kilometers", "UTC-6", 120000),
(20,"Mexican GP", "Autodromo Hermanos Rodriguez", "Mexico", 71, "4.304 Kilometers", "UTC-6", 110000),
(21,"Brazilian GP", "Autodromo Jose Carlose Pace Interlagos", "Brazil", 71, "4.309 Kilometers", "UTC-03:00", 60000),
(22,"Las Vegas GP", "Las Vegas Street Circuit", "United States", 50, "6.120 Kilometers", "UTC-8", 100000),
(23,"Qatar GP", "Losail International Circuit", "Qatar", 57, "5.380 Kilometers", "UTC+03:00", 52000),
(24,"Abu Dhabi GP", "Yas Marina Circuit", "United Arab Emirates", 58, "5.281 Kilometers", "UTC+04:00", 60000)
;




