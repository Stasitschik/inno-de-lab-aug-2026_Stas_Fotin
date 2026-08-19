select 
	customers.first_name,
	customers.last_name,
	orders.item,
	orders.amount,
	SUM(orders.amount) over(order by orders.customer_id) as total_by_customer
from orders
left join customers 
	on customers.customer_id = orders.customer_id 