/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
select cn.country, sum(py.amount) as profit
from country as cn
join city as ct on cn.country_id = ct.country_id
join address as ad on ct.city_id = ad.city_id
join customer as cu on ad.address_id = cu.address_id
join rental as re on cu.customer_id = re.customer_id
join payment as py on re.rental_id = py.rental_id
group by cn.country
order by country;
