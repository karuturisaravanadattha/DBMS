create database student1 ;
use student1;
create table student(SNO int, NAME varchar(40), MARKS int, marks2 int);
 insert into student values
 (1,'Charan',90,95),(2,'Sai',94,99),(3,'Nagraju',97,89),(4,'Subhash',95,94);
 select * from student;
 alter table student
 add result varchar(30);
 update student
 set result='PASS'
 where marks2>90;
 
 
 drop table student
