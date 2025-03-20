WITH selected AS (SELECT name, pizza_name, price
            FROM menu
            FULL JOIN pizzeria pizz ON menu.pizzeria_id=pizz.id)
SELECT s1.pizza_name, s1.name AS pizzeria_name_1, s2.name AS pizzeria_name_2, s1.price
FROM selected s1
JOIN selected s2 ON (s1.pizza_name=s2.pizza_name AND s1.price=s2.price)
WHERE s1.name!=s2.name AND s1.name<s2.name
ORDER BY s1.pizza_name;