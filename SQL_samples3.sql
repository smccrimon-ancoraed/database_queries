USE [sakila]
GO
CREATE USER [dbuser1] FOR LOGIN [dbpass1]
GO


use world

Select region, COUNT(*) as count
from country
group by Region
order by count desc, Region

SELECT COUNT(DISTINCT HeadOfState) FROM Country


SELECT HeadOfState from country
select HeadOfState from country order by HeadOfState
-- error below because column not used with GROUP BY or HAVING statement
select HeadOfState, count(HeadOfState) as count FROM country

SELECT HeadOfState, count(HeadOfState) as count FROM Country group by HeadOfState


select * from country_list

select region, max(gnp) as 'Largest GNP' from country
group by region

select Name, MAX(District) as 'Largest District', Population from city
group by District, Name

-- Msg 8120, Level 16, State 1, Line 30
-- Column 'city.Population' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.


select top 10 
Name, MAX(District) as 'Largest District', Population from city
group by District, Name, Population 
order by Population

select top 10  Name, MAX(Population) as 'Largest Population', District from city
group by District, Name, Population
order by Name

