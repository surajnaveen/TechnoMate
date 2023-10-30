SELECT Department_ID,Name
from Department;

SELECT student_id,Attendance_ID
from * from student_attendance;

SELECT Mid_exam,Final_exam
from Marks;

SELECT student_id,Final_exam
from marks
WHERE course_code ='ICT1212';



--By giving course code
DELIMITER //
CREATE PROCEDURE Give_Course_code_CA(Course_cod VARCHAR(10))
BEGIN
SELECT Marks_ID,Student_ID,CA_Mark FROM CA_Result 
WHERE CA_Result.Course_code = Course_cod AND Withot_Attendance_Eligibility='Eligible';
END //
DELIMITER ;
CALL Give_Course_code_CA('ICT1212');

--By giving course code and registration no
DELIMITER //
CREATE PROCEDURE course_register_no(Course_cod VARCHAR(10),reg_number VARCHAR(5))
BEGIN
SELECT Marks_ID,Student_ID,CA_Mark FROM CA_Result 
WHERE Course_code = Course_cod AND 
Withot_Attendance_Eligibility='Eligible' AND Student_ID=reg_number;
END //
DELIMITER ;
CALL course_register_no('ICT1212','s4');