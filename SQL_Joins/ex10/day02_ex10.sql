WITH person1 AS (SELECT name as person_name1, address 
                FROM person),
    person2 AS (SELECT name as person_name2, address 
                FROM person)
SELECT person_name1, person_name2, p1.address AS common_address
FROM person1 p1
LEFT JOIN person2 p2 ON p1.address=p2.address
WHERE person_name1!=person_name2 AND p1.person_name1 < p2.person_name2
ORDER BY 1,2,3;
