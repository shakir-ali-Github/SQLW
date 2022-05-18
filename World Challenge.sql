-- World Challenege

USE world;

-- Question 1: Using COUNT, get the number of cities in the USA
SELECT COUNT(CountryCode) FROM city WHERE CountryCode="USA";

-- Question 2: Find out the population and life expectancy for people in Argentina.
SELECT Name, Population, LifeExpectancy FROM country WHERE Name="Argentina";

-- Question 3: Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?
SELECT name, LifeExpectancy FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC LIMIT 1;

-- Question 4: Using JOIN ... ON, find the capital city of Spain.
SELECT country.name, city.name AS capital_city FROM country JOIN city ON city.ID=country.capital WHERE country.name="Spain";

-- Question 5: Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.
SELECT countrylanguage.Language, countrylanguage.Percentage, country.Region FROM countrylanguage JOIN country ON country.code=countrylanguage.countrycode WHERE country.Region="Southeast Asia";

-- Question 6: Using a single query, list 25 cities around the world that start with the letter F.
SELECT * FROM city WHERE name LIKE "F%" LIMIT 25;

-- Question 7: Using COUNT and JOIN ... ON, get the number of cities in China.
SELECT count(name) FROM city WHERE countrycode="CHN";

-- Question 8: Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
SELECT * FROM country WHERE population > 0 ORDER BY population ASC LIMIT 10;

-- Question 9: Using aggregate functions, return the number of countries the database contains.
SELECT count(name) FROM country;

-- Question 10: What are the top ten largest countries by area?
SELECT SurfaceArea, name FROM country ORDER BY SurfaceArea DESC LIMIT 10;

-- Question 11: List the five largest cities by population in Japan.
SELECT population, `name` FROM city WHERE CountryCode="JPN" ORDER BY population DESC LIMIT 5;

-- Question 12: List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!
UPDATE country SET HeadOfState="Elizabeth II" WHERE HeadOfState="Elisabeth II";
SET SQL_SAFE_UPDATES = 0;
SELECT `Name`, `Code`, HeadOfState FROM country WHERE HeadOfState="Elizabeth II"; 

-- Question 13: List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0.
SELECT `Name`, Population/SurfaceArea AS RATIO FROM country WHERE (Population/SurfaceArea) >0 ORDER BY RATIO ASC LIMIT 10;

-- Question 14: List every unique world language.
SELECT DISTINCT `Language` FROM countrylanguage;

-- Question 15: List the names and GNP of the world's top 10 richest countries.
SELECT `Name`, GNP FROM country ORDER BY GNP DESC LIMIT 10;

-- Question 16: List the names of, and number of languages spoken by, the top ten most multilingual countries.
SELECT count(countrylanguage.Language) AS "No of languages used", country.Name FROM country JOIN countrylanguage ON countrylanguage.CountryCode=country.Code GROUP BY country.Name ORDER BY count(countrylanguage.Language) DESC LIMIT 10;

-- Question 17: List every country where over 50% of its population can speak German.
SELECT country.Name, countrylanguage.Language, countrylanguage.Percentage FROM country JOIN countrylanguage ON countrylanguage.CountryCode=country.code WHERE Percentage > 50 AND Language="German";

-- Question 18: Which country has the worst life expectancy? Discard zero or null values.
SELECT LifeExpectancy, Name FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy ASC LIMIT 1;

-- Question 19: List the top three most common government forms.
SELECT count(GovernmentForm), GovernmentForm FROM country GROUP BY GovernmentForm ORDER BY count(GovernmentForm) DESC LIMIT 3;

-- Question 20: How many countries have gained independence since records began?
SELECT count(IndepYear) FROM country WHERE IndepYear IS NOT NULL;
