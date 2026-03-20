
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