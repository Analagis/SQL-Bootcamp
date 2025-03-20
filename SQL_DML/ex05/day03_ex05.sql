WITH selected_order AS (SELECT p.name, pizz.name AS pizzeria_name, order_date
            FROM person_order po
            FULL JOIN person p ON po.person_id=p.id
            FULL JOIN menu on menu.id=po.menu_id
            FULL JOIN pizzeria pizz ON menu.pizzeria_id=pizz.id),
    selected_visit AS (SELECT p.name, pizz.name AS pizzeria_name, visit_date
            FROM person_visits pv
            FULL JOIN person p ON pv.person_id=p.id
            FULL JOIN pizzeria pizz ON pv.pizzeria_id=pizz.id)
SELECT pizzeria_name
FROM selected_visit
WHERE name='Andrey'
EXCEPT
SELECT pizzeria_name
FROM selected_order
WHERE name='Andrey'
ORDER BY 1;