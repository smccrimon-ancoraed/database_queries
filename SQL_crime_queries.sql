
select top 10 * from NewYork where OffenseDesc LIKE '%bicycles%'

select  * from NewYork where DescriptionCd LIKE '%weapons%'
-- 2325 rows
select  * from NewYork where OffenseDesc LIKE '%weapons%'
-- 2331 rows
-- LawCatCode is the Law Cateogry type such as FELONT or MISDEMEANOR


select   Month(ReportDate) as 'Month', count('Month') from NewYork where OffenseDesc LIKE '%weapons%'
group by  Month(ReportDate)


select count(*) from NewYork;
use crime

select * from NewYork

