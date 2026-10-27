-- =====================================================================
-- DAY 3 DATASET : exam_results, product_sales  (also used on Day 4)
-- Note: some marks/revenues are deliberately TIED to show how
--       ROW_NUMBER, RANK and DENSE_RANK differ.
-- =====================================================================

CREATE DATABASE IF NOT EXISTS window_fn_course3;
USE window_fn_course3;

DROP TABLE IF EXISTS exam_results;

CREATE TABLE exam_results (
    result_id     INT PRIMARY KEY,
    student_name  VARCHAR(50),
    class_name    VARCHAR(10),
    subject       VARCHAR(20),
    marks         INT
);

INSERT INTO exam_results (result_id, student_name, class_name, subject, marks) VALUES
(1,  'Aman',   '10-A', 'Maths',   88),
(2,  'Bhavya', '10-A', 'Maths',   92),
(3,  'Chirag', '10-A', 'Maths',   88),
(4,  'Deepa',  '10-A', 'Maths',   76),
(5,  'Esha',   '10-B', 'Maths',   95),
(6,  'Farhan', '10-B', 'Maths',   67),
(7,  'Gauri',  '10-B', 'Maths',   95),
(8,  'Harsh',  '10-B', 'Maths',   80),
(9,  'Ira',    '10-C', 'Maths',   72),
(10, 'Jay',    '10-C', 'Maths',   85),
(11, 'Kavya',  '10-C', 'Maths',   85),
(12, 'Laksh',  '10-C', 'Maths',   90),
(13, 'Aman',   '10-A', 'Science', 75),
(14, 'Bhavya', '10-A', 'Science', 81),
(15, 'Chirag', '10-A', 'Science', 90),
(16, 'Deepa',  '10-A', 'Science', 81),
(17, 'Esha',   '10-B', 'Science', 70),
(18, 'Farhan', '10-B', 'Science', 85),
(19, 'Gauri',  '10-B', 'Science', 88),
(20, 'Harsh',  '10-B', 'Science', 85),
(21, 'Ira',    '10-C', 'Science', 93),
(22, 'Jay',    '10-C', 'Science', 77),
(23, 'Kavya',  '10-C', 'Science', 93),
(24, 'Laksh',  '10-C', 'Science', 60);


DROP TABLE IF EXISTS product_sales;

CREATE TABLE product_sales (
    product_id    INT PRIMARY KEY,
    product_name  VARCHAR(50),
    category      VARCHAR(30),
    units_sold    INT,
    revenue       INT
);

INSERT INTO product_sales (product_id, product_name, category, units_sold, revenue) VALUES
(1,  'Galaxy S24',      'Mobiles',     150, 10500000),
(2,  'iPhone 15',       'Mobiles',     120,  9600000),
(3,  'Pixel 8',         'Mobiles',      80,  4800000),
(4,  'Redmi Note 13',   'Mobiles',     400,  7200000),
(5,  'MacBook Air',     'Laptops',      60,  6600000),
(6,  'Dell XPS',        'Laptops',      40,  5400000),
(7,  'HP Pavilion',     'Laptops',      90,  5400000),
(8,  'Lenovo IdeaPad',  'Laptops',     110,  5500000),
(9,  'AirPods',         'Accessories', 200,  3000000),
(10, 'Boat Headphones', 'Accessories', 900,  1800000),
(11, 'Logitech Mouse',  'Accessories', 700,  1050000),
(12, 'Anker Charger',   'Accessories', 650,  1300000),
(13, 'Samsung Watch',   'Accessories', 100,  2500000);

SELECT * FROM exam_results;
SELECT * FROM product_sales;
