create database df_orders;

use df_orders;

select * from sales_data;

drop table sales_data;

CREATE TABLE sales_data (
    order_id INT PRIMARY KEY,
    order_date DATE,
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_id VARCHAR(50),
    quantity INT,
    discount DECIMAL(5,2),
    sale_price DECIMAL(10,2),
    profit DECIMAL(10,2)
);

select * from sales_data;

### DOING DATA ANALYTICS


#1 find top 10 highest revenue gerarating product?

select product_id,sum(sale_price) as total_revenue
from sales_data
group by product_id
order by total_revenue desc
limit 10 ;

#2 find top 5 highest selling product in each region

with cte  as
(select region,product_id,sum(sale_price) as sales
from sales_data
group by region,product_id
order by region,product_id desc)
select * from
(select * ,
row_number() over (partition by region order by sales desc) as rn
from cte) A
where rn <= 5;

#3 find month over month growth comaparision for 2022 and 2023 sales eg jan 2022 vs jan 2023 

with cte as
(select year(order_date) as order_year,month(order_date) as order_month,sum(sale_price) as sales
from sales_data
group by order_year,order_month
order by order_year,order_month
)
select order_month,
sum(case when order_year=2022 then sales else 0 end ) as order_year_2022,
sum(case when order_year=2023 then sales else 0 end ) as order_year_2023 
from cte
group by order_month
order by order_month ;


#4 for each category which month had higest sale

with cte as
(select category, DATE_FORMAT(order_date, '%Y-%m') as order_year_month,sum(sale_price) as sales
from sales_data
group by category,order_year_month)
select * from
(select * ,
row_number() over(partition by category order by sales) as rn
from cte) as a
where rn =1 ;

#5 which subcategory  has highest growth by profit in 2023 compare to 2022

with cte as
(select sub_category,year(order_date) as order_year,sum(sale_price) as sales
from sales_data
group by sub_category,order_year
),
cte2 as
(select sub_category,
sum(case when order_year=2022 then sales else 0 end ) as sales_2022,
sum(case when order_year=2023 then sales else 0 end ) as sales_2023 
from cte
group by sub_category)
select *,
(sales_2023-sales_2022)*100/sales_2022 as percentage   # be careful read what is question if it withot percentage ans will be diff
from cte2 
order by percentage desc
limit 1;
