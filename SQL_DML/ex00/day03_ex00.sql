SELECT pizza_name, price, pizz.name AS pizzeria_name, visit_date
FROM menu 
JOIN pizzeria pizz ON pizz.id = menu.pizzeria_id
JOIN person_visits pv ON menu.pizzeria_id = pv.pizzeria_id
JOIN person p ON p.id = pv.person_id
WHERE (price >= 800 AND price <=1000) AND p.name = 'Kate'
ORDER BY pizza_name, price, pizzeria_name;