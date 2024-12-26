# SQL Subquery Returning Multiple Rows

This repository demonstrates a common SQL error where a subquery used in a `WHERE` clause returns more than one row, leading to a database error.  The example shows how to fix the issue by ensuring that the subquery returns only one row. The problematic code is in `bug.sql` and the solution is in `bugSolution.sql`.

## Problem
The original query attempts to retrieve employees from the 'Sales' department. However, if the `departments` table has multiple entries with the name 'Sales' (maybe due to inconsistencies or poor data management), the subquery will return multiple `id` values, resulting in a database error.

## Solution
The solution involves modifying the query to handle multiple rows returned by the subquery. One approach is using `IN` operator, which allows checking if an employee's department id is among the set of IDs returned by the subquery. Another approach would involve using aggregation functions to select a single id (like selecting the minimum or maximum). 
