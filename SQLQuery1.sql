use world;

SELECT name, CountryCode,District  from city where CountryCode LIKE 'A%'

SELECT name, CountryCode,District from city;

select distinct language from countrylanguage;

select name as country, round(population/surfaceArea,0) AS 'Percent by km'
from country

select name as country, population + 10 AS 'Percent by km'
from country


select 3000 % 34

select 34 % 3000

select language, count(*)
from countrylanguage;

select TOP 5 * 
from city
where countrycode in (select code from country where surfacearea < 10000)
order by population desc;

use World
select continent, round(avg(lifeExpectancy),0) as 'Avg Life Span'
from country
group by continent;

select TOP 10 * 
from city
order by Population;

select sum(surfacearea)  AS 'Total surface'
from country
where region = 'Caribbean'




select name as country, round(population/surfaceArea,0)
from country

select name as country, round(population/surfaceArea,0) as 'People per sqr km'
from country


select continent, format(round(sum(gnp/surfaceArea),3),'N') as 'GNP per square km'
from country
group by continent
order by 'GNP per square km' desc;

use World

use sakila


select  Continent, region, population, surfacearea 
from country
group by Continent, grouping sets(region, population, surfacearea )
--where population null
--group by continent
order by continent asc

select continent, region, population, surfacearea
from country 
where continent ='Africa'

--group by continent
order by continent limit 1


select * from country


select  continent, SUM(population) as 'Total'
from country
--group by Continent
--where population null
group by continent
order by continent asc


select continent, population, surfacearea
from country
--group by continent
order by continent




select rating
from film
where rating LIKE 'PG%' 

group by rating;


select rating, count(*)
from film
group by rating;



use World
select countrycode as 'Country', sum(percentage) as 'Percent Known Languages'
from countrylanguage
-- where isofficial='t'
group by countrycode
order by 'Percent Known Languages' desc;


select  distinct Continent, Region, sum(Population), SurfaceArea AS biggie
from country
group by Region, grouping sets(Continent, SurfaceArea, GNP)
--where population null
-- group by rollup continent
order by continent 


select  distinct LocalName, Continent, Region, sum(Population), SurfaceArea AS biggie
from country
group by Continent, Region, grouping sets(localname, SurfaceArea, GNP)
--where population null
-- group by rollup continent
order by continent 

select    distinct LocalName,Continent, Region, sum(Population), SurfaceArea AS biggie
from country
group by Continent, Region, grouping sets(localname, SurfaceArea, GNP)
--where population null
-- group by rollup continent
order by LocalName 


select  Continent, region, population, surfacearea as weeds
from country
group by Continent,region , grouping sets ( population, surfacearea )
--where population null
--group by continent
order by continent, Region asc


select    LocalName,Continent, Region, sum(Population), SurfaceArea AS biggie
from country
group by Continent, Region, grouping sets(localname, SurfaceArea, GNP)
--where population null
-- group by rollup continent
order by LocalName 

select * 
from country