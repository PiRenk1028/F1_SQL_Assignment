USE F1;

SELECT *
FROM F1;

-- Ryker Queries 
SELECT Team_Name, Car_Name, Car_Primary_Color, Car_Secondary_Color
FROM teams
JOIN cars ON teams.Car_ID = cars.Car_ID
ORDER BY Team_ID;

SELECT CONCAT(c1.Car_Name, ' and ', c2.Car_Name) as "Matching Car Names", c1.Car_Primary_Color as "Primary Color"
FROM cars c1
JOIN cars c2 ON c1.Car_Primary_Color = c2.Car_Primary_Color AND c1.Car_ID != c2.Car_ID
LIMIT 3;

SELECT CAST(AVG(DRIVER_SALARY_TOTALS) AS DECIMAL(10,2)) AS "Average Driver Salary Totals"
FROM finances;

-- Louis Query 
SELECT Race_Number, Name, Total_Points
FROM Drivers 
WHERE NOT Total_Points = 0.0
Order By Total_Points DESC;

-- Aylssa Query 
