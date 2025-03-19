--Create database
CREATE DATABASE F1;

USE F1;

--Create tables
Create Table Racers(
	Race_Number SMALLINT PRIMARY KEY,
	Name VARCHAR(50),
    Birthday DATE,
    Team_ID SMALLINT,
    Car_ID SMALLINT,
    Total_Points SMALLINT,
    Start_Date DATE,
    Contract_End DATE,
    Intragram_following INT,
    FOREIGN KEY (Car_ID) REFERENCES Cars (Car_ID) ON DELETE SET NULL,
    FOREIGN KEY (Team_ID) REFERENCES Teams (Team_ID) ON DELETE SET NULL
    );
    
Create Table Team(
	Team_ID SMALLINT PRIMARY KEY,
	Racer_1 SMALLINT ,
    Racer_2 SMALLINT,
    Total_Championships SMALLINT,
    Intragram_following INT,
    Sponsor_1 INT,
    Sponsor_2 INT,
    Sponsor_3 INT,
    Sponsor_4 INT,
    Sponsor_5 INT,
    FOREIGN KEY (Racer_1) REFERENCES Racers (Race_Number) ON DELETE SET NULL,
    FOREIGN KEY (Racer_2) REFERENCES Racers (Race_Number) ON DELETE SET NULL,
	FOREIGN KEY (Sponsor_1) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
	FOREIGN KEY (Sponsor_2) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
	FOREIGN KEY (Sponsor_3) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
	FOREIGN KEY (Sponsor_4) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL,
	FOREIGN KEY (Sponsor_5) REFERENCES Sponsors (Sponsor_ID) ON DELETE SET NULL
    );





--Insert data into tables
