-- Day 03: ORDER BY Practice

-- 1. Lowest salary to highest salary
SELECT *
FROM emplyoees
ORDER BY salary ASC;

-- 2. Highest salary to lowest salary
SELECT *
FROM emplyoees
ORDER BY salary DESC;

-- 3. Selected columns sorted by salary
SELECT fname, dept, salary
FROM emplyoees
ORDER BY salary DESC;

-- 4. Alphabetical order by first name
SELECT *
FROM emplyoees
ORDER BY fname ASC;
