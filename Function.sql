--view users details
SELECT CONCAT(User.First_name,' ',User.Last_name),Tech_officer.Tech_officer_ID,User.NIC
FROM Tech_officer,User
WHERE tech_officer.NIC=User.NIC;

SELECT CONCAT(User.First_name,' ',User.Last_name),lecturer.Lecturer_ID,User.NIC
FROM Lecture,User
WHERE Lecturer.NIC=User.NIC;

SELECT CONCAT(User.First_name,' ',User.Last_name),Student.Student_ID,User.NIC
FROM Student,User
WHERE Student.NIC=User.NIC;

SELECT CONCAT(User.First_name,' ',User.Last_name),Admin.Admin_ID,User.NIC
FROM Admin,User
WHERE Admin.NIC=User.NIC;

SELECT CONCAT(User.First_name,' ',User.Last_name),Dean.Dean_ID,User.NIC
FROM Dean,User
WHERE Dean.NIC=User.NIC;

--view all notices
SELECT Date,description 
As 'Notice'
FROM Notice
ORDER BY Date;

--View Notice published by Lecturer
DELIMITER //
CREATE PROCEDURE ViewLecturerNotice (
    lecture varchar(10)
)
BEGIN
SELECT Date,description As 'Notice'
FROM Notice
WHERE lecture_ID=lecture;
END//
DELIMITER ;

CALL ViewLecturerNotice ('L1');


--All student Attendance, Subject by Subject without Medical

SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present'
GROUP BY Course_code,Student_ID;

--by giving the course code 
-- without medical

SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1212' AND Attendance='Present'
GROUP BY Student_ID;

--Medical Dates
SELECT student.Student_ID, medical.End_Date - medical.Start_Date AS 'Medical Date Count'
FROM medical,student
WHERE student.Student_ID=medical.Student_ID;

SELECT Student_ID , Status
FROM Student_Course
WHERE Status = "Reapet";

SELECT Student_ID , (Start_date - End_date)
FROM medical;

