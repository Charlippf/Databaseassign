-- this is a comment

select * from users;

select * from users where role = "student"

select * from users offset 89 limit 11;

--string functions 

select * from users limit 20;

select INITCAP('TEXT')

select first_name, upper(first_name) from users limit 20;

select 'Post' || 'greSQL';

select first_name, Last_name,concat(first_name,' ',Last_name) as fullname from users limit 20;

select first_name as my_name from users

select first_name, Last_name,concat_ws(' ',first_name,Last_name) as fullname from users limit 20;

select right('chinedu', 4) as extraction;

select first_name, right(first_name, 3) from users limit 20;

select first_name, substring(first_name,4, 3) from users limit 20;

select position('sp' in 'prosper'); 

select length('text');

select first_name, length(first_name) from users;

-- trim

select trim('      john', '     doe    ');

-- joins

select * from users;
select * from courses;

select first_name, last_name, name, price from users join courses on users.id = courses.id;

select
    users.first_name,
    users.last_name,
    courses.name,
    courses.description,
    courses.mode,
    courses.difficulty,
    courses.price
from users
join courses
    on users.id = courses.id;
--date functions
--when courses were created
select name, created_at from courses;

--Get only the date, cast
select name, created_at::date from courses;

--Find courses created after a certain date
select name, created_at
from courses
where created_at > '2026-01-01';

--Extract year, month, or day
select
    name,
    extract(year from created_at) as year
from courses;

