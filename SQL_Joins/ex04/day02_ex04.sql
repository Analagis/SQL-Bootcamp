WITH sorted_menu AS (SELECT * 
                    FROM menu 
                    WHERE pizza_name 
                    IN ('pepperoni pizza', 'mushroom pizza'))
SELECT pizza_name, name AS pizzeria_name, price
FROM sorted_menu sm
INNER JOIN pizzeria pizz ON sm.pizzeria_id=pizz.id
ORDER BY pizza_name, pizzeria_name