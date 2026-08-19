select 
	country,
	count(customer_id) as count
from customers
group by country
