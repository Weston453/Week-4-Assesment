-- ARTIST TABLE
insert into artist (
    name
)
values (
    'Steven'
);

insert into artist (
    name
)
values (
    'Jeffery'
);

insert into artist (
    name
)
values (
    'Pual'
);

select * from artist;

select * from artist
order by name 
limit 5;

-- Employee table
select first_name, last_name
from employee
where city = 'Calgary';

select * from employee
where reports_to = '2';

-- not sure how to specifically select 'Lethbridge'
select city, count(*)
from employee
group by city;

-- Invoice table
select billing_country, count(*) as order_total
from invoice
group by billing_country;

select max(total)
from invoice;

select min(total)
from invoice;

select * from invoice
where total > 5;

select count(*) as invoice_under_5
from invoice
where total < 5;

select sum(total) as total_sum
from invoice;

-- Join Queries
select * from invoice_line
where invoice_line.unit_price > '0.99';

select invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
from invoice 
join customer
on invoice.customer_id = customer.customer_id;

select c.first_name as customer_first_name, c.last_name as customer_last_name, e.first_name as support_rep_first_name, e.last_name as support_rep_last_name
from customer c
join employee e
on e.employee_id = c.support_rep_id; 

select al.title as album_title, ar.name as artist_name
from album al
join artist ar
on al.artist_id = ar.artist_id;