
Create table studentss (
	id int,
    name varchar(50),
    age int,
    marks int,
    dept varchar(50)
    
);

insert into studentss (id, name, age, marks,dept )
	values (1, 'Abhi', 21, 92,'CSE'),
    (2, 'sai', 22, 67, 'AI'),
	(3, 'ram', 23, 87, 'EEE'),
    (4, 'sri', 20, 56, 'CSE'),
    (5, 'surya', 22, 89, 'AI'),
    (6, 'ravi', 23, 97, 'ECE'),
    (7, 'hari', 26, 45, 'AI'),
    (8, 'vijay', 23, 68, 'CSE'),
    (9, 'moni', 22, 79, 'EEE'),
    (10, 'siva', 24, 98, 'CSE');
    
    SELECT name AS Student_Name,
       marks AS students_marks
FROM studentss;

SELECT DISTINCT dept
FROM studentss;

SELECT name,
       salary,
       marks * 12 AS Annual_Salary
FROM employee;   

SELECT SUM(marks) AS Total_Marks
FROM studentss; 

select * from studentss
where age < 23;

select * from studentss
where marks > 80;

select * from studentss
where age <= 23;

select * from studentss
where marks >= 75;

select * from studentss
where age = 22;


select * from studentss
where age > 23 
and marks < 89;
    
select * from studentss
where age = 24
or	marks >85;     

select * from studentss
where NOT dept = 'CSE';

use collage;

select * from studentss
where dept in ('CSE' 'EEE');

select * from studentss
where marks BETWEEN 60 AND 80;

select * from studentss
where name like 's%';

select * from studentss
where name like '%a';

select * from studentss
where name like '%r%';

select * from studentss
where name like 'r___';

select * from studentss
where dept is null;

select * from studentss
where dept is not null;

select * from studentss
order by marks asc;

select * from studentss
order by marks desc;

select * from studentss
order by marks desc limit 3;

select * from studentss
order by marks asc limit 1;

select * from studentss
order by age asc limit 5;

select count(*) from studentss;    


select sum(marks) from studentss; 

select avg(marks) from studentss; 

select min(marks) from studentss;

select max(marks) from studentss;  

select count(*) from studentss
where dept = 'CSE';




