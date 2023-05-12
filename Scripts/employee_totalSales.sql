SELECT emp.firstName || ' ' ||emp.lastName AS 'Sales Person', count(*) as NumOfSoldCars
FROM employee emp
INNER JOIN sales s
ON emp.employeeID = s.employeeID
GROUP BY emp.employeeID,'Sales Person'
ORDER BY NumOfSoldCars DESC;