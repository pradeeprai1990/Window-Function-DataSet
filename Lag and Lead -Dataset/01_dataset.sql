-- =====================================================================
-- DAY 5 DATASET : monthly_sales, user_orders
-- =====================================================================

CREATE DATABASE IF NOT EXISTS window_fn_course4;
USE window_fn_course4;

DROP TABLE IF EXISTS monthly_sales;

CREATE TABLE monthly_sales (
    sale_month  DATE,          -- first day of the month
    region      VARCHAR(20),
    revenue     INT,
    PRIMARY KEY (sale_month, region)
);

INSERT INTO monthly_sales (sale_month, region, revenue) VALUES
('2025-01-01', 'North', 120000), ('2025-01-01', 'South',  90000),
('2025-02-01', 'North', 135000), ('2025-02-01', 'South',  95000),
('2025-03-01', 'North', 128000), ('2025-03-01', 'South', 110000),
('2025-04-01', 'North', 150000), ('2025-04-01', 'South', 105000),
('2025-05-01', 'North', 162000), ('2025-05-01', 'South',  99000),
('2025-06-01', 'North', 158000), ('2025-06-01', 'South', 120000),
('2025-07-01', 'North', 170000), ('2025-07-01', 'South', 125000),
('2025-08-01', 'North', 165000), ('2025-08-01', 'South', 118000),
('2025-09-01', 'North', 180000), ('2025-09-01', 'South', 130000),
('2025-10-01', 'North', 195000), ('2025-10-01', 'South', 142000),
('2025-11-01', 'North', 210000), ('2025-11-01', 'South', 150000),
('2025-12-01', 'North', 240000), ('2025-12-01', 'South', 175000);


DROP TABLE IF EXISTS user_orders;

CREATE TABLE user_orders (
    order_id     INT PRIMARY KEY,
    customer_id  INT,
    order_date   DATE,
    amount       INT
);

INSERT INTO user_orders (order_id, customer_id, order_date, amount) VALUES
(1,  101, '2025-01-05', 1200),
(2,  101, '2025-01-20',  800),
(3,  101, '2025-02-14', 1500),
(4,  101, '2025-04-01',  600),
(5,  102, '2025-01-10', 3000),
(6,  102, '2025-03-15', 2500),
(7,  102, '2025-03-28', 4000),
(8,  103, '2025-02-01',  700),
(9,  103, '2025-02-03',  900),
(10, 103, '2025-02-25', 1100),
(11, 103, '2025-05-10',  650),
(12, 104, '2025-03-03', 5000),
(13, 105, '2025-01-25',  450),
(14, 105, '2025-02-25',  500),
(15, 105, '2025-03-25',  550);

SELECT * FROM monthly_sales;
SELECT * FROM user_orders;
