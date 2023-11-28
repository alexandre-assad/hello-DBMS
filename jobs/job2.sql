select name from world where left(name, 1) = 'B';

select name from world where left(name, 2) = 'Al';

select name from world where right(name, 1) = 'y';

select name from world where right(name, 4) = "land"

select name from world where name like '%w%';

select name from world where name like '%oo%' or name like '%ee%';

select name from world where regexp_count(name, 'a') >= 3;

select name from world where name like '_r%';