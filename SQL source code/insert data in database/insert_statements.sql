/* Insert commands for database project */

USE attendance_management_system ; 
/* Insert data into class table*/

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE class auto_increment 1; 
INSERT INTO class(class_id, batch, department) VALUES(1, "2017-21", "Computer Science");
INSERT INTO class(batch, department) VALUES("2017-21", "ENTC");
INSERT INTO class(batch, department) VALUES("2017-21", "Information Technology");
INSERT INTO class(batch, department) VALUES("2016-20", "Computer Science");
INSERT INTO class(batch, department) VALUES("2016-20", "Information Technology");
INSERT INTO class(batch, department) VALUES("2017-21", "Mechanical");
INSERT INTO class(batch, department) VALUES("2017-21", "Civil");
INSERT INTO class(batch, department) VALUES("2016-20", "Civil");


#Insert data of divisions present in a department.
INSERT INTO division VALUES("C1");
INSERT INTO division VALUES("C2");
INSERT INTO division VALUES("C3");
INSERT INTO division VALUES("C4");

# INSERT data of students
DELETE FROM student;
INSERT INTO student(PRN, student_name, contact, email, semester, class_id, login_id, passwd, 
                     division_id) 
VALUES 
(
   17070122016, "Shaunak Chakraborty", "+91-9067077806",
   "chakraborty.shaunak@sitpune.edu.in", 4, 1, "shaunak2416", "password", "C1"
);

INSERT INTO student(PRN, student_name, contact, email, semester, class_id, 
					login_id, passwd, division_id) 
VALUES 
(
   17070122012, "Ayushi Agrawal",  "+91-9923119100", 
   "ayushi.agrawal@sitpune.edu.in", 4, 1, "ayushi2421", "ayushipswd", "C1"
);

INSERT INTO student(PRN, student_name, contact, email, semester, class_id, 
					login_id, passwd, division_id) 
VALUES 
(
   17070122020, "Evam Kaushik", "+91-9067649061", 
   "evam.kaushik@sitpune.edu.in",4, 1, "evam2001", "evampswd", "C1"
);

INSERT INTO student(PRN, student_name, contact, email, semester, class_id, 
					login_id, passwd, division_id) 
VALUES 
(
   17070122026, "Jane Saldanha", "+91-7558359103",
   "jane.saldanha@sitpune.edu.in",4, 1, "jane2426", "janepswd", "C2"
);

INSERT INTO student(PRN, student_name, contact, email, semester, class_id, 
					login_id, passwd, division_id) 
VALUES 
(
   17070122001, "Aarohi Prasad", "+91-9923214520", 
   "aarohi.prasad@sitpune.edu.in",4, 1, "aarohi2401", "aarohipswd", "C1"
);

INSERT INTO student(PRN, student_name, contact, email, semester, class_id, 
					login_id, passwd, division_id) 
VALUES 
(
   17070122011, "Ayush Rajguru", "+91-8888176739", 
   "ayush.rajguru@gmail.com",4, 1, "ayush2411", "ayushpswd", "C1"
);

#Insert faculty data
ALTER TABLE faculty auto_increment 1; 
INSERT INTO faculty (department, faculty_name, email, office_no, 
					designation, contact_no, login_ID, passwd )            #1
VALUES
(
   'Computer Science', 'Pooja Kamat', 'pooja.kamat@sitpune.edu.in', 4, 
   'Professor', '+91-8555727162' ,  'poojak2501', 'poojakpswd' 
);
INSERT INTO faculty (department, faculty_name, email, office_no, 
					designation, contact_no, login_ID, passwd )          #2
VALUES
(
   'Computer Science', 'Pooja Bidwai', 'pooja.bidwai@sitpune.edu.in', 3, 
   'Visiting Faculty', '+91-9355581221' ,  'poojab2502', 'poojabpswd' 
);
INSERT INTO faculty (department, faculty_name, email, office_no, 
					designation, contact_no, login_ID, passwd )          #3
VALUES
(
   'Computer Science', 'Pooja Bagane', 'pooja.bagane@sitpune.edu.in', 3, 
   'Assistant Professor', '+91-7555256183' ,  'poojabg2503', 'poojabgpswd' 
);
INSERT INTO faculty (department, faculty_name, email, office_no, 
					designation, contact_no, login_ID, passwd )          #4
