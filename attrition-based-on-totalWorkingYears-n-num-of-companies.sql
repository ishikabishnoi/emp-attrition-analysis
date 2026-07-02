-- ATTRITION BASED ON TOTAL WORKING YEARS AND NUMBER OF COMPANIES THEY'VE WORKED AT.

select NumCompaniesWorked, count(*) as total_emps, sum(Attrition = 'Yes') as emps_left, 
ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate 
from why_people_r_quitting group by NumCompaniesWorked order by attrition_rate desc;

-- insights-
-- employees who'd worked at 6-7 and 2-3 companies had similar attrition rates, 
-- apart from that no solid pattern can be noticed in attrition bcz of NumCompaniesWorked.

select TotalWorkingYears, count(*) as total_emps, sum(Attrition = 'Yes') as emps_left, 
ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate 
from why_people_r_quitting group by TotalWorkingYears order by attrition_rate desc;

-- insights-
-- employees who'd been employed for 40 years had 100 % attrition rate but there're only 2 such employees, making the result statistically unreliable.
-- apart from this even there's no such visible pattern that shows changes in attrition rates based on TotalWorkingYears.
