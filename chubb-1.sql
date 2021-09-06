
create database chubb;

use  chubb;

-- create a table guvi


create table guvi (users varchar(45) , codekata int,attendance int,topics varchar(25),tasks int , company_drives int , mentors varchar(25) , students_activated_courses int , courses text  );

SET SQL_SAFE_UPDATES = 0;
-- insert 5 rows 
INSERT INTO guvi VALUES ('sanx' , 5 , 1 ,'sql' , 1 , 2 , 'rsvp', 1,'MEAN') ;
INSERT INTO guvi VALUES ('alice' , 15 , 1 ,'sql' , 1 , 3 , 'rsvp', 1,'MEAN') ;
INSERT INTO guvi VALUES ('bob' , 25 , 1 ,'sql' , 1 , 4 , 'rsvp', 1,'MEAN') ;
INSERT INTO guvi VALUES ('charli' , 35 , 1 ,'sql' , 1 , 5 , 'rsvp', 1,'MEAN') ;
INSERT INTO guvi VALUES ('Danny' , 45 , 1 ,'sql' , 1 , 6 , 'rsvp', 1,'MEAN') ;
delete from guvi where users = 'charli';

-- display the table

select * from guvi;

-- query to solve
-- number of problem solve by each users
select users , codekata from guvi ;
-- number of attended drive
select users , company_drives from guvi ;
-- combine and display students_activated_courses and courses for a specific user groping them based on the course

select  students_activated_courses,courses from guvi where users = 'bob' group by courses ;

-- select mentor
select mentors from guvi ;
-- list the number of students that are assigned for a mentor
select count(users) as number_of_student , mentors from guvi;