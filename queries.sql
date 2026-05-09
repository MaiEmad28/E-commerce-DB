#Write an SQL query to generate a daily report of the total revenue for a specific date
select orders.order_date,sum(orders.order_total_amount),count(orders.order_id)
from orders
where orders.order_date='2026-05-02';
