# Write your MySQL query statement below
/*
select  S.product_id, min(year) as first_year, quantity,price
from Sales S join Product P
on S.product_id = P.product_id
group by product_id 
*/
SELECT 
    S.product_id,
    MIN(S.year) AS first_year,
    S.quantity,
    S.price
FROM 
    Sales S
WHERE 
    (S.product_id, S.year) IN (
        SELECT product_id, MIN(year) 
        FROM Sales 
        GROUP BY product_id
    )
GROUP BY 
    S.product_id, S.year, S.quantity, S.price;
