SELECT pizza_name, price, name AS pizzeria_name
FROM menu
JOIN pizzeria piz ON piz.id=menu.pizzeria_id 
WHERE menu.id NOT IN (SELECT menu_id FROM person_order)
ORDER BY 1,2;