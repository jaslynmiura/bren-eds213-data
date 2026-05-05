-- PART 1 --

SELECT Site_name, MAX(Area) FROM Site;

-- This query is incorrect since we're finding the maximum value of the `Area` column, which aggregates all the values in the column and will display one value
-- But all the names in `Site_name` are being displayed and is unable to be matched to the maximum `Area` value.

-- PART 2 --

-- Select the `Site_name` and `Area` column from the Site table.
SELECT Site_name, Area, FROM Site 
-- Order the table by the `Area` column.
ORDER BY Area DESC 
-- Only show a single row, which will be the first row.
LIMIT 1;

-- PART 3 --

-- Select the `Site_name` and `Area` column from the Site table.
SELECT Site_name, Area FROM Site 
-- Select the `Site_name` with the max `Area` from the Site table.
WHERE Area = (SELECT MAX(Area) FROM Site);
