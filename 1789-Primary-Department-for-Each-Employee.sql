# Write your MySQL query statement below
SELECT employee_id, department_id
FROM employee
WHERE primary_flag = 'Y'

UNION

SELECT employee_id, department_id
FROM employee
WHERE employee_id NOT IN (SELECT employee_id FROM employee WHERE primary_flag = 'Y');