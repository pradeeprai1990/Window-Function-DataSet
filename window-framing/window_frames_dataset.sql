-- SQL Window Frames practice dataset (small tables)
-- Database: sql_window_frames   |   Written for MySQL 8+
-- PostgreSQL: run CREATE DATABASE, connect with \c sql_window_frames, and skip the USE line

CREATE DATABASE IF NOT EXISTS sql_window_frames;
USE sql_window_frames;

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
  day_no INT,
  day VARCHAR(3),
  amount INT
);
INSERT INTO sales (day_no, day, amount) VALUES
  (1, 'Mon', 100),
  (2, 'Tue', 200),
  (3, 'Wed', 150),
  (4, 'Thu', 300),
  (5, 'Fri', 250),
  (6, 'Sat', 400),
  (7, 'Sun', 350);

DROP TABLE IF EXISTS region_sales;
CREATE TABLE region_sales (
  region VARCHAR(10),
  day_no INT,
  day VARCHAR(3),
  amount INT
);
INSERT INTO region_sales (region, day_no, day, amount) VALUES
  ('North', 1, 'Mon', 100),
  ('North', 2, 'Tue', 200),
  ('North', 3, 'Wed', 150),
  ('South', 1, 'Mon', 300),
  ('South', 2, 'Tue', 250),
  ('South', 3, 'Wed', 400);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  order_id INT,
  order_date DATE,
  amount INT
);
INSERT INTO orders (order_id, order_date, amount) VALUES
  (101, '2026-01-01', 100),
  (102, '2026-01-02', 200),
  (103, '2026-01-02', 300),
  (104, '2026-01-03', 400),
  (105, '2026-01-05', 150);
