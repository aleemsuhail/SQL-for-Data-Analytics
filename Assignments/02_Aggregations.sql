-- Q1.Fetch the number of employees earning salary greater than 500

create table emp(id number,name varchar2(50),designation varchar2(50),salary number);
insert into emp values(1,'Aman','HOD',400);
insert into emp values(2,'Rajesh','HOD',500);
insert into emp values(7,'Rakesh','HOD',700);

insert into emp values(3,'Karan','Professor',800);
insert into emp values(4,'Henry','Professor',300);

insert into emp values(5,'Kunal','Instructor',400);
insert into emp values(6,'Yusuf','Instructor',200);

Select Count(*) from emp Where Salary > 500;

-----------------------------------------------------------------------------
-- Q2.Write an SQL query to
a)Display the total count of records
b)Display unique empid
c)Display unique empname
d)Display unique DEPT
e)Display total count of distinct empname
f)Total count of employess from Delhi
g)Total count of employees from Delhi working in HR dept.
-------------------------------------------------------------------------------

Create table Dept(Empid number,Empname varchar2(10),Dept varchar2(10),Location varchar(50));
insert into dept values(1,'A','HR','Delhi');
insert into dept values(2,'B','HR','Delhi');
insert into dept values(3,'C','SALES','Delhi');
insert into dept values(4,'D','SALES','Chennai');
insert into dept values(5,'E','SALES','Chennai');
insert into dept values(6,'F',NULL,'Chennai');
insert into dept values(7,'G',NULL,'Delhi');
insert into dept values(1,'A','HR','Chennai');
insert into dept values(2,'B','HR','Bangalore');
insert into dept values(3,'C','SALES','Bangalore');
insert into dept values(8,'j','hr','Delhi');

Select Count(*) from dept;

Select distinct empid from dept;

Select distinct empname from dept;

Select distinct Dept from dept;

Select Count (distinct empname) from dept;

Select Count(*) from dept Where location = 'Delhi';

Select Count(*) from dept Where location = 'Delhi' and UPPER (Dept) = 'HR' ;

----------------------------------------------------------------------------------------------------------------------




Q3.Explain the output of count(*),count(mgrid),count('mgrid'),count(empid) 
and count(empname).

Create table employee(empid number,empname varchar2(10),Mgrid number);
insert into employee values(1,'A',4);
insert into employee values(2,'B',5);
insert into employee values(3,'C',6);
insert into employee values(4,'D',5);
insert into employee values(5,'E',null);
insert into employee values(6,'F',null);


Select Count(*) from employee; - This gives the total count of records (6) in the table including the null values.

Select Count (Mgrid) from employee; - This gives the total count of records in the column Mgrid (4) excluding the NULL values.

Select Count('Mgrid') from employee; - This gives the total count of records in the table (6) including the NON-NULL values.

Select Count (Empid) from employee; - This gives the total count of records in the empid column (6) excluding the NULL values.

Select Count (empname) from employee; - This gives the total count of records in the empname column (6) excluding the NULL values. 

  -----------------------------------------------------------------------------------------------------------------------------

Q4.Write an SQL query to find if NULL record exists in mgrid column.

Create table employee(empid number,empname varchar2(10),Mgrid number);
insert into employee values(1,'A',4);
insert into employee values(2,'B',5);
insert into employee values(3,'C',6);
insert into employee values(4,'D',5);
insert into employee values(5,'E',null);
insert into employee values(6,'F',null);

Select * from employee Where Mgrid is NULL;

Select Count (*), Count(mgrid) from employee;
Since count (*) is greater than Count(Mgrid) it means mgrid column has null values.

----------------------------------------------------------------------------------------------------------------------------------

Q5.Write a SQL query to fetch distinct 
a)empid
b)empname
c)dept
d)empid,empname
e)empname,dept

Create table Dept(Empid number,Empname varchar2(10),Dept varchar2(10));
insert into dept values(1,'A','HR');
insert into dept values(2,'B','HR');
insert into dept values(3,'C','SALES');
insert into dept values(4,'D','SALES');
insert into dept values(5,'E','SALES');
insert into dept values(6,'F',NULL);
insert into dept values(7,'G',NULL);
insert into dept values(1,'A','HR');
insert into dept values(2,'B','HR');
insert into dept values(3,'C','SALES');

Select distinct dept from dept;

Select distinct empid from dept;

Select distinct empname from dept;

Select distinct empid, empname from dept;

Select distinct empname, dept from dept;

---------------------------------------------------------------------------------------------------------------------------
