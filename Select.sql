# SELECT
USE World;
-- SELECT * FROM country
-- WHERE Continent='Asia'
-- ORDER BY IndepYear
-- SELECT Name,Population from country
-- SELECT Name,Population,LifeExpectancy, LifeExpectancy+1  as 'Life Expectancy 2022' from country4


# Distinct
-- SELECT  DISTINCT Continent from country #shows us the unique values

# Comparisn Operator (<,>,<=,>=,<>,!=)
-- SELECT * FROM country WHERE LifeExpectancy <= 45
-- SELECT * FROM country WHERE IndepYear = 1971

# (AND, OR, NOT) Operator
-- SELECT * FROM country WHERE LifeExpectancy <= 45 OR IndepYear = 1971
-- SELECT * FROM country WHERE LifeExpectancy <= 70 AND IndepYear >= 1971
-- SELECT * FROM country WHERE NOT LifeExpectancy <= 70 AND IndepYear >= 1971

# IN Operator
-- SELECT * FROM country WHERE Continent IN ('Asia','Oceania')

# Between Operator
-- SELECT * FROM country WHERE LifeExpectancy BETWEEN 50 AND 60

# Like Operator
-- SELECT * FROM country WHERE Name LIKE 'B%' #starts with B
-- SELECT * FROM country WHERE Name LIKE '%stan' #ends with stan
-- SELECT * FROM country WHERE Name LIKE '____stan' #Contains 7 Strings and ends with stan
-- SELECT * FROM country WHERE Name LIKE '______' #Contains 6 Strings 

# Regular Expression
-- SELECT * FROM country WHERE Name REGEXP 'stan'   #ends with stan
-- SELECT * FROM country WHERE Name REGEXP 'stan|land' #ends with stan or land
-- SELECT * FROM country WHERE Name REGEXP '^CH' #starts with CH
-- SELECT * FROM country WHERE Name REGEXP 'stan$'#ends with stan
-- SELECT * FROM country WHERE Name REGEXP '[p,k]a' #contains pa or ka
-- SELECT * FROM country WHERE Name REGEXP '[a-h]a' #contains aa ----- ha
-- SELECT * FROM country WHERE Name REGEXP 'm[a-h]' #contains ma----mh

# IS NULL , IS NOT NULL Operator
-- SELECT * FROM country WHERE IndepYear IS NULL
-- SELECT * FROM country WHERE IndepYear IS NULL AND LifeExpectancy IS NOT NULL

# ORDER BY operator
-- SELECT * FROM country ORDER BY Population DESC # by default ascending 

#LIMIT
-- SELECT * FROM country WHERE Continent = 'Asia' LIMIT 5 # 5 results will be shown
SELECT * FROM country WHERE Continent = 'Asia' LIMIT 10,3 #Skipp first 1 results and then show 3 results


