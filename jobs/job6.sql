select sum(population) from word ;

select sum(population) from word group by continent ;

select sum(gpd) from word group by continent ;

select sum(gdp) from word where continent = 'Afrique' group by continent ;

select count(*) from word where area > 1000000 ;


select population from word where name = 'Estonia' or name = 'Lavtia' or name = 'Lithuania' ;

select count(*) from word group by continent ;

select continent from word where population > 100000000 group by continent ;