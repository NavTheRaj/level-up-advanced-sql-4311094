SELECT 
emp.firstName || ' ' ||emp.lastName as SalesPerson,
sls.salesAmount,mod.model,
COUNT(model) as NumberSold,
DENSE_RANK() OVER (PARTITION BY emp.employeeId ORDER BY COUNT(model) DESC ) AS Rank
FROM employee emp
INNER JOIN 
sales sls
ON emp.employeeId = sls.employeeId
INNER JOIN inventory inv
ON sls.inventoryId = inv.inventoryId
INNER JOIN model mod
ON inv.modelId = mod.modelId
GROUP BY emp.firstName,emp.lastName,mod.modelId;