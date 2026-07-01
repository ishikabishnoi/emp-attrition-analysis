-- if the person's marital status along with their work life balance count does plays a role in their attrition?

-- select Gender, MaritalStatus, WorkLifeBalance, count(*) as total_emps, sum(Attrition = 'Yes') as emp_left,
-- ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
-- from why_people_r_quitting group by WorkLifeBalance, MaritalStatus, Gender order by WorkLifeBalance, attrition_rate desc;

select Gender,  MaritalStatus, WorkLifeBalance,
count(*) as total_emps, sum(Attrition = 'Yes') as emp_left,
ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
 from why_people_r_quitting group by Gender,  MaritalStatus, WorkLifeBalance

-- insights-
-- single male employees having lowest work life balance tends to have higher attrition rate
-- divorced female employees having higest and lowest work life balance tends to have 0 attrition rate.
-- wtf <<teary emojis incoming>>, this is the funniest insight of the day yet.