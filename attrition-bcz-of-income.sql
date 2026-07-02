-- IS INCOME AN ISSUE?

-- INSIGHTS-
-- 886 diff DailyRate, 71 diff HourlyRate, 1427 diff MonthlyRate, 1349 diff MonthlyIncome
-- max monthly income income is 19999, max of daily rate is 1499, max of hourly rate is 100, max of monthly rate rate is 26999
-- min monthly income income is 1009, min of daily rate is 102, min of hourly rate is 30, min of monthly rate rate is 2049 

select CASE
        WHEN MonthlyIncome BETWEEN 1000 AND 5000 THEN '1000-5000'
        WHEN MonthlyIncome BETWEEN 5001 AND 10000 THEN '5001-10000'
        WHEN MonthlyIncome BETWEEN 10001 AND 15000 THEN '10001-15000'
        when MonthlyIncome between 15001 and 20000 then '15001- 20000'
        END AS income_group,
        count(*) as total_emps, sum(Attrition = 'Yes') as emp_left,
    ROUND(AVG(MonthlyIncome),2) AS avg_income,
ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate from why_people_r_quitting group by income_group order by attrition_rate desc;

-- as we can see that attrition rates seems to be higher for people lying in 1k-5k income group so lets checck how many people lie in this income bracket.

select count(*) as total_emps, sum(Attrition = 'Yes') as employees_left from why_people_r_quitting where MonthlyIncome between 1000 and 5000;
-- 749 people lie in this income bracket and 163 out of them left.

select count(*) as total_emps,  sum(Attrition = 'Yes') as employees_left  from why_people_r_quitting where MonthlyIncome between 5001 and 20000;
-- 721 people lie in this income bracket and only 74 out of them left.


-- SO WE CAN SAY THAT PEOPLE HAVING LOW MONTHLY INCOME TEND TO HAVE HIGHER ATTRITION RATES.
-- another thing i noticed is that attrition doesn't decrease steadily as income increases.
-- although the overall trend suggests lower income groups have higher attrition,
-- the 10k-15k income group has a slightly higher attrition rate than the 5k-10k group.
