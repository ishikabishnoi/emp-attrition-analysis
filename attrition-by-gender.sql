-- ATTRITION BASED ON GENDER?

select Gender, count(*) as total_emps, sum(Attrition = 'Yes') as emps_left, ROUND(SUM(Attrition = 'Yes') * 100 / COUNT(*), 2) AS attrition_rate
from why_people_r_quitting group by Gender order by attrition_rate;


-- insights-
-- male employees tend to have higher attrition rates than female emps tho the difference is not that huge. (its 14.8 and 17.01)
-- suggesting that gender alone is not a strong predictor of employee attrition.