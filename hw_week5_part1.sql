-- PART 1: Missing Data

-- Which sites have no egg data? 

-- Using a Code NOT IN (subquery) clause.

-- Return the 'Code' of the filtered 'Site' data.
SELECT Code FROM Site
  -- Select every site code in the 'Bird_eggs' table, 
  -- Then filter the 'Site' table where site's code is absent.
  WHERE Code NOT IN (SELECT Site FROM Bird_eggs)
  -- Order the filtered 'Site' table by 'Code'
  ORDER BY Code;

-- Using an outer join with a WHERE clause that selects the desired rows.

-- Select the 'Code' column from Site.
SELECT Site.Code FROM Site
    -- Left join the 'Bird_eggs' on the 'Code' column in the 'Site' and 'Bird_eggs' table.
    LEFT JOIN Bird_eggs ON Site.Code = Bird_eggs.Site
    -- Where the 'Site' in Bird_eggs is empty/NULL.
    WHERE Bird_eggs.Site IS NULL
    -- Order by 'Code'.
    ORDER BY Code;

-- When the Bird_eggs table was made, the 'Site' column was made where the data type is VARCHAR, 
-- and NOT NULL, meaning the 'Site' value will never be a NULL value
-- Therefore, IS NULL can be performed against the 'Site' column.
-- If 'Site' IS NULL after the join, it means no match was found.