CREATE VIEW v_price_with_discount AS
WITH selected AS (SELECT * FROM person_order po
                JOIN menu on menu.id = po.menu_id
                JOIN person p ON p.id=po.person_id)
SELECT name, pizza_name, price, (price - price*0.1)::int AS discount_price
FROM selected
ORDER BY 1,2;