VALUES
(
   'Computer Science', 'Poorva Agrawal', 'poorva.agrawal@sitpune.edu.in', 2, 
   'Assistant Professor', '+91-9055554259' ,  'poorva2504', 'poorvapswd' 
);
INSERT INTO faculty (department, faculty_name, email, office_no, 
					designation, contact_no, login_ID, passwd )          #5
VALUES
(
   'Computer Science', 'Nisha Auti', 'nisha.auti@sitpune.edu.in', 3, 
   'Visiting Faculty', '+91-7555384286' ,  'nisha2505', 'nishapswd' 
);
INSERT INTO faculty (department, faculty_name, email, office_no, 
					designation, contact_no, login_ID, passwd )         #6
VALUES
(
   'Computer Science', 'Prachi Kadam', 'prachi.kadam@sitpune.edu.in', 1, 
   'Assistant Professor', '91-8555581217' ,  'prachi2506', 'prachipswd' 
);

#Insert data of courses 
DELETE FROM course ;
INSERT INTO course VALUES(070122502, "Database Management Systems", 4 );
INSERT INTO course VALUES(070122501, "Theory of Computation", 4 );
INSERT INTO course VALUES(070122503, "Database Management Systems Lab", 2 );
INSERT INTO course VALUES(070122504, "Computer Networks", 3 );
INSERT INTO course VALUES(070122505, "Computer Networks Lab", 1 );
INSERT INTO course VALUES(070122506, "Design and Analysis of Algorithms", 4 );
INSERT INTO course VALUES(070122507, "Design and Analysis of Algorithms lab", 1 );
INSERT INTO course VALUES(070122508, "Software Engineering", 4 );

#Insert data for courses assigned to faculty
DELETE FROM assigned_to ;
INSERT INTO assigned_to VALUES(70122501,4, '2019-07-15', '2019-10-20');  # TOC
INSERT INTO assigned_to VALUES(70122502,3,'2019-07-15', '2019-10-20');   #DBMS
INSERT INTO assigned_to VALUES(70122503,3,'2019-07-15', '2019-10-20');   #DBMS Lab 
INSERT INTO assigned_to VALUES(70122504,6,'2019-07-15', '2019-10-20');   #CN
INSERT INTO assigned_to VALUES(70122505,6,'2019-07-15', '2019-10-20');   #CN Lab
INSERT INTO assigned_to VALUES(70122506,5,'2019-07-15', '2019-10-20');   #DAA 
INSERT INTO assigned_to VALUES(70122507,5,'2019-07-15', '2019-10-20');   #DAA LAB
INSERT INTO assigned_to VALUES(70122508,1,'2019-07-15', '2019-10-20');   #SWE




#Insert data for lectures 
DELETE FROM lecture;
INSERT INTO lecture VALUES("2019-10-07 14:55:00", "S1");
INSERT INTO lecture VALUES("2019-10-07 10:05:00", "S1");
INSERT INTO lecture VALUES("2019-10-07 11:10:00", "S1");

INSERT INTO lecture VALUES('2019-07-15 10:05:00', 'S10');
INSERT INTO lecture VALUES('2019-07-15 11:05:00', 'S10');
INSERT INTO lecture VALUES('2019-07-15 16:05:00', 'S10');

INSERT INTO lecture VALUES('2019-07-16 10:05:00', 'S10' ) ;
INSERT INTO lecture VALUES('2019-07-16 11:10:00', 'S10') ;
INSERT INTO lecture VALUES('2019-07-16 16:05:00', 'S8' ) ;
INSERT INTO lecture VALUES('2019-07-16 16:45:00', 'S8' ) ;
INSERT INTO lecture VALUES('2019-07-18 11:10:00', 'S1' ) ;
INSERT INTO lecture VALUES('2019-07-18 12:45:00', 'DAA LAB' ) ;
INSERT INTO lecture VALUES('2019-07-19 14:25:00', 'S8' ) ;
INSERT INTO lecture VALUES('2019-07-22 10:05:00', 'S1' ) ;
INSERT INTO lecture VALUES('2019-07-23 11:05:00', 'S1' ) ;
INSERT INTO lecture VALUES('2019-07-25 11:10:00', 'S1' ) ;
INSERT INTO lecture VALUES('2019-07-26 14:35:00', 'S8' ) ;
INSERT INTO lecture VALUES("2019-07-23 12:55:00", "DBMS LAB");
INSERT INTO lecture VALUES("2019-07-23 12:55:00", "CN LAB");
INSERT INTO lecture VALUES("2019-07-24 12:55:00", "CN LAB");
INSERT INTO lecture VALUES("2019-07-24 12:55:00", "DBMS LAB");
INSERT INTO lecture VALUES("2019-07-25 12:55:00", "DAA LAB");
INSERT INTO lecture VALUES("2019-07-25 12:55:00", "DBMS LAB");

