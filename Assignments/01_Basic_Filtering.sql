-- Q1.Write a SQL query to fetch the student name who has scored less than 90 in Che

Create table Student(Studid number,NAME varchar2(10),Subject varchar2(20),marks number);
insert into student values(1,'A','Phy','90');
insert into student values(1,'A','Che','95');
insert into student values(2,'B','Phy','80');
insert into student values(2,'B','Che','85');
insert into student values(3,'C','Phy','90');
insert into student values(4,'D','Phy','75');
insert into student values(4,'D','Che','90');

B

  Select NAME from Student Where Subject = 'Che' and marks < 90;

-- Q2.Write a SQL query to fetch the student name who has scored 90 or appeared in Che.

Create table Student(Studid number,NAME varchar2(10),Subject varchar2(20),marks number);
insert into student values(1,'A','Phy','90');
insert into student values(1,'A','Che','95');
insert into student values(2,'B','Phy','80');
insert into student values(2,'B','Che','85');
insert into student values(3,'C','Phy','90');
insert into student values(4,'D','Phy','75');
insert into student values(4,'D','Che','90');

A
A
B
C
D

Select name from Student Where marks = 90 or Subject = 'Che';


-- Q3.Write a SQL query to fetch the records where salary is NULL and is from SALES DEPT.

create table dept (dept_id number,deptname varchar2(10),empname varchar2(10),
salary number);

insert into dept values(1,'HR','A',100);
insert into dept values(1,'HR','B',200);
insert into dept values(1,'HR','C',300);
insert into dept values(1,'HR','X',NULL);
insert into dept values(2,'SALES','D',400);
insert into dept values(2,'SALES','E',500);
insert into dept values(2,'SALES','F',600);
insert into dept values(2,'SALES','Y',NULL);
insert into dept values(3,'TECH','G',700);
insert into dept values(3,'TECH','H',800);
insert into dept values(3,'TECH','I',900);
insert into dept values(3,'TECH','Z',NULL);

2, Y, SAELES, NULL.

Select * from dept Where deptname = 'SALES' and Salary is NULL;


-- Q4.Write a SQL query to fetch the records
a)Employees who are working in HR dept
b)Employees who are working in HR or SALES dept
c)Employees who are working in Tech Dept and earning salary 900

create table dept (dept_id int,deptname varchar(10),empname varchar(10),salary int);
insert into dept values(1,'HR','A',100);
insert into dept values(1,'HR','B',200);
insert into dept values(1,'HR','C',300);
insert into dept values(1,'HR','X',NULL);
insert into dept values(2,'SALES','D',400);
insert into dept values(2,'SALES','E',500);
insert into dept values(2,'SALES','F',600);
insert into dept values(2,'SALES','Y',NULL);
insert into dept values(3,'TECH','G',700);
insert into dept values(3,'TECH','H',800);
insert into dept values(3,'TECH','I',900);
insert into dept values(3,'TECH','Z',NULL);

Select * from dept Where deptname = 'HR';

Select * from dept Where deptname IN ('HR', 'SALES');

Select * from dept Where deptname = 'TECH' and Salary = 900;



-- Q5.Write a SQL query to fetch the employee details whose name is 'A' OR  empid is 2.

Create table employee(empid number,empname varchar2(10),Mgrid number);
insert into employee values(1,'A',4);
insert into employee values(2,'B',5);
insert into employee values(3,'C',6);
insert into employee values(4,'D',5);
insert into employee values(5,'E',null);
insert into employee values(6,'F',null);

Select * from employee Where empname = 'A' OR empid = 2;




-- Q6.Write an SQL query to fetch those employee names whose salary is 600 and is either 
from 'HR' or 'TECH' dept.

create table emp(id number,name varchar2(10),dept varchar2(10),salary number);
insert into emp values(1,'A','HR',100);
insert into emp values(2,'B','HR',600);
insert into emp values(3,'C','HR',600);
insert into emp values(4,'D','HR',500);
insert into emp values(5,'H','TECH',300);
insert into emp values(6,'E','TECH',200);
insert into emp values(7,'F','TECH',600);
insert into emp values(8,'G','TECH',600);
insert into emp values(9,'H','SALES',300);
insert into emp values(10,'I','SALES',400);
insert into emp values(11,'J','SALES',600);
insert into emp values(12,'K','SALES',600);

Select NAME from emp Where Salary = 600 and dept IN ('HR', 'TECH');


-- Q7.Write an SQL query to list the name who are earning salary greater 
than 400 in HR dept or less than 400 in Tech Dept or any amount but from Sales Dept.

create table emp(id number,name varchar2(10),dept varchar2(10),salary number);
insert into emp values(1,'A','HR',100);
insert into emp values(2,'B','HR',600);
insert into emp values(3,'C','HR',600);
insert into emp values(4,'D','HR',500);
insert into emp values(5,'H','TECH',300);
insert into emp values(6,'E','TECH',200);
insert into emp values(7,'F','TECH',600);
insert into emp values(8,'G','TECH',600);
insert into emp values(9,'H','SALES',300);


Select name from emp Where (Salary > 400 and dept = 'HR') or (Salary < 400 and 
dept = 'TECH') or (dept = 'SALES');




-- Q8.Write a SQL query to fetch the student details who have scored 90 in Che

Create table Student(Studid number,NAME varchar2(10),Subject varchar2(20),marks number);
insert into student values(1,'A','Phy','90');
insert into student values(1,'A','Che','95');
insert into student values(2,'B','Phy','80');
insert into student values(2,'B','Che','85');
insert into student values(3,'C','Phy','90');
insert into student values(4,'D','Phy','75');
insert into student values(4,'D','Che','90');

Select * from student Where subject = 'Che' and marks = 90;
