USE attendance_management_system ; 
DROP function att_course ;
DELIMITER $$
SET GLOBAL log_bin_trust_function_creators = 1; 
create function att_course(prn BIGINT , course_code INT) returns float
begin
	set @no_of_lecs= (select no_of_lectures_attended from  attendance 
					  where attendance.prn = prn and attendance.course_code = course_code) ;
	set @division = (SELECT division_id FROM student WHERE student.prn = prn ) ;
	set @total_lecs=(select COUNT(*) FROM conducts NATURAL JOIN conducted_for_division 
                     WHERE conducted_for_division.division_id = @division ) ;
	return @no_of_lecs/@total_lecs ;
end
$$
DELIMITER ; 
SELECT att_course(17070122016, 70122501)  ; 

DROP FUNCTION overall_attendance ;
DELIMITER $$ 
create function overall_attendance(prn INT) returns float
begin
	set @no_of_lecs=(select no_of_lectures_attended from attendance where attends.prn = prn);
    set @division = (SELECT division_id FROM student WHERE student.prn = prn ) ;
	set @total_lecs=(select COUNT(*) FROM conducts NATURAL JOIN conducted_for_division 
                     WHERE conducted_for_division.division_id = @division ) ;
	return @no_of_lecs/@total_lecs;
end
$$
DELIMITER ; 


DROP FUNCTION count_fac_lecs ; 
DELIMITER $$ 
create function count_fac_lecs(_month INT, _name VARCHAR(50)) RETURNS int
begin
	set @no_of_lecs=(
					  select count(*) from conducts 
					  where MONTH(date_time) = _month and 
                      emp_id = (select emp_id from faculty where faculty_name = _name)
                     ) ;
	return @no_of_lecs ;
end
$$

DROP FUNCTION count_students_registered_on_time ;
DELIMITER $$
create function count_students_registered_on_time
(reg_date DATE, batch VARCHAR(8), department VARCHAR(25)) 
RETURNS INT
begin
	set @counts=(select count(*) from student 
				where registration_date = reg_date 
                and student.class_id = (select class_id from class where class.batch = batch 
										and class.department = department ));
	return @counts;
end
$$

DROP FUNCTION count_faculty_assigned ; 
DELIMITER $$ 
create function count_faculty_assigned(course_code INT, start_date DATE, end_date DATE) 
RETURNS  INT
begin
	set @count_fac=
    ( 
     select count(emp_id) from assigned_to 
     where assigned_to.course_code = course_code 
     AND assigned_to.start_date = start_date and assigned.end_date = end_date
	);
	return @count_fac;
end
$$

