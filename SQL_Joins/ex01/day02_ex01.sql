SELECT g::date AS missing_date
FROM (SELECT * FROM person_visits po WHERE person_id BETWEEN 1 AND 2) as po 
RIGHT JOIN generate_series('2022-01-01','2022-01-10', INTERVAL '1 day') AS g ON po.visit_date=g
WHERE po.id IS NULL
ORDER BY 1