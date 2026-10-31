-- =====================================================================
-- SQL WINDOW FRAMES : PRACTICE QUESTIONS (basic)
-- Dataset: window_frames_dataset.sql  (tables: sales, region_sales, orders)
-- Concepts: ROWS / RANGE / GROUPS, PRECEDING / CURRENT ROW / FOLLOWING,
--           default frames, LAST_VALUE trap, frames inside partitions
-- Try them yourself first, then check window_frames_solutions.sql
-- =====================================================================
USE sql_window_frames;


-- ---------------------------------------------------------------------
-- PART A : ROWS FRAMES  (table: sales)
-- ---------------------------------------------------------------------

-- Q1. Show day, amount and a running total of amount (ORDER BY day_no).


-- Q2. Show day, amount and a running COUNT of days so far.


-- Q3. Show the 3-day moving average of amount (2 previous days + today), rounded to 2 decimals.


-- Q4. Show the 2-day moving SUM (yesterday + today).


-- Q5. Show the sum of each day with its neighbours (1 day before, the day, 1 day after).


-- Q6. Show the grand total of the week on every row, and each day's % of that total (2 decimals).


-- Q7. Show the remaining total: today's amount plus every day after it.


-- Q8. Show the MAX amount of the whole week on every row.


-- Q9. Show the highest amount seen so far (running MAX).


-- Q10. Using only a frame (no LEAD), show the next day's amount and the difference
--      (next day - today).


-- Q11. Show the average of the 2 PREVIOUS days only (do not include today).


-- Q12. Show the lowest amount among today and the next 2 days.


-- ---------------------------------------------------------------------
-- PART B : FIRST_VALUE / LAST_VALUE  (table: sales)
-- ---------------------------------------------------------------------

-- Q13. Show the first day's amount (Mon) on every row.


-- Q14. Run LAST_VALUE(amount) OVER (ORDER BY day_no). Explain the result, then fix it so
--      every row shows Sun's amount (350).


-- Q15. Show the amount of the 3rd day of the week (Wed) on every row using NTH_VALUE.


-- ---------------------------------------------------------------------
-- PART C : FRAMES INSIDE PARTITIONS  (table: region_sales)
-- ---------------------------------------------------------------------

-- Q16. Show a running total of amount for each region (it must restart for every region).


-- Q17. Show each region's total on every row of that region.


-- Q18. Show the 2-day moving sum for each region.


-- Q19. Show the last amount of each region on every row of that region.


-- ---------------------------------------------------------------------
-- PART D : ROWS vs RANGE vs GROUPS  (table: orders - note Jan-02 appears twice)
-- ---------------------------------------------------------------------

-- Q20. Show order_date, amount and two running totals side by side: one with ROWS and
--      one with RANGE. Why do the two Jan-02 rows differ?


-- Q21. Make the ROWS running total deterministic by adding a tie-breaker to the ORDER BY.


-- Q22. Run SUM(amount) OVER (ORDER BY order_date) with NO frame. Does it match rows_total
--      or range_total from the question above? Why?


-- Q23. Using RANGE, show how many orders share the same date as the current order.


-- Q24. Show the total of orders in the last 2 calendar days (today and the day before),
--      counted by DATE value, not by rows.


-- Q25. PostgreSQL / SQLite only: show the total of the current date group plus the
--      previous date group, using GROUPS.


-- ---------------------------------------------------------------------
-- PART E : PREDICT THE OUTPUT  (work it out on paper first, then run it)
-- ---------------------------------------------------------------------

-- Q26. What value does this give for Thu?
--      SUM(amount) OVER (ORDER BY day_no ROWS BETWEEN 2 PRECEDING AND 1 FOLLOWING)


-- Q27. What value does this give for Mon and for Sun?
--      COUNT(*) OVER (ORDER BY day_no ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING)

