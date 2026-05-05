-- PART 2: Who worked with whom?

-- SELECT * FROM Camp_assignment A JOIN Camp_assignment B...

-- STEP 1:

-- Select all the columns from A and B and perform a join.
SELECT * FROM Camp_assignment A JOIN Camp_assignment B 
    -- Join on 'Site' column.
    ON A.Site = B.Site;

-- STEP 2:

-- Select all the columns from A and B and perform a join.
SELECT * FROM Camp_assignment A JOIN Camp_assignment B 
    -- Join on 'Site' column.
    ON A.Site = B.Site
    -- Select rows where A.Start is equal to or less than B.End.
    AND (A.Start <= B.End) 
    -- Select rows where A.End is greater than or equal to B.Start.
    AND (A.End >= B.Start);

-- STEP 3:

-- Select all the columns from A and B and perform a join.
SELECT * FROM Camp_assignment A JOIN Camp_assignment B 
    -- Join on 'Site' column.
    ON A.Site = B.Site
    -- Select rows where A.Start is equal to or less than B.End.
    AND (A.Start <= B.End) 
    -- Select rows where A.End is greater than or equal to B.Start.
    AND (A.End >= B.Start)
    -- Select the rows where A.Site = 'lkri'.
    WHERE A.Site = 'lkri';

-- Select all the columns from A and B and perform a join.
SELECT * FROM Camp_assignment A JOIN Camp_assignment B 
    -- Join on 'Site' column.
    ON A.Site = B.Site
    -- Select rows where A.Start is equal to or less than B.End.
    AND (A.Start <= B.End) 
    -- Select rows where A.End is greater than or equal to B.Start.
    AND (A.End >= B.Start)
    -- Select the rows where A.Site = 'lkri'.
    WHERE A.Site = 'lkri'
    -- Select rows where A.Observer comes before B.Observer alphabetically. 
    AND A.Observer < B.Observer;

-- STEP 4:

-- Select the 'Site' and  'Observer' column from table A.
-- Select the 'Observer' column from table B.
-- Name table A 'Observer' column 'Observer_1'.
-- Name table B 'Observer' column 'Observer_2'.
SELECT A.Site, A.Observer AS Observer_1, B.Observer AS Observer_2 
-- Perform a join on Camp_assignment (table A) and a copy of Camp_assignment (table B).
FROM Camp_assignment A JOIN Camp_assignment B 
    -- Join on 'Site' column.
    ON A.Site = B.Site
    -- Select rows where A.Start is equal to or less than B.End.
    AND (A.Start <= B.End) 
    -- Select rows where A.End is greater than or equal to B.Start.
    AND (A.End >= B.Start)
    -- Select rows where A.Observer comes before B.Observer alphabetically. 
    AND A.Observer < B.Observer
    -- Select the rows where A.Site = 'lkri'.
    WHERE A.Site = 'lkri';

-- BONUS:

-- Select the 'Site' from table A.
-- Select the 'Name' column from table p1.
-- Name table p1 'Name' column 'Name_1'
-- Name table p2 'Name' column 'Name_2'
SELECT A.Site, p1.Name AS Name_1, p2.Name AS Name_2
-- Perform a join on Camp_assignment (table A) and a copy of Camp_assignment (table B).
FROM Camp_assignment A JOIN Camp_assignment B
    -- Join on 'Site' columns.
    On A.Site = B.Site
    -- Select rows where A.Start is equal to or less than B.End.
    AND A.Start <= B.End
    -- Select rows where A.End is greater than or equal to B.Start.
    AND A.End >= B.Start
    -- Select rows where A.Observer comes before B.Observer alphabetically.
    AND A.Observer < B.Observer
-- Join table p1 (Personnel) on 'A.Observer' and 'p1.Abbreviation' column.
JOIN Personnel p1 ON A.Observer = p1.Abbreviation
-- Join table p2 (Personnel) on 'B.Observer' and 'p2.Abbreviation' column.
JOIN Personnel p2 ON B.Observer = p2.Abbreviation
-- Select the rows where A.Site = 'lkri'.
WHERE A.Site = 'lkri'
-- Order alphabetically by Name_2.
ORDER BY Name_2;