INSERT INTO lecture VALUES("2019-08-12 16:05:00", 'S1');
INSERT INTO lecture VALUES("2019-08-16 16:45:00", 'S1');
INSERT INTO lecture VALUES("2019-09-06 16:45:00", 'S1');
INSERT INTO lecture VALUES("2019-09-06 16:05:00", 'S1');


#Insert data for present students
DELETE FROM attends ;
INSERT INTO attends VALUES (17070122016, "2019-10-07 14:55:00", "S1", 070122506);
INSERT INTO attends VALUES (17070122026, "2019-10-07 14:55:00", "S1", 070122506);

INSERT INTO attends VALUES (17070122016, "2019-10-07 10:05:00", "S1", 070122508);
INSERT INTO attends VALUES (17070122026, "2019-10-07 10:05:00", "S1", 070122508);

INSERT INTO attends VALUES (17070122016, "2019-10-07 11:10:00", "S1", 070122501);
INSERT INTO attends VALUES (17070122026, "2019-10-07 11:10:00", "S1", 070122501);

INSERT INTO attends VALUES (17070122016, "2019-07-16 16:05:00", "S8", 070122502);
INSERT INTO attends VALUES (17070122026, "2019-07-16 16:05:00", "S8", 070122502);

INSERT INTO attends VALUES (17070122016, "2019-07-16 16:45:00", "S8", 070122502);
INSERT INTO attends VALUES (17070122026, "2019-07-16 16:45:00", "S8", 070122502);

INSERT INTO attends VALUES (17070122016, "2019-07-23 12:55:00", "DBMS LAB", 070122503);
INSERT INTO attends VALUES (17070122026, "2019-07-23 12:55:00", "CN LAB", 070122505);

INSERT INTO attends VALUES (17070122016, "2019-07-24 12:55:00", "CN LAB", 070122505);
INSERT INTO attends VALUES (17070122026, "2019-07-24 12:55:00", "DBMS LAB", 070122503);

INSERT INTO attends VALUES (17070122016, "2019-07-25 12:55:00", "DAA LAB", 070122507);
INSERT INTO attends VALUES (17070122026, "2019-07-25 12:55:00", "DBMS LAB", 070122503);

INSERT INTO attends VALUES(17070122026, "2019-08-12 16:05:00", 'S1' , 070122502);
INSERT INTO attends VALUES(17070122026,"2019-08-16 16:45:00", 'S1',  070122502);
INSERT INTO attends VALUES(17070122026,"2019-09-06 16:45:00", 'S1',  070122502);
INSERT INTO attends VALUES(17070122026, "2019-09-06 16:05:00", 'S1',  070122502);


/*
ID  Name                     course_code  Course Name
1.  Poooja Kamat             70122501     TOC
2.  Pooja Bidwai             70122502     DBMS
3.  Pooja Bagane             70122503     DBMS LAB
4.  Poorva Agrawal           70122504     CN
5.  Nisha Auti               70122505  	  CN LAB
6.  Prachi Kadam             70122506     DAA
                             70122507     DAA LAB
							 70122508     SWE
*/

#Insert data for lectures conducted by a faculty member 
INSERT INTO conducts VALUES('2019-07-15 10:05:00', 'S10' ,  4, 70122501 ) ;
INSERT INTO conducted_for_division VALUES('2019-07-15 10:05:00', 'S10' , 'C1') ;
INSERT INTO conducted_for_division VALUES('2019-07-15 10:05:00', 'S10' , 'C2') ;
INSERT INTO conducted_for_division VALUES('2019-07-15 10:05:00', 'S10' , 'C3') ;
INSERT INTO conducted_for_division VALUES('2019-07-15 10:05:00', 'S10' , 'C4') ;

