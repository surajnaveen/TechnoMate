SELECT Marks_Id, Student_ID, Mid_exam, Final_exam
FROM Marks
WHERE Student_ID = 'S4';

UPDATE Marks
SET Mid_exam = 95, Final_exam = 92
WHERE Student_ID = 'S12';


SELECT Department_ID,Name
from Department;

SELECT Mid_exam,Final_exam
from Marks;

SELECT student_id,Final_exam
from marks
WHERE course_code ='ICT1212';

UPDATE student_course
SET status = 'Completed'
WHERE student_id = 'S12' AND course_code = 'ICT1122';


SELECT concat(First_name,' ',Last_name)AS name, 
YEAR(CURRENT_DATE) - YEAR(dob) - (RIGHT(CURRENT_DATE, 5) < RIGHT(dob, 5)) AS age
FROM user;


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