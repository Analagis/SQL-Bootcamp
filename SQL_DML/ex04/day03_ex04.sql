WITH selected AS (SELECT gender, pizz.name
            FROM person_order po
            FULL JOIN person p ON po.person_id=p.id
            FULL JOIN menu on menu.id=po.menu_id
            FULL JOIN pizzeria pizz ON menu.pizzeria_id=pizz.id)
SELECT s1.name AS pizzeria_name FROM (
SELECT COUNT(*) AS count1, name
FROM selected 
WHERE gender='female'
GROUP BY name) s1
FULL JOIN (
SELECT COUNT(*) AS count2, name 
FROM selected 
WHERE gender='male'
GROUP BY name) s2
ON s1.name=s2.name
WHERE count1 IS NULL OR count2 IS NULL
ORDER BY 1;