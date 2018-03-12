SELECT * FROM world.city;

SELECT * FROM world.country;

SELECT * FROM world.countrylanguage;

-- inner join 2 table 
SELECT country.*, countrylanguage.* 
FROM country INNER JOIN countrylanguage
ON country.Code=countrylanguage.CountryCode;

SELECT country.Code, countrylanguage.Language,countrylanguage.IsOfficial, country.Name  
FROM country INNER JOIN countrylanguage
ON country.Code=countrylanguage.CountryCode;


SELECT country.Code, countrylanguage.Language,countrylanguage.IsOfficial, country.Name  
FROM country JOIN countrylanguage
ON country.Code=countrylanguage.CountryCode
ORDER BY country.Code asc, countrylanguage.Language desc;

-- left join
SELECT *
FROM country LEFT JOIN countrylanguage
ON country.Code=countrylanguage.CountryCode
ORDER BY country.Code asc, countrylanguage.Language desc limit 25;

-- left outer join --country.*, countrylanguage.
SELECT * 
FROM countrylanguage LEFT outer JOIN country
ON country.Code=countrylanguage.CountryCode
ORDER BY country.Code asc, countrylanguage.Language desc limit 25;

-- right join
SELECT *
FROM country right JOIN countrylanguage
ON country.Code=countrylanguage.CountryCode
ORDER BY country.Code asc, countrylanguage.Language desc limit 25;

-- left outer join
SELECT * 
FROM countrylanguage LEFT outer JOIN country
ON country.Code=countrylanguage.CountryCode
ORDER BY country.Code asc, countrylanguage.Language desc limit 25;


-- full  join -- here full outer join not work
SELECT country.Code , countrylanguage.Language
FROM country FULL JOIN countrylanguage
ON country.Code=countrylanguage.CountryCode
ORDER BY country.Code asc, countrylanguage.Language desc limit 25;


-- SQL UNION Syntax
SELECT country.Code FROM country
UNION
SELECT countrylanguage.Percentage FROM countrylanguage;

-- SQL UNION ALL Syntax
SELECT country.Code FROM country
UNION ALL
SELECT countrylanguage.Percentage FROM countrylanguage;


-- duplicate table or drop replace table
DROP TABLE IF EXISTS countrylanguage1;
CREATE TABLE countrylanguage1 AS
SELECT * FROM countrylanguage limit 10;
SELECT * FROM countrylanguage1 limit 100;

DROP TABLE IF EXISTS countrylanguage1;
CREATE TABLE countrylanguage1 AS
SELECT * FROM countrylanguage where Language="English" and Percentage>4.0 limit 10;
SELECT * FROM countrylanguage1 limit 100;


SELECT country.Code, countrylanguage.Language,countrylanguage.IsOfficial, country.Name As cutomerContry 
FROM country LEFT JOIN countrylanguage
ON country.Code=countrylanguage.CountryCode
GROUP BY country.Code limit 2;

SELECT * FROM countrylanguage1 limit 100;

ALTER TABLE countrylanguage1
ADD state varchar(255);

ALTER TABLE countrylanguage1
MODIFY COLUMN state text;

ALTER TABLE countrylanguage1
DROP COLUMN state;

desc countrylanguage1;

UPDATE countrylanguage1 SET IsOfficial='T', Percentage=10 WHERE countrylanguage1.CountryCode='ABW';

UPDATE countrylanguage1 SET IsOfficial='F', Percentage=10000000.42 WHERE countrylanguage1.CountryCode='ABW';

SELECT * FROM countrylanguage1 limit 100;

SELECT sum(Percentage) FROM countrylanguage1 limit 10;

SELECT MAX(Percentage) AS HighestPrice FROM countrylanguage1 limit 2;

-- not work
SELECT Percentage AS HighestPrice  FROM countrylanguage1 limit 10;
SELECT sum(HighestPrice) FROM countrylanguage1;

SELECT 
   SUM(Percentage) as 'Val1',
   SUM(Percentage) as 'Val2',
   SUM(Percentage) as 'Val3',
   (SUM(Val1) + SUM(Val2) + SUM(Val3)) as 'Total'
FROM countrylanguage1;


select sum(id) from (select id from cmenvirosystems_employee order by id asc limit 3) as subt;

select sum(Percentage) from (select Percentage from countrylanguage1 limit 3) as subt;


SELECT  Percentage, SUM(Percentage), SUM(Percentage)
FROM    countrylanguage1
GROUP  BY Percentage;


select now();


CREATE TABLE `my`.`users` (
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `id` INT not NULL,
  PRIMARY KEY (`id`));
  
  
INSERT INTO `my`.`users`  (username, password, id) VALUES ('p','p',1);
