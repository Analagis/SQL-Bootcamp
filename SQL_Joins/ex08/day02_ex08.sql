SELECT DISTINCT name
FROM menu 
JOIN person_order po ON po.menu_id = menu.id
JOIN person p ON p.id = po.person_id
WHERE gender = 'male' AND address IN ('Moscow', 'Samara')
ORDER BY 1 DESC;