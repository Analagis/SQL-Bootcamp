WITH selected AS (SELECT gender, pizz.name
            FROM person_visits pv
            FULL JOIN person p ON pv.person_id=p.id
            FULL JOIN pizzeria pizz ON pv.pizzeria_id=pizz.id)
SELECT s1.name AS pizzeria_name FROM (
SELECT COUNT(*) AS count1, name
FROM selected 
WHERE gender='female'
GROUP BY name) s1
JOIN (
SELECT COUNT(*) AS count2, name 
FROM selected 
WHERE gender='male'
GROUP BY name) s2
ON s1.name=s2.name
WHERE count1!=count2
ORDER BY 1;