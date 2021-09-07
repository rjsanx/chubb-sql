
create database chubb;

use  chubb;

-- create a table guvi



SET SQL_SAFE_UPDATES = 0;

 -- 1. Create tables for the above list given
CREATE TABLE users (user_id INT,stu_name VARCHAR(20),mentor_id INT,course_id INT,PRIMARY KEY(user_id));
CREATE TABLE codekata (user_id INT,no_of_problem_solved INT);
CREATE TABLE attendance (user_id INT , total_class INT , present INT ,absent INT );
CREATE TABLE tasks(task_id INT ,task_NAME TEXT(20));
CREATE TABLE company_drives(com_id INT,com_NAME TEXT(20));
CREATE TABLE mentors(mentor_id VARCHAR(20),mentor_name TEXT(20));
CREATE TABLE students_activated_courses(stud_id INT ,course_name TEXT(20));
CREATE TABLE courses(courses_id INT,courses_name TEXT(20));
-- 2. insert at least 5 rows of values in each table
INSERT INTO users (user_id , stu_name , mentor_id,course_id) VALUES(1 , 'Alice' , 1 , 1);
INSERT INTO users (user_id , stu_name , mentor_id,course_id) VALUES(2 , 'bob' , 2 , 2);
INSERT INTO users (user_id , stu_name , mentor_id,course_id) VALUES(3 , 'charli' , 3 , 3);
INSERT INTO users (user_id , stu_name , mentor_id,course_id) VALUES(4 , 'danny' , 4 , 4);
INSERT INTO users (user_id , stu_name , mentor_id,course_id) VALUES(5 , 'eve' , 5 , 5);

INSERT INTO codekata (user_id , no_of_problem_solved) VALUES(1 , 11 );
INSERT INTO codekata (user_id , no_of_problem_solved) VALUES(2 , 12 );
INSERT INTO codekata (user_id , no_of_problem_solved) VALUES(3 ,  13);
INSERT INTO codekata (user_id , no_of_problem_solved) VALUES(4 ,  14);
INSERT INTO codekata (user_id , no_of_problem_solved) VALUES(5 ,  15);

INSERT INTO attendance (user_id , total_class,present,absent) VALUES(1 , 2 ,2,0 );
INSERT INTO attendance (user_id , total_class,present,absent) VALUES(2 , 2 ,2,0 );
INSERT INTO attendance (user_id , total_class,present,absent) VALUES(3 , 2 ,2,0 );
INSERT INTO attendance (user_id , total_class,present,absent) VALUES(4 , 2 ,2,0 );
INSERT INTO attendance (user_id , total_class,present,absent) VALUES(5 , 2 ,2,0 );

INSERT INTO tasks (task_id , task_NAME) VALUES (1,'sql');
INSERT INTO tasks (task_id , task_NAME) VALUES (2,'html');
INSERT INTO tasks (task_id , task_NAME) VALUES (3,'css');
INSERT INTO tasks (task_id , task_NAME) VALUES (4,'js');
INSERT INTO tasks (task_id , task_NAME) VALUES (5,'react');

INSERT INTO company_drives (com_id , com_NAME) VALUES (1,'amazon');
INSERT INTO company_drives (com_id , com_NAME) VALUES (2,'flipkart');
INSERT INTO company_drives (com_id , com_NAME) VALUES (3,'chubb');
INSERT INTO company_drives (com_id , com_NAME) VALUES (4,'microsoft');
INSERT INTO company_drives (com_id , com_NAME) VALUES (5,'adobe');

INSERT INTO mentors (mentor_id , mentor_name) VALUES (1,'alan');
INSERT INTO mentors (mentor_id , mentor_name) VALUES (2,'bella');
INSERT INTO mentors (mentor_id , mentor_name) VALUES (3,'cara');
INSERT INTO mentors (mentor_id , mentor_name) VALUES (4,'daisy');
INSERT INTO mentors (mentor_id , mentor_name) VALUES (5,'eva');

INSERT INTO students_activated_courses(stud_id , course_name) VALUES (1 , 'c') ; 
INSERT INTO students_activated_courses(stud_id , course_name) VALUES (2 , 'c++') ; 
INSERT INTO students_activated_courses(stud_id , course_name) VALUES (3 , 'angular') ; 
INSERT INTO students_activated_courses(stud_id , course_name) VALUES (4 , 'java') ; 
INSERT INTO students_activated_courses(stud_id , course_name) VALUES (5 , '.net') ; 

INSERT INTO courses (courses_id ,courses_name ) VALUES (1 , 'database');
INSERT INTO courses (courses_id ,courses_name ) VALUES (2 , 'full stack');
INSERT INTO courses (courses_id ,courses_name ) VALUES (3 , 'andriod');
INSERT INTO courses (courses_id ,courses_name ) VALUES (4 , 'server');
INSERT INTO courses (courses_id ,courses_name ) VALUES (5 , 'networking');


-- 3. get number problems solved in codekata by combining the users

SELECT stu_name , no_of_problem_solved FROM codekata INNER JOIN users ON users.user_id = codekata.user_id;

-- 4. display the no of company drives attended by a user

SELECT stu_name , COUNT(com_id) FROM company_drives RIGHT JOIN users ON users.user_id = company_drives.com_id GROUP BY com_NAME;

-- 5.combine and display students_activated_courses and courses for a specific user groping them based on the course

SELECT stu_name , courses_name ,course_name FROM users INNER JOIN courses ON courses_id = user_id  INNER JOIN  students_activated_courses ON  stud_id = user_id GROUP BY course_name ORDER BY stu_name ASC ;

-- 6. list all the mentors

SELECT * FROM mentors;

-- 7.list the number of students that are assigned for a mentor

SELECT stu_name , mentor_name FROM users INNER JOIN mentors ON users.mentor_id = mentors.mentor_id;