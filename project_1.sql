SHOW DATABASES;
USE customer_db;

SHOW TABLES;

SELECT * FROM customer_shopping;

#1
select gender,sum(purchase_amount) as revenue
from customer_shopping 
group by gender;

#2
select customer_id,purchase_amount
from customer_shopping
where discount='yes' and purchase_amount >= (select avg(purchase_amount)
										     from customer_shopping);



#3
select item_purchased, avg(review_rating) as "average_product_rating"
from customer_shopping 
group by item_purchased
order by average_product_rating desc limit 5;

#4
select shipping_type,round(avg(purchase_amount),2)
from customer_shopping 
where shipping_type in ('Express','Standard')
group by shipping_type;

#5
select subscription_status, count(customer_id) as total_customers, round(sum(purchase_amount),2) as total_revenue, round(avg(purchase_amount),2) as average_spend
from customer_shopping 
group by subscription_status; 

#6
select item_purchased,
round (100 * sum(case when discount_applied='Yes' then 1 else 0 end)/count(*),2) as discount_rate
from customer_shopping
group by item_purchased
order by discount_rate desc
limit 5;

#6
SELECT item_purchased,
       ROUND(
           100 * AVG(discount_applied = 'Yes'),
           2
       ) AS discount_rate
FROM customer_shopping
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

#7
with customer_type as(
select customer_id,previous_purchases,
case 
when previous_purchases = 1 then 'New'
when previous_purchases between 2 and 10 then 'Returning'
else 'Loyal' 
end as customer_segment
from customer_shopping )

select customer_segment,count(*) as 'Number of Customers'
from customer_type
group by customer_segment;

#8
with item_counts as (
select category,item_purchased,count(customer_id) as total_orders,
row_number() over (partition by category order by count(customer_id) desc ) as item_rank
from customer_shopping
group by category,item_purchased)

select item_rank,category,item_purchased,total_orders
from item_counts
where item_rank <=3;

#9
select subscription_status,count(customer_id) as repeated_buyers
from customer_shopping
where previous_purchases > 5
group by subscription_status;

#10
select age_group,sum(purchase_amount) as total_revenue
from customer_shopping 
group by age_group
order by total_revenue desc;