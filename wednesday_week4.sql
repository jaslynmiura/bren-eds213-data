SELECT * FROM A;
SELECT * FROM B;

-- This tries to do all the possible combination of the columns
SELECT * FROM A CROSS JOIN B;

-- Select `acol1`, `acol2` is done after the the nested select.
SELECT acol1, acol2, FROM (SELECT * FROM A CROSS JOIN B);
-- SQL works backwards.

SELECT acol1, acol2, COUNT(*) FROM (SELECT * FROM A CROSS JOIN B) GROUP BY acol1;

-- Difference between COUNT(*) == number of row & COUNT(column) == Non-NULL values in that column, or groups
SELECT acol1, ANY_VALUE(acol2), COUNT(*)
    FROM (SELECT * FROM A CROSS JOIN B)
    GROUP BY acol1;


SELECT acol1, ANY_VALUE(acol2), COUNT(bcol3)
    FROM (SELECT * FROM A CROSS JOIN B)
    GROUP BY acol1;


-- Using a condition
SELECT * FROM A JOIN B ON acol1 < bcol1;

-- INNER our OUTER JOINS
SELECT * FROM Student;
SEELCT * FROM House;

-- INNER

SELECT * FROM Student AS S JOIN House AS H ON S.House_ID = H.House_ID;

-- Requires the same column names.
SELECT & FROM Student JOIN House USING House_ID;

-- Outer join
SELECT * FROM Student FULL JOIN House USING (House_ID);

SELECT * FROM Student CROSS JOIN House;

CREATE TEMP TABLE Camp_assignment_copy AS
   SELECT * FROM Camp_assignment; 