
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
