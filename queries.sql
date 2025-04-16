USE F1;

SELECT *
FROM F1;

-- Ryker Queries 


-- Louis Query 
SELECT Race_Number, Name, Total_Points
FROM Drivers 
WHERE NOT Total_Points = 0.0
Order By Total_Points DESC;

-- Aylssa Query 
