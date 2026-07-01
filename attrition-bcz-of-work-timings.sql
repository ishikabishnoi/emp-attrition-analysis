-- are people leaving bcz of work timings?

select OverTime, COUNT(*) AS total_emp,
SUM(Attrition = 'Yes') AS employees_left,
ROUND( SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate 
FROM why_people_r_quitting GROUP BY OverTime order by attrition_rate desc;


-- insights-
-- Employees who work overtime tend to have a higher attrition rate than employees who don't.

-- what department does more overtime?

SELECT Department, COUNT(*) AS total_emp, SUM(OverTime = 'Yes') AS overtime_emp, ROUND(SUM(OverTime = 'Yes') * 100 / COUNT(*), 2) AS overtime_rate,
SUM(Attrition = 'Yes') AS employees_left,
ROUND( SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate 
FROM why_people_r_quitting GROUP BY Department;

-- sales has highest attrition rate but r&d has more overtime employees, so..things doesnt add up..?

