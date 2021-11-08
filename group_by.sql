-- Find the sum of totals in the invoice table grouped by billing_state.
select 
billing_state,
sum(total)
from invoice
group by billing_state
;

-- Find the average track length (in milliseconds) by album. Order the table by the averages.
select 
name as album_name,
avg(milliseconds)
from track t
inner join album a on t.album_id = a.album_id
group by t.name, t.album_id
order by avg(milliseconds)
;

-- Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY.
select
count(*)
from album
where artist_id in (8, 22)
;