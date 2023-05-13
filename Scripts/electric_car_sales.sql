-- SELECT sls.salesId,sls.salesAmount,sls.soldDate,inv.colour,mod.EngineType 
-- FROM sales sls
-- INNER JOIN inventory inv
-- ON sls.inventoryId = inv.inventoryId
-- INNER JOIN model mod 
-- ON inv.modelId = mod.modelId
-- WHERE mod.EngineType = 'Electric';

SELECT sls.salesId,sls.salesAmount,sls.soldDate,inv.colour
FROM sales sls
INNER JOIN inventory inv
ON sls.inventoryId = inv.inventoryId
WHERE inv.modelId IN
(SELECT modelId FROM model WHERE EngineType = 'Electric')
;