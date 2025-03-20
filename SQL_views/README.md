Resume: Learning how to use a virtual view and physical snapshot of data.

## Contents

1. [Tables](#tables)  
4. [Exercise 00 — Let’s create separated views for persons](#exercise-00-lets-create-separated-views-for-persons)  
5. [Exercise 01 — From parts to common view](#exercise-01-from-parts-to-common-view)  
6. [Exercise 02 — “Store” generated dates in one place](#exercise-02-store-generated-dates-in-one-place)  
7. [Exercise 03 — Find missing visit days with Database View](#exercise-03-find-missing-visit-days-with-database-view)  
8. [Exercise 04 — Let’s find something from Set Theory](#exercise-04-lets-find-something-from-set-theory)
9. [Exercise 05 — Let’s calculate a discount price for each person](#exercise-05-lets-calculate-a-discount-price-for-each-person)
10. [Exercise 06 — Materialization from virtualization](#exercise-06-materialization-from-virtualization)
11. [Exercise 07 — Refresh our state](#exercise-07-refresh-our-state)
12. [Exercise 08 — Just clear our database](#exercise-08-just-clear-our-database)

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

## Exercise 00 — Let’s create separated views for persons

Create 2 Database Views (with similar attributes as the original table) based on a simple filtering by gender of persons. Set the corresponding names for the database views: `v_persons_female` and `v_persons_male`.

## Exercise 01 — From parts to common view

Use 2 Database Views from Exercise #00 and write SQL to get female and male person names in one list. Please specify the order by person name. The sample data is shown below.

## Exercise 02 — "Store" generated dates in one place

Create a Database View (with name `v_generated_dates`) which should "store" generated dates from January 1st to January 31st, 2022 in type DATE. Don't forget the order of the generated_date column.

## Exercise 03 — Find missing visit days with Database View

Write a SQL statement that returns missing days for people's visits in January 2022. Use the `v_generated_dates` view for this task and sort the result by the missing_date column. The sample data is shown below.

## Exercise 04 — Let’s find something from Set Theory

Write an SQL statement that satisfies the formula `(R - S)∪(S - R)` .
Where R is the `person_visits` table with a filter through January 2, 2022, S is also the `person_visits` table but with a different filter through January 6, 2022. Please do your calculations with sets under the `person_id` column and this column will be alone in a result. Please sort the result by the `person_id` column and present your final SQL in the `v_symmetric_union` (*) database view.

## Exercise 05 — Let’s calculate a discount price for each person

Create a Database View `v_price_with_discount` that returns the orders of a person with person name, pizza name, real price and calculated column `discount_price` (with applied 10% discount and satisfying formula `price - price*0.1`). Please sort the result by person names and pizza names and convert the `discount_price` column to integer type. See a sample result below.

## Exercise 06 — Materialization from virtualization

Create a Materialized View `mv_dmitriy_visits_and_eats` (with data included) based on the SQL statement that finds the name of the pizzeria where Dmitriy visited on January 8, 2022 and could eat pizzas for less than 800 rubles (this SQL can be found at Day #02 Exercise #07). 

## Exercise 07 — Refresh our state

Let's refresh the data in our Materialized View `mv_dmitriy_visits_and_eats` from Exercise #06. Before this action, please create another Dmitriy visit that satisfies the SQL clause of the Materialized View except pizzeria, which we can see in a result from Exercise #06.
After adding a new visit, please update a data state for `mv_dmitriy_visits_and_eats`.

## Exercise 08 — Just clear our database

After all our exercises, we have a couple of Virtual Tables and a Materialized View. Let's drop them!


