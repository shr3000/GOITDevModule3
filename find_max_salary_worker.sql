SET @MaxSalary SELECT MAX(salary) FROM worker;
SELECT * FROM WORKER WHERE salary =  @MaxSalary