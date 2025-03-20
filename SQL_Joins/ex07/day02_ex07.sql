SELECT pizz.name AS pizzeria_name
FROM menu 
JOIN pizzeria pizz ON pizz.id = menu.pizzeria_id
JOIN person_visits pv ON menu.pizzeria_id = pv.pizzeria_id
JOIN person p ON p.id = pv.person_id
WHERE price < 800 AND p.name = 'Dmitriy' AND visit_date = '2022-01-08';