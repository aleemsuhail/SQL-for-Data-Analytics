Q2.Write an SQL query to fetch the data as per the below requirement.

Create table stud(id number,name varchar2(10));
insert into stud values(1,'A');
insert into stud values(2,'B');
insert into stud values(3,'C');

Create table score(studentid number,marks varchar2(10));
insert into score values(1,40);
insert into score values(2,60);
insert into score values(4,50);

create table dept(studid int,deptname varchar(50));
insert into dept values(1,'EC');
insert into dept values(2,'CS');
insert into dept values(5,'ME');
insert into dept values(3,'CV');

Execute and explain the output of the below queries.
a)select id, name, studentid, marks
from stud  join score 
on id = studentid;

This is inner join, based on the joining condition id = studentid from the table
score and stud, only those value will be visible in the final result that have coressponding
value in each table.

b) select id,name,studentid,marks from stud  join score
on id = studentid and name='A';

1,A,1,40

This query will show only that record from the two tables where the id match and the name is A. as "and" is a 
necessary condition even if other id's match but name does not they will not be reflected in the final result.

c) select id,name,studentid,marks
from stud  join score 
on id = studentid 
where name='A';

1,A,1,40
This query also gives a similar result as the previous query with "and" clause but the difference here is , the sql 
engine has more task to perform this query than the previous one.

d) select id, name,studentid,marks
from stud  left join score 
on id = studentid;

1,A,1,40
2,B,2,60
3,C,NULL,NULL

This is a left join condition, the sql engine first performs inner join and each value matching to corresponding value in the other
table is added to the final table and after that all the remaining values in the left table , here being Stud, are added to the
final table. 

e) select id, name, studentid,marks
from stud left join score 
on id = studentid and name = 'A';

1,A,1,40;
2,B,NULL,NULL
3,C,NULL,NULL

Like in previous query here too, engine first performs inner join, then adds the remainig value from the table on teh left, 
here being stud, but here the joining condition has "on", "and" , thus id and name both must match. as seen in result too
only one row qualifies both condition and rest of the value of the table on the left are added to the final table. 


f) select id, name, studentid,marks from stud  left join score 
on id = studentid where name='A';

1,A,1,40;

Here since the engine first performs the left join which gives the same result as the previous query but then uses the "where"
filter which drops the rest of the values and only value with name = a remain. This highights how the order of execution for the same table
with different filters gives differnet results.

g) select id,name, studentid, marks
from stud  left join score 
on id = studentid and marks=40;

here too, engine first performs inner join with the and condition as it a must, then adds the remainig value from the table on the left, 
here being stud,  as seen in result too, only one row qualifies both condition and rest of the value of the table on the left are added to the final table. 

h) select id,name,studentid,marks
from stud  left join score 
on id = studentid 
where marks='40';

1,A,1,40;

Here since the engine first performs the left join which gives the same result as the previous query but then uses the "where"
filter which drops the rest of the values and only value with marks = 40 remain. This highights how the order of execution for the same table
with different filters gives differnet results.
