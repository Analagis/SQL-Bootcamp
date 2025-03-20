Resume: Learning how to change data based on DML language.

## Contents

1. [Tables](#tables)  
4. [Exercise 00 — Let’s find appropriate prices for Kate](#exercise-00-lets-find-appropriate-prices-for-kate)  
5. [Exercise 01 — Let’s find forgotten menus](#exercise-01-lets-find-forgotten-menus)  
6. [Exercise 02 — Let’s find forgotten pizza and pizzerias](#exercise-02-lets-find-forgotten-pizza-and-pizzerias)  
7. [Exercise 03 — Let’s compare visits](#exercise-03-lets-compare-visits)  
8. [Exercise 04 — Let’s compare orders](#exercise-04-lets-compare-orders)
9. [Exercise 05 — Visited but did not make any order](#exercise-05-visited-but-did-not-make-any-order)
10. [Exercise 06 — Find price-similarity pizzas](#exercise-06-find-price-similarity-pizzas)
11. [Exercise 07 — Let’s cook a new type of pizza](#exercise-07-lets-cook-a-new-type-of-pizza)
12. [Exercise 08 — Let’s cook a new type of pizza with more dynamics](#exercise-08-lets-cook-a-new-type-of-pizza-with-more-dynamics)
13. [Exercise 09 — New pizza means new visits](#exercise-09-new-pizza-means-new-visits)
14. [Exercise 10 — New visits means new orders](#exercise-10-new-visits-means-new-orders)
15. [Exercise 11 — “Improve” a price for clients](#exercise-11-improve-a-price-for-clients)    
16. [Exercise 12 — New orders are coming!](#exercise-12-new-orders-are-coming)
17. [Exercise 13 — Money back to our customers](#exercise-13-money-back-to-our-customers)

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

Persons' visit and persons' order are different entities and don't contain any correlation between data. For example, a client can be in one restraunt (just looking at menu) and in this time make an order in different one by phone or by mobile application. Or another case,  just be at home and again make a call with order without any visits.

## Exercise 00 — Let’s find appropriate prices for Kate
Write a SQL statement that returns a list of pizza names, pizza prices, pizzeria names, and visit dates for Kate and for prices ranging from 800 to 1000 rubles. Please sort by pizza, price, and pizzeria name. See a sample of the data below.

## Exercise 01 — Let’s find forgotten menus

Find all menu identifiers that are not ordered by anyone. The result should be sorted by identifier. The sample output is shown below.

## Exercise 02 — Let’s find forgotten pizza and pizzerias

Use the SQL statement from Exercise #01 and display the names of pizzas from the pizzeria that no one has ordered, including the corresponding prices. The result should be sorted by pizza name and price. The sample output data is shown below.

## Exercise 03 — Let’s compare visits

Find pizzerias that have been visited more often by women or by men. Save duplicates for any SQL operators with sets (UNION ALL, EXCEPT ALL, INTERSECT ALL constructions). Please sort a result by the name of the pizzeria. The sample data is shown below.

## Exercise 04 — Let’s compare orders

Find a union of pizzerias that have orders from either women or men. In other words, you should find a set of names of pizzerias that have been ordered only by women and make "UNION" operation with set of names of pizzerias that have been ordered only by men. Please be careful with word "only" for both genders. For all SQL operators with sets don't store duplicates (`UNION`, `EXCEPT`, `INTERSECT`).  Please sort a result by the name of the pizzeria. The sample data is shown below.

## Exercise 05 — Visited but did not make any order

Write an SQL statement that returns a list of pizzerias that Andrey visited but did not order from. Please order by the name of the pizzeria. The sample data is shown below.

## Exercise 06 — Find price-similarity pizzas

Find the same pizza names that have the same price, but from different pizzerias. Make sure that the result is ordered by pizza name. The data sample is shown below. Please make sure that your column names match the column names below.

## Exercise 07 — Let’s cook a new type of pizza

Register a new pizza with the name "greek pizza" (use id = 19) with the price of 800 rubles in the restaurant "Dominos" (pizzeria_id = 2).

## Exercise 08 — Let’s cook a new type of pizza with more dynamics

Register a new pizza with the name "sicilian pizza" (whose id should be calculated by the formula "maximum id value + 1") with the price of 900 rubles in the restaurant "Dominos" (please use internal query to get the identifier of the pizzeria).

## Exercise 09 — New pizza means new visits

Record new visits to Domino's restaurant by Denis and Irina on February 24, 2022.

## Exercise 10 — New visits means new orders

Register new orders from Denis and Irina on February 24, 2022 for the new menu with "sicilian pizza".

## Exercise 11 — “Improve” a price for clients

Change the price of "greek pizza" to -10% of the current value.

## Exercise 12 — New orders are coming!

Register new orders of all persons for "greek pizza" on February 25, 2022.

## Exercise 13 — Money back to our customers

Write 2 SQL (DML) statements that delete all new orders from Exercise #12 based on the order date. Then delete "greek pizza" from the menu. 