create database chubb;

use  chubb;

create table guvi (users varchar(45) , codekata int,attendance int,topics varchar(25),tasks int , company_drives int , mentors varchar(25) , students_activated_courses int , courses text  );

SET SQL_SAFE_UPDATES = 0;

INSERT INTO guvi VALUES ('sanx' , 5 , 1 ,'sql' , 1 , 2 , 'rsvp', 1,'MEAN') ;
INSERT INTO guvi VALUES ('alice' , 15 , 1 ,'sql' , 1 , 3 , 'rsvp', 1,'MEAN') ;
INSERT INTO guvi VALUES ('bob' , 25 , 1 ,'sql' , 1 , 4 , 'rsvp', 1,'MEAN') ;
INSERT INTO guvi VALUES ('charli' , 35 , 1 ,'sql' , 1 , 5 , 'rsvp', 1,'MEAN') ;
INSERT INTO guvi VALUES ('Danny' , 45 , 1 ,'sql' , 1 , 6 , 'rsvp', 1,'MEAN') ;
delete from guvi where users = 'charli';
select * from guvi;

-- query to solve