SELECT name, rating
FROM person_visits pv
RIGHT JOIN pizzeria pizz ON pv.pizzeria_id=pizz.id
WHERE pv.pizzeria_id IS NULL;
