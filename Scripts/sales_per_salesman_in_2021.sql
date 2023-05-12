SELECT 
  emp.firstName || ' ' ||emp.lastName AS 'Sales Person',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '01' THEN sls.salesAmount ELSE 0 END) AS 'January',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '02' THEN sls.salesAmount ELSE 0 END) AS 'February',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '03' THEN sls.salesAmount ELSE 0 END) AS 'March',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '04' THEN sls.salesAmount ELSE 0 END) AS 'April',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '05' THEN sls.salesAmount ELSE 0 END) AS 'May',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '06' THEN sls.salesAmount ELSE 0 END) AS 'June',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '07' THEN sls.salesAmount ELSE 0 END) AS 'July',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '08' THEN sls.salesAmount ELSE 0 END) AS 'August',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '09' THEN sls.salesAmount ELSE 0 END) AS 'September',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '10' THEN sls.salesAmount ELSE 0 END) AS 'October',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '11' THEN sls.salesAmount ELSE 0 END) AS 'November',
  SUM(CASE WHEN strftime('%m',sls.soldDate) = '12' THEN sls.salesAmount ELSE 0 END) AS 'Decemeber'
FROM employee emp
INNER JOIN sales sls ON emp.employeeId = sls.employeeId
WHERE strftime('%Y',sls.soldDate) = '2021'
GROUP BY emp.firstName,emp.employeeId,emp.lastName
ORDER BY emp.employeeId;
