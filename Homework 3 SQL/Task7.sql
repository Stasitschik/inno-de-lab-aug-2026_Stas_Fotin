select 
	CONCAT_WS(' ',customers.first_name, customers.last_name) as full_name,
	customers.country,
	SUM(orders.order_id) as total_orders,
	SUM(orders.amount) as total_amount
from customers 
left join orders
	on orders.customer_id = customers.customer_id
group by customers.customer_id
having SUM(orders.order_id) >= 2
