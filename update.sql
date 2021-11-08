-- Find all customers with fax numbers and set those numbers to null.
update customer
set fax = null
where fax is not null;
-- Find all customers with no company (null) and set their company to “Self”.
update customer
set company = 'Self'
where company is null;

-- Find the customer Julia Barnett and change her last name to Thompson.
update customer
set last_name = 'Thompson'
where customer_id = 28;

-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
update customer
set support_rep_id = 4
where email = 'luisrojas@yahoo.cl';

-- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.
set composer = 'The darkness around us'
where track_id in
  (
  select
  t.track_id
  from track t
  inner join genre g on t.genre_id = g.genre_id
  where g.name = 'Metal'
  and composer is null
  );