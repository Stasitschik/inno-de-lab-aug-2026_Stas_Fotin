select 
	shippings.status,	
	customers.first_name,
	customers.last_name
from shippings
left join customers 
	on customers.customer_id = shippings.customer