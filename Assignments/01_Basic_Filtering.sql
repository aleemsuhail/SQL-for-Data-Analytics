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
