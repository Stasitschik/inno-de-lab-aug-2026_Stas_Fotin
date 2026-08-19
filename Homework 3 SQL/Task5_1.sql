select 
	customers.first_name,
	customers.last_name,
	orders.amount
from orders
left join customers 
	on customers.customer_id = orders.customer_id
where orders.amount = (select MAX(amount) from orders)