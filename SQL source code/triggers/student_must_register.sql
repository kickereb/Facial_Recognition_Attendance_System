DELIMITER $$
CREATE TRIGGER student_must_register
     BEFORE INSERT ON ATTENDS FOR EACH ROW
     BEGIN
	  DECLARE registration_key VARCHAR(6) ;
      SET registration_key = (SELECT registration_key FROM student WHERE PRN = new.PRN) ;
         IF  registration_key IS NULL
         THEN 
              SIGNAL SQLSTATE '45000'
                  SET MESSAGE_TEXT = 'Student must register for attendance to be marked' ;
         ELSE
              UPDATE attendance SET no_of_lectures_attended = no_of_lectures_attended + 1
              WHERE PRN = new.PRN  AND  course_code = new.course_code ; 
		 END IF;
     END;
$$
DELIMITER ; 
