/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
select f.title, fa.film_id, count(fa.actor_id) as actor_count
from film_actor as fa
join film f on fa.film_id = f.film_id
group by fa.film_id, f.title
order by actor_count, title;
