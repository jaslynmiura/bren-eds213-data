-- SQL Problem 3

-- Create a temporary table call `Averages`.
CREATE TEMP TABLE Averages AS
-- Select Nest_ID and calculate the average volume of each nest then populate as a `Avg_volume` column.
    SELECT Nest_ID, AVG((3.14/6) * (Width * Width) * Length) AS Avg_volume
-- `Width` comes from `Bird_eggs`.
        FROM Bird_eggs
-- Then group by `Nest_ID`
        GROUP BY Nest_ID;

-- Select Scientific_name and the max egg volume per species.
SELECT Scientific_name, MAX(Avg_volume) AS Max_avg
-- Nest data comes from `Bird_nests`.
    FROM Bird_nests 
-- Join `Averages` by matching on `Nest_ID`.
        JOIN Averages USING (Nest_ID)
-- Join `Species` by defining the matching column.
        JOIN Species ON Species.Code = Bird_nests.Species 
-- Group by Scientific_name.
    GROUP BY Scientific_name
-- Order results from highest egg volume to lowest.
    ORDER BY Max_avg DESC;