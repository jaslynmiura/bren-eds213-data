-- PART 3: Who's the culprit?

-- Select 'Name' from table p
-- Count total nests per observer as 'Nest_Count'
SELECT p.Name, COUNT(*) AS Nest_Count
-- Join table p (Personnel) to table b (Bird_nests)
FROM Bird_nests b
-- Join on columns b.Observer and p.Abbreviation
JOIN Personnel p ON b.Observer = p.Abbreviation
-- Select rows where 'Site' in table b is 'nome'
WHERE b.Site = 'nome'
    -- Select rows where 'Year' in table b is between 1998 and 2008.
    AND b.Year >= 1998 
    AND B.YEAR <= 2008
    -- Select rows where 'ageMethod' in table b is 'float'.
    AND b.ageMethod = 'float'
-- Group by 'Name' column in table p
GROUP BY p.Name
-- Return rows where the 'Nest_Count' = 36
HAVING COUNT(*) = 36;
