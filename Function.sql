--Function of The System--
--------------------------

CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'admin123';
CREATE USER 'Dean'@'localhost' IDENTIFIED BY 'dean123';
CREATE USER 'lecturer'@'localhost' IDENTIFIED BY 'lecturer123';
CREATE USER 'Tech_officer'@'localhost' IDENTIFIED BY 'to123';
CREATE USER 'Student'@'localhost' IDENTIFIED BY 'student123';

--PRIVILAGES AND GRANT OPTION

GRANT ALL PRIVILEGES ON technomate.* TO 'Admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON technomate.* TO 'Dean'@'localhost';
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON technomate.* TO 'Lecturer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT,INSERT,UPDATE ON technomate.attendance TO 'Tech_officer'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT,INSERT,UPDATE ON technomate.medical TO 'Tech_officer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT ON technomate.attendance TO 'Student'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT ON technomate.marks TO 'Student'@'localhost';
FLUSH PRIVILEGES;

--Attendance Related Function--

--All studence Attendance above 80 present without Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present'
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>=80;

--All student Attendance, Subject by Subject with Medical
--view table
CREATE OR REPLACE VIEW AllAttendance AS
SELECT Student_ID,Course_code,COUNT( Attendance_ID)*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Course_code,Student_ID;

SELECT * FROM AllAttendance;

--All studence Attendance above 80 present with Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>=80;

-- CREATE PROCEDURE Function to view attendance by subject
DELIMITER //
CREATE PROCEDURE AttendanceForSubject ( subject char(10) )
BEGIN
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code=subject AND (Attendance='Present' OR Medical_Id IS NOT NULL)
GROUP BY Student_ID;
End//
DELIMITER ;

CALL AttendanceForSubject('ICT1212');

--with medical
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1222' AND (Attendance='Present' OR Medical_Id IS NOT NULL)
GROUP BY Student_ID;

--for all the subjects with percentage and eligibility 
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code;

--as individuals by giving the registration no 
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID='s5' 
GROUP BY Course_code,Student_ID;


--as individuals by giving the registration no (CREATE PROCEDURE)
DELIMITER //
CREATE PROCEDURE AttendanceForStudent (
studentId varchar(5))
BEGIN
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID=studentId
GROUP BY Course_code,Student_ID;
END //
DELIMITER ;

CALL AttendanceForStudent('s4');

--Attendance for Student and subject
DELIMITER //
CREATE PROCEDURE SubjectAndStudent(
studentId varchar(5),
subjectId char(10))
BEGIN
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID=studentId AND Course_code=subjectId
GROUP BY Course_code,Student_ID;
END //
DELIMITER ;

CALL SubjectAndStudent ('s4','ICT1212');