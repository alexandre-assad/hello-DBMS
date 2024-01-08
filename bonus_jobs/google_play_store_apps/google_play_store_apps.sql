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
