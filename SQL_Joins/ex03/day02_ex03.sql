WITH person_visits_filtered AS (
    SELECT *
    FROM person_visits
    WHERE person_id BETWEEN 1 AND 2
),
date_range AS (
    SELECT generate_series('2022-01-01', '2022-01-10', INTERVAL '1 day')::date AS visit_day
)
SELECT dr.visit_day AS missing_date
FROM date_range dr
LEFT JOIN person_visits_filtered po ON po.visit_date = dr.visit_day
WHERE po.id IS NULL
ORDER BY dr.visit_day;