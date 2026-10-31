with revTable as (
SELECT sale_date,
 SUM(revenue) AS daily_revenue
 FROM daily_sales
GROUP BY sale_date
ORDER BY sale_date
)
select 
sale_date,
daily_revenue,
sum(daily_revenue) 
over(order by sale_date rows between unbounded preceding and current row)
as running_revenue
 from revTable;
 
 
 With t as (
 SELECT region, sale_date,
 SUM(revenue) AS daily_revenue

FROM daily_sales
GROUP BY region, sale_date
ORDER BY region, sale_date
)
select 
region,sale_date,daily_revenue,
sum(daily_revenue) over(partition by region order by sale_date rows between unbounded preceding and current row)
as running_revenue from t;


