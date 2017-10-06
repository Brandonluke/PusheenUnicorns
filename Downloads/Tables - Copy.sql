CREATE TABLE Job(
jobCode char(4),
jobdesc varchar(50)
PRIMARY KEY (jobCode),
CONSTRAINT JOB_JOBCODE CHECK(jobCode IN('CAST', 'ENGI', 'INSP', 'PMGR'))
)

CREATE TABLE Employee(
empNumber char(8),
firstName varchar(25),
lastName varchar(25),
ssn char(9),
address varchar(50),
state char(2),
zip char(5),
jobCode char(4),
dateOfBirth date,
certification bit,
salary money,
PRIMARY KEY (empNumber),
CONSTRAINT FK_JOB FOREIGN KEY (jobCode) 
REFERENCES Job(jobCode),
CONSTRAINT EMP_STATECHECK CHECK(state IN('CA', 'FL'))
)

CREATE TABLE Paycheck(
    payID char(8), 
    empNumber char(8), 
    periodBegin date, 
    periodEnd date, 
    payDate date, 
    GrossPay money, 
    NetPay money,
    containsBounus bit,
    CONSTRAINT FK_Emp FOREIGN KEY (empNumber) 
    REFERENCES Employee(empNumber)
)