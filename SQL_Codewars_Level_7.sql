--1.) Counties Capitals for Trivia Nights
-- From the African countries that start with the character E, 
-- get the names of their capitals ordered alphabetically.
SELECT capital FROM countries
WHERE continent IN ('Africa','Afrika') AND country LIKE 'E%' 
ORDER BY capital
LIMIT 3;

--***************************************************************************************
--2.) Simple JOIN
-- create a simple SELECT statement that will 
--return all columns from the products table, and join to the 
--companies table so that you can return the company name.
SELECT products.*, companies.name AS company_name 
FROM products
JOIN companies 
ON products.company_id = companies.id;

--***************************************************************************************
--3.) Truncating
-- Return a table with a single column towardzero 
-- where the values are the result of number1 + number2 truncated towards zero.
SELECT TRUNC(number1 + number2) towardzero FROM decimals;

--***************************************************************************************
--4.) Strange principal (f)
-- You are given a table 'numofopenlockers' with column 'n', 
-- return a table with column 'n' and your result in a column named 'res'.
SELECT n, CAST(FLOOR(SQRT(n)) AS INT) res FROM numofopenlockers;

--***************************************************************************************
--5.) Counting and Grouping
-- return a table that shows a count of each race represented, 
-- ordered by the count in descending order
SELECT race, COUNT(*) FROM demographics
GROUP BY race
ORDER BY COUNT(*) DESC;

--***************************************************************************************
--6.) Bit Length
-- return the same table where all text fields (name & race) 
-- are changed to the bit length of the string.
SELECT id, BIT_LENGTH(name) AS name, birthday, BIT_LENGTH(race) AS race 
FROM demographics;

--***************************************************************************************
--7.) Absolute Value and Log to Base
-- Return a table with two columns (abs, log) 
-- where the values in abs are the absolute values of number1 
-- and the values in log are values from number2 in logarithm to base 64.
SELECT ABS(number1) abs, LOG(64, number2) log FROM decimals;

--***************************************************************************************
--8.) Simple GROUP BY
-- create a simple GROUP BY statement, 
-- you want to group all the people by their age 
-- and count the people who have the same age.
SELECT age, COUNT(*) people_count 
FROM people
GROUP BY age;

--***************************************************************************************
--9.) Repeat and Reverse
-- Where the name is the original string repeated three times (do not add any spaces), 
-- and the characteristics are the original strings in reverse
SELECT REPEAT(name,3) AS name, 
REVERSE(characteristics) AS characteristics 
FROM monsters;

--***************************************************************************************
--10.) JOIN with COUNT (f)
-- Create a simple SELECT statement that will return all columns from the people table, 
-- and join to the toys table so that you can return the COUNT of the toys
SELECT people.*, COUNT(toys.*) AS toy_count 
FROM people
JOIN toys
ON people.id = toys.people_id
GROUP BY people.id;

--***************************************************************************************
--11.) Moving Values
--  make a new table where each column should contain the length of the string in the column to its right
SELECT 
   LENGTH(name) AS id,	
   LENGTH(CAST(legs AS VARCHAR)) AS name,	
   LENGTH(CAST(arms AS VARCHAR)) AS legs,	
   LENGTH(characteristics) AS arms,
   LENGTH(CAST(id AS VARCHAR)) AS characteristics
FROM monsters;

--***************************************************************************************
--12.) Up and Down (Case Statement)
-- return table with similar structure and headings, 
-- where if the sum of a column is odd, the column shows the minimum value for that column, 
-- and when the sum is even, it shows the max value.
SELECT 
  (CASE WHEN SUM(number1)%2=0 THEN MAX(number1) ELSE MIN(number1) END) AS number1,
  (CASE WHEN SUM(number2)%2=0 THEN MAX(number2) ELSE MIN(number2) END) AS number2
FROM numbers

--***************************************************************************************
--13.) Maths with String Manipulations
-- return a single column named calculation where the value is the bit length of name, 
-- added to the number of characters in race
SELECT (BIT_LENGTH(name) + LENGTH(race)) AS calculation
FROM demographics

--***************************************************************************************
--14.) GROCERY STORE: Logistic Optimisation
-- Order the result by count_products_types (DESC) 
-- then by producer (ASC) in case there are duplicate amounts,
SELECT producer, COUNT(*) count_products_types
FROM products
GROUP BY producer
ORDER BY COUNT(*) DESC;

--***************************************************************************************
--15.) Cube Root and Natural Log
-- Return a table with two columns (cuberoot, logarithm) 
-- where the values in cuberoot are the cube root of those provided in number1 
-- and the values in logarithm are changed to the natural logarithm of those in number2.
SELECT CBRT(number1) AS cuberoot,
ln(number2) AS logarithm
FROM decimals

--***************************************************************************************
--16.) Length based SELECT with LIKE
-- You will need to create SELECT statement in conjunction with LIKE.
-- Please list people which have first_name with at least 6 character long
SELECT first_name, last_name
FROM names
WHERE first_name LIKE '______%'

--***************************************************************************************
--17.) GROCERY STORE: Inventory
-- Use SELECT to show id, name, stock from products 
-- which are only 2 or less item in the stock and are from CompanyA.
SELECT id, name, stock FROM products
WHERE stock<3 AND producent = 'CompanyA'
ORDER BY id;

--***************************************************************************************
--18.) 


--***************************************************************************************
--19.) 


--***************************************************************************************
--20.) 

