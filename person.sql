-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
create table person(
    id serial primary key,
    name varchar(30),
    age int,
    height int,
    city varchar(30),
    favorite_color varchar(30)
);

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
insert into person (name, age, height, city, favorite_color)
values ('Bill', 24, 182, 'Salt Lake City', 'Blue'),
('April', 28, 190, 'West Valley City', 'Green'),
('Casey', 30, 165, 'Salt Lake City', 'Purple'),
('Donny', 18, 150, 'Magna', 'Blue'),
('Richard', 45, 198, 'Sandy', 'Pink')
;

-- Select all the people in the person table by height from tallest to shortest.
select * from person order by height desc;

-- Select all the people in the person table by height from shortest to tallest.
select * from person order by height;

-- Select all the people in the person table by age from oldest to youngest.
select * from person order by age desc;

-- Select all the people in the person table older than age 20.
select * 
from person 
where age > 20;

-- Select all the people in the person table that are exactly 18.
select * 
from person 
where age = 18;

-- Select all the people in the person table that are less than 20 and older than 30.
select * 
from person 
where age < 20
or age > 30;

-- Select all the people in the person table that are not 27 (use not equals).
select * 
from person 
where age <> 27
;

-- Select all the people in the person table where their favorite color is not red.
select * 
from person 
where favorite_color <> 'Red'
;

-- Select all the people in the person table where their favorite color is not red and is not blue.
select * 
from person 
where favorite_color not in ('Red', 'Blue')
;

-- Select all the people in the person table where their favorite color is orange or green.
select * 
from person 
where favorite_color = ('Orange', 'Green')
;

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
select * 
from person 
where favorite_color in ('Orange', 'Green', 'Blue')
;

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
select * 
from person 
where favorite_color in ('Yellow', 'Purple')
;