-- ATTRITION BCZ EMPLOYEES ARE NOT EXPERIENCING CAREER GROWTH?

select count(distinct StockOptionLevel) from why_people_r_quitting;

select StockOptionLevel, count(*) as total_emps, sum(Attrition = 'Yes') as emps_left, ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
 from why_people_r_quitting group by StockOptionLevel order by  StockOptionLevel desc;
 
 -- insights-
 -- employees having the highest and lowest StockOptionLevel tend to have higher attrition level
 -- while the ones in mid had way less and similar attrition level
 
 select count(distinct PercentSalaryHike) from why_people_r_quitting;
 
 select PercentSalaryHike, count(*) as total_emps, sum(Attrition = 'Yes') as emps_left, ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
 from why_people_r_quitting group by PercentSalaryHike order by  PercentSalaryHike desc;
 
 select count(*), sum(Attrition = 'Yes') as emps_left, ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate from why_people_r_quitting where StockOptionLevel = 3;
 
 -- no clear pattern can be noticed in changes on attrition rates based on PercentSalaryHike.