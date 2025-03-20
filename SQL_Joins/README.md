Resume: Learning how to get needed data based on different structures JOINs.

## Contents

1. [Tables](#tables)  
4. [Exercise 00 — Move to the LEFT, move to the RIGHT](#exercise-00-move-to-the-left-move-to-the-right)  
5. [Exercise 01 — Find data gaps](#exercise-01-find-data-gaps)  
6. [Exercise 02 — FULL means ‘completely filled’](#exercise-02-full-means-completely-filled)  
7. [Exercise 03 — Reformat to CTE](#exercise-03-reformat-to-cte)  
8. [Exercise 04 — Find favourite pizzas](#exercise-04-find-favourite-pizzas)
9. [Exercise 05 — Investigate Person Data](#exercise-05-investigate-person-data)
10. [Exercise 06 — favourite pizzas for Denis and Anna](#exercise-06-favourite-pizzas-for-denis-and-anna)
11. [Exercise 07 — Cheapest pizzeria for Dmitriy](#exercise-07-cheapest-pizzeria-for-dmitriy)
12. [Exercise 08 — Continuing to research data](#exercise-08-continuing-to-research-data)
13. [Exercise 09 — Who loves cheese and pepperoni?](#exercise-09-who-loves-cheese-and-pepperoni)
14. [Exercise 10 — Find persons from one city](#exercise-10-find-persons-from-one-city)

## Tables

1. **pizzeria** table (Dictionary Table with available pizzerias)
- field id — primary key
- field name — name of pizzeria
- field rating — average rating of pizzeria (from 0 to 5 points)
2. **person** table (Dictionary Table with persons who loves pizza)
- field id — primary key
- field name — name of person
- field age — age of person
- field gender — gender of person
- field address — address of person
3. **menu** table (Dictionary Table with available menu and price for concrete pizza)
- field id — primary key
- field pizzeria_id — foreign key to pizzeria
- field pizza_name — name of pizza in pizzeria
- field price — price of concrete pizza
4. **person_visits** table (Operational Table with information about visits of pizzeria)
- field id — primary key
- field person_id — foreign key to person
- field pizzeria_id — foreign key to pizzeria
- field visit_date — date (for example 2022-01-01) of person visit 
5. **person_order** table (Operational Table with information about persons orders)
- field id — primary key
- field person_id — foreign key to person
- field menu_id — foreign key to menu
- field order_date — date (for example 2022-01-01) of person order 

People's visit and people's order are different entities and don't contain any correlation between data. For example, a customer can be in a restaurant (just looking at the menu) and in that time place an order in another restaurant by phone or mobile application. Or another case, just be at home and again make a call with order without any visits.

## Exercise 00 — Move to the LEFT, move to the RIGHT

Write a SQL statement that returns a list of pizzerias with the corresponding rating value that have not been visited by people.

## Exercise 01 — Find data gaps

Write a SQL statement that returns the missing days from January 1 through January 10, 2022 (including all days) for visits by people with identifiers 1 or 2 (i.e., days missed by both). Please order by visit days in ascending mode. 

## Exercise 02 — FULL means ‘completely filled’
Write an SQL statement that will return the entire list of names of people who visited (or did not visit) pizzerias during the period from January 1 to January 3, 2022 on one side and the entire list of names of pizzerias that were visited (or did not visit) on the other side. The data sample with the required column names is shown below. Please note the replacement value '-' for `NULL` values in the columns `person_name` and `pizzeria_name`. Please also add the order for all 3 columns.

## Exercise 03 — Reformat to CTE

Let's go back to Exercise #01, rewrite your SQL using the CTE (Common Table Expression) pattern. Please go to the CTE part of your "day generator". The result should look similar to Exercise #01.

## Exercise 04 — Find favourite pizzas

Find complete information about all possible pizzeria names and prices to get mushroom or pepperoni pizza. Then sort the result by pizza name and pizzeria name. The result of the sample data is shown below (please use the same column names in your SQL statement).

## Exercise 05 — Investigate Person Data

Find the names of all females over the age of 25 and sort the result by name. The sample output is shown below.

## Exercise 06 — favourite pizzas for Denis and Anna

Find all pizza names (and corresponding pizzeria names using the `menu` table) ordered by Denis or Anna. Sort a result by both columns. The sample output is shown below.

## Exercise 07 — Cheapest pizzeria for Dmitriy

Find the name of the pizzeria Dmitriy visited on January 8, 2022 and could eat pizza for less than 800 rubles.

## Exercise 08 — Continuing to research data

Find the names of all men from Moscow or Samara who order either pepperoni or mushroom pizza (or both). Please sort the result by person names in descending order. The sample output is shown below.

## Exercise 09 — Who loves cheese and pepperoni?

Find the names of all women who ordered both pepperoni and cheese pizzas (at any time and in any pizzerias). Make sure that the result is ordered by person's name. The sample data is shown below.

## Exercise 10 — Find persons from one city

Find the names of people who live at the same address. Make sure the result is sorted by 1st person's name, 2nd person's name, and shared address. The data sample is shown below. Make sure your column names match the column names below.