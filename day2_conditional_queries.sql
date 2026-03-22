-- Problem: Big Countries
-- Link: https://leetcode.com/problems/big-countries/
-- Concept: WHERE, OR

SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;


   -- Problem: Find Customer Referee
-- Link: https://leetcode.com/problems/find-customer-referee/
-- Concept: WHERE, NOT

SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;

-- Problem: Patients With a Condition
-- Link: https://leetcode.com/problems/patients-with-a-condition/
-- Concept: LIKE

SELECT *
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';

-- Problem: Second Highest Salary
-- Link: https://leetcode.com/problems/second-highest-salary/
-- Concept: ORDER BY, LIMIT, OFFSET

SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;      

--Customers Who Bought All Products | Medium
select customer_id from
customer group by customer_id
having count(distinct product_key)=(
    select count(*) from product
);