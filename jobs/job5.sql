select w1.name from word w1, word w2 where w2.name = 'Russia' and w1.population > w2.population ;

select w1.name from word w1, word w2 where w2.name = 'Italy' and w1.gdp > w2.gdp ;

select w1.name from word w1, word w2, word w3 where w2.name = 'United Kingdom' and w3.name = 'Germany' and w1.population > w2.population and w1.population < w3.population ;

select w1.name, (w1.population * pow(w2.population , (-1)) * 100) popualiton_per   from word w1, word w2 where w2.name = 'Germany' and w1.continent = 'Europe' ;

select continent,  name, max(area) from word group by continent