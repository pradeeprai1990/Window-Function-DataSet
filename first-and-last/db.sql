-- =====================================================================
-- DAY 5 : FIRST_VALUE & LAST_VALUE — simple examples for DA students
--
-- FIRST_VALUE(col) -> value of col from the FIRST row of the window
-- LAST_VALUE(col)  -> value of col from the LAST  row of the window
--
-- Syntax:
--   FIRST_VALUE(col) OVER (PARTITION BY ... ORDER BY ...)
--   LAST_VALUE(col)  OVER (PARTITION BY ... ORDER BY ...
--                          ROWS BETWEEN UNBOUNDED PRECEDING
--                                   AND UNBOUNDED FOLLOWING)   <- important!
-- =====================================================================

CREATE DATABASE IF NOT EXISTS window_fn_courseNew6;
USE window_fn_courseNew6;


-- ---------------------------------------------------------------------
-- DATASET 1 : employees (8 people in 3 departments)
-- ---------------------------------------------------------------------
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_name  VARCHAR(20),
    dept      VARCHAR(20),
    salary    INT
);

INSERT INTO employees VALUES
('Amit',   'IT',    60000),
('Neha',   'IT',    75000),
('Ravi',   'IT',    90000),
('Pooja',  'HR',    40000),
('Karan',  'HR',    45000),
('Simran', 'HR',    52000),
('Rahul',  'Sales', 35000),
('Anjali', 'Sales', 48000);


-- ---------------------------------------------------------------------
-- DATASET 2 : stock_trades (trades of 2 stocks during one day)
-- ---------------------------------------------------------------------
DROP TABLE IF EXISTS stock_trades;
CREATE TABLE stock_trades (
    stock       VARCHAR(10),
    trade_time  TIME,
    price       INT
);

INSERT INTO stock_trades VALUES
('TCS',  '09:15:00', 3500),
('TCS',  '10:30:00', 3520),
('TCS',  '12:00:00', 3490),
('TCS',  '15:30:00', 3550),
('INFY', '09:15:00', 1500),
('INFY', '11:00:00', 1480),
('INFY', '13:45:00', 1510),
('INFY', '15:30:00', 1525);
