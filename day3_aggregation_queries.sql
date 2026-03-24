
-- GROUP BY + HAVING → to find unique values

-- Subquery → to reuse filtered result

-- Aggregation (MAX) → to get final answer
-- leetcode-Biggest Single Number
SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS single_numbers;


-- Employees Whose Manager Left the Company | Easy

SELECT employee_id
FROM Employees e
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM Employees m
      WHERE e.manager_id = m.employee_id
  )
ORDER BY employee_id;select employee_id from

select employee_id from
Employees
where salary < 30000 and manager_id not in(
    select employee_id
    from Employees
)  order by employee_id asc;


---Classes More Than 5 Students | Easy
Select class    
from Courses 
group by class
having count(*)>=5;

--Biggest Single Number
SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS single_numbers;

-----Average Selling Price | Easy

select p.product_id,
ifnull(
    round(sum(u.units*p.price)/sum(u.units),2),
    0
) as average_price
from Prices p
left join UnitsSold u
on p.product_id=u.product_id
and purchase_date between p.start_date and p.end_date
group by p.product_id;