-- Add 3 new artists to the artist table. (It already exists.)
insert into artist (name)
values ('Beach House'),
    ('Archspire'),
    ('Full Of Hell');

-- Select 10 artists in reverse alphabetical order.
select * 
from artist 
order by name desc
limit 10
;

-- Select 5 artists in alphabetical order.
select * 
from artist 
order by name
limit 5
;

-- Select all artists that start with the word ‘Black’.
select * 
from artist 
where name like ('Black%')
;

-- Select all artists that contain the word ‘Black’.
select * 
from artist 
where name like ('%Black%')
;