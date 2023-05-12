SELECT emp.employeeId,emp.firstName || ' ' ||emp.lastName AS 'Sales Person', COUNT(*) NumOfItemsSold
FROM employee emp
INNER JOIN sales s
ON emp.employeeID = s.employeeID
WHERE s.soldDate >= date('now','start of year')
GROUP BY emp.employeeID,emp.firstName,emp.lastName
HAVING COUNT(*) > 5
ORDER BY NumOfItemsSold DESC;