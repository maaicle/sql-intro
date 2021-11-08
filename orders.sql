-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
create table orders(
    order_id serial primary key,
    person_id int,
    product_name varchar(30),
    product_price float,
    quantity int
)

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
insert into orders (person_id, product_name, product_price, quantity)
values (1, 'Cheese', 5.75, 2),
    (2, 'Toaster', 10, 1),
    (2, 'Bread', 2.50, 5),
    (3, 'Beer', 12, 1),
    (5, 'Dumptruck', 250500.25, 1);

-- Select all the records from the orders table.
select * from orders;

-- Calculate the total number of products ordered.
select sum(quantity) from orders;

-- Calculate the total order price.
select sum(product_price) from orders;

-- Calculate the total order price by a single person_id.
select 
    person_id,
    sum(product_price * quantity) 
from orders 
where person_id = 2
group by person_id
;