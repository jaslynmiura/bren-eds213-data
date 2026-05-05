-- PART 1 --

-- Create a temporary table with a single column with datatype REAL.
CREATE TEMP TABLE mytable (val REAL);

-- Inserting real values and a null value in the temporary table.
INSERT INTO mytable VALUES (10.0), (20.0), (30.0), (NULL), (40.0);

-- Rows can be inserted into a table at once, where each row is separated by parentheses.

-- Viewing all rows in `mytable`.
SELECT * FROM mytable;

-- Calculate the average of the `val` column in `mytable`.
SELECT AVG(val) FROM mytable;

-- What is actually returned?
-- After running AVG on the column we created in the temporary table, the 25 was returned, and is now a double datatype.
-- Therefore, the AVG function ignores the NULL values and calculates the average based on the numeric data values.

-- What would the average be if the function ignored NULLs? 
-- If the function ignored the NULLs, the average returned would be 25.0.

-- What would the average be if it somehow factored them in? 
-- If the function factored in the NULLs, the average returned would be 20.0.

-- PART 2 --

-- Which average calculation is correct?
SELECT SUM(val)/COUNT(*) FROM mytable;
SELECT SUM(val)/COUNT(mycolumn) FROM mytable;

-- The correct calculation is 
SELECT SUM(val)/COUNT(val) FROM mytable;
-- This is done by manually taking the sum of all the values (10.0 + 20.0 + 30.0 + 40.0) and counting all the numeric rows (4).
-- Which returns 25.0

-- The alternate calculation takes the sum of all the values (10.0 + 20.0 + 30.0 + 40.0) and counting ALL rows (5), which includes the NULL row.
-- This returns 20.0, which is incorrect since the number of numeric values is 4, the total number of rows is 5; which includes the NULL value.

DROP TABLE mytable;









