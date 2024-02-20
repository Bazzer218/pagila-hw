/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
select c.name, count(f.film_id) as sum
from category as c
join film_category as fc on c.category_id = fc.category_id
join film as f on fc.film_id = f.film_id
join language as l on f.language_id = l.language_id
where l.name::text ILIKE 'English'
group by c.name;
