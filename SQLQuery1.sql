Select * from pizza_sales

Select pizza_size, SUM(total_price) AS total_sales, SUM(total_price)*100 / (SELECT sum(total_price) from pizza_sales) AS PCT from pizza_sales GROUP BY pizza_size
ORDER BY PCT DESC

Select pizza_category ,  SUM(quantity) AS Total_Pizza_Sold from pizza_sales GROUP BY pizza_category

Select TOP 5 pizza_name, sum(quantity) as Total_Pizzas_Sold from pizza_sales GROUP BY pizza_name ORDER BY sum(quantity) DESC

Select TOP 5 pizza_name, sum(quantity) as Total_Pizzas_Sold from pizza_sales GROUP BY pizza_name ORDER BY sum(quantity) ASC