INSERT INTO conducts VALUES('2019-07-15 11:05:00', 'S10' ,  1, 70122508 ) ;
INSERT INTO conducted_for_division VALUES('2019-07-15 11:05:00', 'S10' , 'C1' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-15 11:05:00', 'S10' , 'C2' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-15 11:05:00', 'S10' , 'C3' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-15 11:05:00', 'S10' , 'C4' ) ;

INSERT INTO conducts VALUES('2019-07-15 16:05:00', 'S10' ,  5, 70122506 ) ;
INSERT INTO conducted_for_division VALUES('2019-07-15 16:05:00', 'S10' , 'C1') ;
INSERT INTO conducted_for_division VALUES('2019-07-15 16:05:00', 'S10' , 'C2') ;
INSERT INTO conducted_for_division VALUES('2019-07-15 16:05:00', 'S10' , 'C3') ;
INSERT INTO conducted_for_division VALUES('2019-07-15 16:05:00', 'S10' , 'C4') ;


INSERT INTO conducts VALUES('2019-07-16 10:05:00', 'S10' ,  1, 70122508 ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 10:05:00', 'S10' , 'C1' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 10:05:00', 'S10' , 'C2' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 10:05:00', 'S10' , 'C3' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 10:05:00', 'S10' , 'C4' ) ;

INSERT INTO conducts VALUES('2019-07-16 11:10:00', 'S10' ,  4, 70122501 ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 11:10:00', 'S10' ,  'C1' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 11:10:00', 'S10' ,  'C2' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 11:10:00', 'S10' ,  'C3' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 11:10:00', 'S10' ,  'C4' ) ;

INSERT INTO conducts VALUES('2019-07-16 16:05:00', 'S8' ,   2, 70122502 ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 16:05:00', 'S8' ,   'C1' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 16:05:00', 'S8' ,   'C2' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 16:05:00', 'S8' ,   'C3' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 16:05:00', 'S8' ,   'C4' ) ;


INSERT INTO conducts VALUES('2019-07-16 16:45:00', 'S8' ,   2, 70122502 ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 16:45:00', 'S8' ,   'C1' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 16:45:00', 'S8' ,   'C2' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 16:45:00', 'S8' ,   'C3' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-16 16:45:00', 'S8' ,   'C4' ) ;


INSERT INTO conducts VALUES('2019-07-18 11:10:00', 'S1' ,  1, 70122508 ) ;
INSERT INTO conducted_for_division VALUES('2019-07-18 11:10:00', 'S1' ,  'C1' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-18 11:10:00', 'S1' ,  'C2' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-18 11:10:00', 'S1' ,  'C3' ) ;
INSERT INTO conducted_for_division VALUES('2019-07-18 11:10:00', 'S1' ,  'C4' ) ;



INSERT INTO conducts VALUES('2019-07-18 12:45:00', 'DAA LAB' ,  5, 70122507 ) ;
INSERT INTO conducts VALUES('2019-07-19 14:25:00', 'S8'  ,  4, 70122501 ) ;
INSERT INTO conducts VALUES('2019-07-22 10:05:00', 'S1'  ,  4, 70122501 ) ;
INSERT INTO conducts VALUES('2019-07-23 11:05:00', 'S1'  ,  4, 70122501 ) ;
INSERT INTO conducts VALUES('2019-07-25 11:10:00', 'S1'  ,  4, 70122501 ) ;
INSERT INTO conducts VALUES('2019-07-26 14:35:00', 'S8'  ,  4, 70122501 ) ;

INSERT INTO conducts VALUES("2019-08-12 16:05:00", 'S1', 2, 70122502);
INSERT INTO conducted_for_division VALUES("2019-08-12 16:05:00", 'S1', 'C1');
INSERT INTO conducted_for_division VALUES("2019-08-12 16:05:00", 'S1', 'C2');
INSERT INTO conducted_for_division VALUES("2019-08-12 16:05:00", 'S1', 'C3');
INSERT INTO conducted_for_division VALUES("2019-08-12 16:05:00", 'S1',  'C4' );


INSERT INTO conducts VALUES("2019-08-16 16:45:00", 'S1', 2, 70122502);
INSERT INTO conducts VALUES("2019-09-06 16:45:00", 'S1', 2, 70122502);
INSERT INTO conducts VALUES("2019-09-06 16:05:00", 'S1', 2, 70122502);


#Insert data of courses undertaken by a class of students
INSERT INTO takes_course VALUES(070122502, 1); 
INSERT INTO takes_course VALUES(070122501, 1); 
INSERT INTO takes_course VALUES(070122503, 1); 
INSERT INTO takes_course VALUES(070122504, 1); 
INSERT INTO takes_course VALUES(070122505, 1); 
INSERT INTO takes_course VALUES(070122506, 1); 
INSERT INTO takes_course VALUES(070122507, 1); 
INSERT INTO takes_course VALUES(070122508, 1); 

