-- order_id
-- customer_id
-- order_date
-- order_amount

-- find the eact customer latest order and total order_amount



WITH LEATEST_ORDERS AS (
SELECT A.* , ROW_NUMBER()OVER(PARTITION BY customer_id ORDER BY order_date DESC) AS RN ,
sum(order_amount)over(partition by customer_id order by order_id) as total_amount FROM ORDERS A )
SELECT order_id,customer_id,order_date,total_amount from LEATEST_ORDERS where rn=1 ;