# Write your MySQL query statement below
/*select A1.activity_date  as day , count(A1.user_id)
from Activity A1 join Activity A2 
where DATEDIFF(A1.activity_date,A2.activity_date)=1
group by A1.activity_date*/
SELECT activity_date as day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;
