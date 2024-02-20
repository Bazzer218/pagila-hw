/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
select f.title
from film as f
join film_category as fc on f.film_id = fc.film_id
where fc.category_id = 8
order by f.title;
