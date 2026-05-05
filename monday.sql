-- To verify

-- In SQL, comments  are delimited with '--'

-- .table -- lists tables
-- .schema -- lists the whole schema
.schema

-- Getting help on SQL: look at the "railroad" diagrams in SQL
-- check out https://sqlite.org/lang.html

-- Our first query
-- The * means all columns; all rows are implied because we didn't specify a WHERE clause
SELECT * FROM Species;

-- A couple gotchas
-- 1. Don't forget the closing semicolon, DuckDB will wait for it forever
-- 2. Watch for missing closing quotes.

SELECT * FROM Species LIMIT 5;
-- This is equivalent to head()
-- Can aslo "page" through the rows
SELECT * FROM Species LIMIT 5 OFFSET 5;

-- Can select which columns we want
SELECT Code, Scientific_name FROM Species;

SELECT Species FROM Bird_nests;
SELECT DISTINCT Species FROM Bird_nests;

-- Can also  get distinct pairs or tuples that occur
SELECT DISTINCT Species, Observer FROM Bird_nests;

-- Can ask that the results be ordered
SELECT Scientific_name FROM Species;
SELECT Scientific_name FROM Species ORDER BY Scientific_name;

SELECT DISTINCT Species FROM Bird_nests;
SELECT DISTINCT Species from Bird_nests LIMIT 3;

SELECT DISTINCT Species FROM Bird_nests ORDER BY Species;
SELECT DISTINCT Species from Bird_nests ORDER BY Species LIMIT 3;

-- select distinct locations from the site table; are they
SELECT DISTINCT Location FROM Site;