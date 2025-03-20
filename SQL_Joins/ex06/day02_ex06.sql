WITH person_sorted AS (SELECT id 
                FROM person 
                WHERE name IN ('Denis', 'Anna')),
    menu_pizzeria AS (SELECT menu.id, name, pizza_name
                    FROM menu
                    JOIN pizzeria pizz ON menu.pizzeria_id=pizz.id)

SELECT pizza_name, name
FROM person_order po
JOIN menu_pizzeria mp ON po.menu_id=mp.id
JOIN person_sorted ps ON ps.id=po.person_id
ORDER BY 1,2;
