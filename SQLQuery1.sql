/*1. Total revenue*/


select sum(total_price) as Total_Revenue
from pizza_sales

select * from pizza_sales

2. Avg. order value
select sum(total_price) / count(distinct order_id) 
as Average_Order_Value
from pizza_sales

3. Total Pizzas Sold
select sum(quantity) as Total_Pizzas_Sold
from pizza_sales



4. Total Orders Placed

select count(distinct order_id) as Total_Orders_Placed
from pizza_sales

5. Avg. Pizza per order

select cast(cast(sum(quantity) as decimal(10,2)) / 
cast(count(distinct order_id) as decimal (10,2)) as decimal (10,2)) 
as 'Avg. Pizza per Order'
from pizza_sales

select * from pizza_sales
use pizza

6. Day-Wise Trend in order

select datename(dw,order_date) as Order_day, 
count(distinct order_id) as Total_Orders
from pizza_sales
group by datename(dw,order_date)
order by Total_Orders

7. Monthly Trends

select datename(month, order_date) as Month, 
count(distinct order_id) as Total_Orders
from pizza_sales
group by datename(month, order_date)
order by Total_Orders desc

8. % by Categories 

select pizza_category, sum(total_price)  / 
(select sum(total_price) from pizza_sales)*100 
as 'PCT by Categories'
from pizza_sales
group by pizza_category

9. % by Pizza Size 

select pizza_size, sum(total_price) as Total_sales, 
cast(sum(total_price) * 100/
(select sum (total_price) from pizza_sales) as decimal (10,2)) 
as 'PCT by Pizza Size'
from pizza_sales
group by pizza_size
order by 'PCT by Pizza Size' desc

10. top 5 pizza names by revenue

select top 5 pizza_name, sum(total_price) 
as Total_revenue
from pizza_sales
group by pizza_name
order by Total_revenue desc

11. bottom 5 pizzas by revenue
select top 5 pizza_name, sum(total_price) 
as Total_revenue
from pizza_sales
group by pizza_name
order by Total_revenue asc

12. top 5 pizzas by quantity

SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC

13. bottom 5 pizzas by quantity

SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold asc

14. top 5 pizzas by total_orders
SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC

15. bottom 5 pizzas by total_orders
SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders asc




select * from pizza_sales








