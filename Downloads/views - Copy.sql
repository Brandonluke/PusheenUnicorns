CREATE VIEW vw_CertifiedEngineers AS
SELECT empNumber, firstName, lastName, jobCode
FROM Employee 
WHERE jobCode = 'ENGI' and certification = 1;

GO

CREATE VIEW vw_ReadyToRetire AS
SELECT empNumber, firstName, lastName
FROM Employee
WHERE datediff(yy, dateOfBirth, GETDATE()) > 62;

GO

CREATE VIEW vw_EmployeeAvgSalary AS
SELECT avg(salary) as average, jobCode
FROM employee group by jobCode;

GO

CREATE VIEW vw_HolidayBonus AS
SELECT Employee.empNumber, firstName, lastName, netPay FROM Employee 
FULL OUTER JOIN Paycheck ON Employee.empNumber = Paycheck.empNumber
WHERE payDate BETWEEN '2017-01-12' AND '2018-01-01' AND containsBonus= 1;

GO

CREATE VIEW vw_SeniorMgrGross AS
SELECT Employee.empNumber, firstName,lastName, grossPay FROM employee
FULL OUTER JOIN Paycheck ON Employee.empNumber = Paycheck.grossPay
WHERE jobCode = 'PMGR' and salary > 100000;