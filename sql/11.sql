/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
select f.film_id, f.title, count(i.film_id)
from film f
join inventory i on f.film_id = i.film_id
group by i.film_id, f.film_id, f.title
having f.title LIKE 'H%'
order by f.title DESC;
