SELECT min(Year), max(Year) FROM Games_Sales;
SELECT min(EU_Sales), max(EU_Sales) FROM Games_Sales;
SELECT min(JP_SALES), max(JP_SALES) FROM Games_Sales;
SELECT min(NA_Sales), max(NA_Sales) FROM Games_Sales;
SELECT min(Other_Sales), max(Other_Sales) FROM Games_Sales;
SELECT min(Global_Sales), max(Global_Sales) FROM Games_Sales;

-- Job 2

SELECT sum(EU_Sales) FROM Games_Sales;
SELECT sum(NA_Sales) FROM Games_Sales;
SELECT sum(JP_Sales) FROM Games_Sales;
SELECT sum(Other_Sales) FROM Games_Sales;
SELECT sum(Global_Sales) FROM Games_Sales;

-- Job 3

SELECT sum(EU_Sales) / sum(Global_Sales) FROM Games_Sales;
SELECT sum(NA_Sales) / sum(Global_Sales) FROM Games_Sales;
SELECT sum(JP_Sales) / sum(Global_Sales) FROM Games_Sales;
SELECT sum(Other_Sales) / sum(Global_Sales) FROM Games_Sales;

-- Job 4

SELECT sum(Global_Sales) FROM Games_Sales group by Year;

-- Job 5

select Name, Publisher, Global_Sales from Games_Sales order by Global_Sales desc limit 1;

-- Job 6

select Name, Publisher, Global_Sales from Games_Sales order by Global_Sales desc limit 1;

-- Job 7

select Genre , avg(Global_Sales) Global_Sales from Games_Sales group by Genre  order by avg(Global_Sales) desc limit 1;

-- Job 8

select Year, sum(Global_Sales) Global_Sales from Games_Sales group by Year;

-- Job 9

with max_sales as (
	select gs2.Publisher, sum(gs2.Global_sales) max_sales from Games_Sales gs2 
	)
select gs.Publisher , sum(gs.Global_Sales) / m.max_sales part_market 
from Games_Sales gs
inner join max_sales m on m.Publisher = gs.Publisher
group by gs.Publisher ;

-- Job 10 
select Publisher, sum(Global_Sales) Global_Sales 
from Games_Sales 
group by Publisher
order by sum(Global_Sales) DESC 
limit 5;

-- Job 11
select Name, Genre, sum(Global_Sales) Global_Sales 
from Games_Sales 
group by Genre;


-- Job 12

-- On pourrait aussi analyser le nombre de joueur par epoque pour comparer les ventes / Ratio de jeux par rapport aux joueurs hebodmadaires
