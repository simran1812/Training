SELECT AVG(SAL) AVERAGE 
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY JOB;