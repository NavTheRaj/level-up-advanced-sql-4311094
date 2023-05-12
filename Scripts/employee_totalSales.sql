SELECT emp.employeeId,emp.firstName || ' ' ||emp.lastName AS 'Sales Person', MIN(s.salesAmount) as MinSoldAmount,
MAX(s.salesAmount) as MaxSoldAmount,date(s.soldDate) as Year
FROM employee emp
INNER JOIN sales s
ON emp.employeeID = s.employeeID
WHERE s.soldDate >= date('now','start of year')
GROUP BY emp.employeeID;