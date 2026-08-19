select 
	item,
	count(order_id) as count,
	AVG(amount) as avg_amount
from orders
group by item
