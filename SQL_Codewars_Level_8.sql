
--1.) Select Greatest (f)
--Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
--In other words , try every combination of a,b,c with [*+()] , and return the Maximum Obtained (Read the notes for more detail about it)
--Example
--With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:

--1 * (2 + 3) = 5
--1 * 2 * 3 = 6
--1 + 2 * 3 = 7
--(1 + 2) * 3 = 9
--So the maximum value that you can obtain is 9.
SELECT GREATEST( a+b+c, (a+b)*c, a*(b+c), a*b*c) 
AS res FROM expression_matter;

--***************************************************************************************

--2.) Squaring an Argument
--# write your SQL statement here: 
-- you are given a table 'square' with column 'n'
-- return a table with:
--   this column and your result in a column named 'res'
SELECT n, CAST(n^2 AS INTEGER) res FROM square;

--***************************************************************************************

--3.) Check for factor
-- you will be given a table 'kata' with columns 'id', 'base', and 'factor'. 
-- return the 'id' and your result in a column named 'res'.
SELECT id, (base % factor = 0) res FROM kata;

--***************************************************************************************

--4.) Messi goals function
-- you will be given a table, goals, 
-- with columns la_liga_goals, copa_del_rey_goals, and champions_league_goals. 
-- Return a table with a column, res.
SELECT (la_liga_goals + copa_del_rey_goals + champions_league_goals) res FROM goals;

--***************************************************************************************

--5.) Remove exclamation marks
-- You are given a table 'removeexclamationmarks' with column 's', 
-- return a table with column 's' and your result in a column named 'res'.
SELECT s, replace(s, '!', '') res FROM removeexclamationmarks;

--***************************************************************************************

--6.) Convert to Hexadecimal (f)
--Your task is to turn the numeric columns (arms, legs) into equivalent hexadecimal values.
SELECT TO_HEX(legs) legs, TO_HEX(arms) arms FROM monsters;

--***************************************************************************************

--7.) Reversed Strings
-- You are given a table 'solution' with column 'str', 
-- return a table with column 'str' and your result in a column named 'res'.
SELECT str, REVERSE(str) res FROM solution;

--***************************************************************************************

--8.) Summation (f)
-- You are given a table 'kata'with a column 'n', 
-- return a table with 'n' and your result stored in a column naed 'res'.
SELECT n, n * (n + 1) / 2 as res
FROM kata;

--***************************************************************************************

--9.) Simple multiplication (f)
-- # You are given a table 'multiplication' with column 'number', 
-- return a table with column 'number' and your result in a column named 'res'.
SELECT number, (CASE WHEN number%2=0 THEN number*8 ELSE number*9 END) res 
FROM multiplication;

--***************************************************************************************

--10.) Adults only
-- In your application, there is a section for adults only. 
-- You need to get a list of names and ages of users from the users table,
-- who are 18 years old or older.
SELECT name, age FROM users
WHERE age > 17;

--***************************************************************************************

--11.) On the Canadian Border
-- Select names, and countries of origin of all the travelers, 
-- excluding anyone from Canada, Mexico, or The US.
SELECT name, country FROM travelers
WHERE country NOT IN ('Canada', 'Mexico', 'USA');

--***************************************************************************************

--12.) Register for the Party
-- You received an invitation to an amazing party. 
-- Now you need to write an insert statement to add yourself to the table of participants.
INSERT INTO participants
VALUES ('Roger', 31, true);
SELECT * FROM participants;

--***************************************************************************************

--13.) Collect Tuition
-- Write a select statement to get a list of all students who haven't paid their tuition yet.
SELECT * FROM students
WHERE tuition_received = false;

--***************************************************************************************

--14.) Best-Selling Books
-- Use a select statement to list names, authors, and number 
-- of copies sold of the 5 books which were sold most.
SELECT * FROM books
ORDER BY copies_sold DESC
LIMIT 5;

--***************************************************************************************
--15.) Century From Year (f)
-- You will be given a table years with a column yr for the year. 
-- Return a table with a column century.
SELECT CEILING(yr/100.00) AS Century -- Ceiling Function rounds up
FROM years;

--***************************************************************************************
--16.) Opposite number
-- You will be given a table: opposite, with a column: number. 
-- Return a table with a column: res.
SELECT number * -1 res FROM opposite;

--***************************************************************************************
--17.) MakeUpperCase
-- You are given a table 'makeuppercase' with column 's', 
-- return a table with column 's' and your result in a column named 'res'.
SELECT s, UPPER(s) res FROM makeuppercase;

--***************************************************************************************
--18.) Simple SUM
-- Create a simple SUM statement that will sum all the ages.
SELECT SUM(age) age_sum FROM people;

--***************************************************************************************
--19.) Will you make it?
-- You are given a table 'zerofuel' with columns 'distance_to_pump', 'mpg' and 'fuel_left', 
-- return a table with all the columns and your result in a column named 'res'.
SELECT distance_to_pump, mpg, fuel_left,
mpg * fuel_left >= distance_to_pump res 
FROM zerofuel;

--***************************************************************************************
--20.) Simple MIN / MAX
-- create a simple MIN / MAX statement 
-- that will return the Minimum and Maximum ages out of all the people.
SELECT MIN(age) age_min, MAX(age) age_max 
FROM people

--***************************************************************************************
--21.) Third Angle of a Triangle
-- you are given a table 'otherangle' with columns 'a' and 'b'.
-- return a table with these columns and your result in a column named 'res'.
SELECT a, b, (180 - a - b) res FROM otherangle

--***************************************************************************************
--22.)


--***************************************************************************************
--23.)


--***************************************************************************************
--24.)


--***************************************************************************************
--25.)