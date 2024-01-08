-- Job 1

select avg(Rating)
from Google_Play gp ;


-- Job 2

select min(Rating)
from Google_Play gp ;
select max(Rating)
from Google_Play gp ;

-- Job 3

select Type, count(App)
from Google_Play gp 
group by Type ;

-- Job 4 

select Type, avg(Reviews)
from Google_Play gp 
group by Type ;

-- Job 5

select Category , count(App)
from Google_Play gp 
group by Category  ;

-- Job 6

select Category , avg(Rating)
from Google_Play gp 
group by Category  ;

-- Job 7 

select Category , avg(Reviews)
from Google_Play gp 
group by Category  
order by avg(Reviews) desc
limit 1;

-- Job 8 

select Category , avg(Size)
from Google_Play gp 
group by Category ;

-- Job 9

-- On peut observer que la requête ci dessus n'a aucune corrélation avec celle là :
select Category , count(Installs)
from Google_Play gp 
group by Category
order by count(Installs) desc;

-- Job 10

select "Content Rating"  , count(App) app
from Google_Play gp 
group by "Content Rating" ;

-- Job 11

select "Content Rating"  , avg(Rating) app
from Google_Play gp 
group by "Content Rating" ;

-- Job 12


select "Content Rating"  , count(Installs) app
from Google_Play gp 
group by "Content Rating" 
order by count(Installs) desc 
limit 1;

-- Job 13

select Genres , count(App) app
from Google_Play gp 
group by Genres 
order by count(App) desc ;

-- Job 14

with count_genres as (
	select c.App, count(distinct c.Genres) count_genres from Google_Play c group by c.App
	)
select gp.App, cg.count_genres genre
from Google_Play gp
inner join count_genres cg on cg.App = gp.App
where cg.count_genres > 1
group by gp.App ;

-- Job 15

-- Non, En comparant la requete ci dessus et celle des jeux avec les meilleures moyennes de notes on ne constate pas de corrélation

-- Job 16

select Genres, avg(replace(Price, '$','')) price
from Google_Play gp 
where Price != 0
group by Genres ;

-- Job 17

select Category , count(App) app
from Google_Play gp 
where Price == 0
group by Category  ;

-- Job 18

select App ,Installs
from Google_Play gp 
order by Installs desc
limit 5 ;

-- Job 19

select App , avg(Rating)
from Google_Play gp 
where Price == 0
group by App
order by avg(Rating) desc
limit 5 ;

-- Job 20

-- Non, il n'y a aucune corrélation (voir requête ci dessus)

-- Job 21

-- Oui, il y a aucune corrélation (voir requête ci dessus)

-- Job 22

-- Oui, il y a aucune corrélation (voir requête ci dessus)