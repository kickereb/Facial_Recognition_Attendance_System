import MySQLdb 

def establishConnection():
    return MySQLdb.connect(host='localhost', user='root', passwd='Facerecgdbms$$',db='attendance_management_system') 

#Function 1 : A function to compute the attendance of a student in a particular course
def attendance_percent(prn,course_code):
    connection=.connect()
    cursor=connection.cursor()

    cursor.execute(""" SELECT att_course(%s, %s) """%(prn, course_code))
    result = cursor.fetchone()
    if not result:
        return f'Error: Incorrect PRN or course code' 
    else:
        percent_attendance = result[0]
    cursor.close()
    connection.close()
    return percent_attendance 

#Function 2 : A function to return the overall attendance of the student (till date)
def attendance_overall(prn):
    connection= establishConnection()
    cursor = connection.cursor()
    cursor.execute("""SELECT overall_attendance(%s) """%(prn))
    result = cursor.fetchone()
    if not result:
        return f'Error: Invalid PRN'
    else:
        overall_attendance = result[0]
    cursor.close()
    connection.close()
    return  overall_attendance 

#Function 3 : A function to compute the number of lectures conduced by a faculty in a particular month
def count_fac_lectures(month,name): # here the month is in number form.
    connection= establishConnection()
    cursor  = connection.cursor()
    cursor.execute(""" SELECT count_fac_lecs(%s, '%s') """%(month, name))
    result = cursor.fetchone()
    if not result:
        return f'Error: Faculty name {faculty_name} does not exist in the database'
    else:
        lectures_conducted = result[0]
    return lectures_conducted 

#Function 4 : A function to return the number of students of a batch belonging to a particular department that registered on the registration day (i.e. on time)
def count_reg_student(dat,batch,dept):
    connection = establishConnection()
    cusor = connection.cursor()
    
    cursor.execute("""SELECT count_students_registered_on_time('%s', '%s', '%s') """%(dat, batch, dept))
    result = cursor.fetchone()
    if not result:
        return f'Error: Incorrect batch or department entered'
    else:
        reg_students = result[0]
    return reg_students 

#Function 5 : A function to return the number of faculty members assigned to teach a particular course within specified duration
def count_fac_assigned(coursecode,start,end): 
    connection = establishConnection()
    cursor = connection.cursor()

    cursor.execute("""SELECT count_faculty_assigned(%s, '%s', '%s')  """%(coursecode, start, end))
    result = cursor.fetchone()
    if not result:
        return 0
    else:
        fac_assign = result[0]
    return fac_assign 
    
    
                    
 
    
