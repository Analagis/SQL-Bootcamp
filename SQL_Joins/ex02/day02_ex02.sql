SELECT COALESCE(person_name, '-') AS person_name, visit_date, COALESCE(name, '-') AS pizzeria_name
FROM person_visits po
RIGHT JOIN generate_series('2022-01-01','2022-01-03', INTERVAL '1 day') AS g ON po.visit_date=g
FULL JOIN (SELECT name as person_name, id FROM person) p ON p.id=po.person_id
FULL JOIN pizzeria pizz ON pizz.id=po.pizzeria_id
ORDER BY 1,2,3;