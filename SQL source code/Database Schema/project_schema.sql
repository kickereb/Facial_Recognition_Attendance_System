DROP DATABASE IF EXISTS  attendance_management_system  ; 
CREATE DATABASE attendance_management_system ;
USE attendance_management_system ; 
CREATE TABLE class
(
  class_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  batch VARCHAR(8),
  department VARCHAR(25)
);

CREATE TABLE division
(
   division_id VARCHAR(5) NOT NULL,
   PRIMARY KEY(division_id)
);

CREATE TABLE course 
(
   course_code INT PRIMARY KEY,
   course_name VARCHAR(40),
   credits INT 
);

CREATE TABLE student 
(
   PRN BIGINT PRIMARY KEY,
   student_name VARCHAR(255),
   contact VARCHAR(15),
   email VARCHAR(255),
   semester INT,
   registration_key VARCHAR(6),
   registration_date DATE,
   class_id INT,
   login_id VARCHAR(20),
   passwd  VARCHAR(15),
   division_id VARCHAR(5),
   FOREIGN KEY(class_id) REFERENCES class(class_id) ON DELETE CASCADE,
   FOREIGN KEY(division_id) REFERENCES division(division_id)
); 

CREATE TABLE takes_course 
(
  course_code INT,
  class_id INT,
  PRIMARY KEY(course_code, class_id),
  FOREIGN KEY(course_code) REFERENCES course(course_code),
  FOREIGN KEY(class_id) REFERENCES class(class_id) ON DELETE CASCADE
);
  
CREATE TABLE faculty
(
   emp_id INT PRIMARY KEY NOT NULL auto_increment,
   faculty_name VARCHAR(50),
   department VARCHAR(25),
   email VARCHAR(255), 
   office_no INT,
   designation VARCHAR(30),
   contact_no VARCHAR(15),
   login_ID VARCHAR(20),
   passwd VARCHAR(15)
);

CREATE TABLE assigned_to
(
  course_code INT,
  emp_id INT,
  start_date DATE,
  end_date DATE,
  PRIMARY KEY(course_code, emp_id),
  FOREIGN KEY(course_code) REFERENCES course(course_code),
  FOREIGN KEY(emp_id) REFERENCES faculty(emp_id)
);
  
CREATE TABLE lecture 
(
    date_conducted_and_time DATETIME,
    classroom VARCHAR(10),
    PRIMARY KEY(date_conducted_and_time, classroom)
);

CREATE TABLE attends
(
    PRN bigint,
    date_time DATETIME,
    classroom VARCHAR(10), 
    course_code INT,
    PRIMARY KEY(PRN, date_time, classroom),
    FOREIGN KEY(course_code) REFERENCES course(course_code),
	FOREIGN KEY(date_time,classroom) REFERENCES lecture(date_conducted_and_time,classroom),
    FOREIGN KEY(PRN) REFERENCES student(PRN) ON delete cascade 
);

CREATE TABLE conducts
(
   date_time DATETIME,
   classroom VARCHAR(10),
   emp_id INT,
   course_code INT,
   PRIMARY KEY(date_time, classroom), 
   FOREIGN KEY(emp_id) REFERENCES faculty(emp_id),
   FOREIGN KEY(course_code) REFERENCES course(course_code),
   FOREIGN KEY(date_time,classroom) REFERENCES lecture(date_conducted_and_time,classroom)
);

CREATE TABLE conducted_for_division
(
   date_time datetime,
   classroom VARCHAR(10),
   division_id VARCHAR(5),
   PRIMARY KEY(date_time, classroom, division_id ),
   FOREIGN KEY(division_id) REFERENCES division(division_id),
   FOREIGN KEY(date_time, classroom) REFERENCES conducts(date_time, classroom)
);

CREATE TABLE attendance
(
   PRN BIGINT,
   course_code INT,
   no_of_lectures_attended INT,
   PRIMARY KEY(PRN, course_code),
   FOREIGN KEY(PRN) references student(PRN) ON DELETE CASCADE,
   FOREIGN KEY(course_code) references course(course_code)
);