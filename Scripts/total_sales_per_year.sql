-- Common table expression

WITH cte AS (
SELECT 
  strftime('%Y',soldDate) as soldYear,
  salesAmount
FROM 
sales
)


SELECT soldYear,
FORMAT('$ %.2f',SUM(salesAmount)) as 'AnnualSales'
FROM cte
GROUP BY soldYear
ORDER BY soldYear;