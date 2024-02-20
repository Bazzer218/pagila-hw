/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */
select last_name, count(*) as last_name_count from actor group by last_name having count(*) >= 2 order by count(*) DESC;
