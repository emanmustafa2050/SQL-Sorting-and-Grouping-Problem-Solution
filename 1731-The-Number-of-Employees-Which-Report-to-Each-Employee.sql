# Write your MySQL query statement below
/*select employee_id , name , count(*) as reports_count , avg(age) as average_age
from Employees
group  by reports_to
having employee_id in (
    select reports_to from Employees
) 

 order by employee_id*/

 SELECT e.employee_id, e.name, COUNT(emp.employee_id) AS reports_count, 
 ROUND(AVG(emp.age), 0) AS average_age
FROM Employees e
JOIN Employees emp
ON e.employee_id = emp.reports_to
GROUP BY e.employee_id, e.name
ORDER BY e.employee_id;
