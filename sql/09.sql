/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select first_name, last_name, sum(amount)
from staff
join payment on staff.staff_id = payment.staff_id
where payment_date::text LIKE '2020-01%'
group by staff.first_name, staff.last_name
order by sum;
