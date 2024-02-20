/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */
select f.film_id, f.title, f.language_id, l.name
from film as f
join language as l on f.language_id = l.language_id
where f.title LIKE 'K%' or f.title LIKE 'Q%'
group by f.film_id, l.name
order by f.title;
