SELECT name
FROM menu 
JOIN person_order po ON po.menu_id = menu.id
JOIN person p ON p.id = po.person_id
WHERE gender = 'female' AND pizza_name IN ('cheese pizza', 'pepperoni pizza')
GROUP BY p.name
HAVING COUNT(DISTINCT pizza_name) = 2
ORDER BY 1;