--Create tables
CREATE TABLE Lecture_Student (Student_ID CHAR(5),Lecture_ID CHAR(5));
CREATE TABLE Student_Notice (Student_ID CHAR(5),Notice_ID CHAR(5));
CREATE TABLE Lecture_Course (Lecture_ID CHAR(5),Course_ID CHAR(10));
CREATE TABLE Lecture(
    Lecture_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Position varchar(50),
    Department_ID CHAR(5));

--Data inserting
INSERT INTO Lecture_Student VALUES
    ('S1','L1'),
    ('S1','L5'),
    ('S2','L2'),
    ('S3','L3'),
    ('S4','L1'),
    ('S4','L5'),
    ('S5','L1'),
    ('S5','L5'),
    ('S6','L2'),
    ('S7','L3'),
    ('S8','L1'),
    ('S8','L5'),
    ('S9','L2'),
    ('S10','L3'),
    ('S11','L1'),
    ('S11','L5'),
    ('S12','L2'),
    ('S13','L1'),
    ('S13','L5'),
    ('S14','L2'),
    ('S15','L3');


INSERT INTO Student_Notice VALUES 
    ('S1','N5003'),
    ('S1','N5001'),
    ('S2','N5003'),
    ('S2','N5002'),
    ('S2','N5005'),
    ('S4','N5003'),
    ('S5','N5004'),
    ('S5','N5004'),
    ('S6','N5001'),
    ('S7','N5003'),
    ('S8','N5002'),
    ('S8','N5005'),
    ('S9','N5002'),
    ('S9','N5006');


    INSERT INTO Lecture_Cource VALUES
    ('L1','ICT1122'),
    ('L1','ICT1212'),
    ('L5','ICT1253'),
    ('L5','ICT1212'),
    ('L1','ICT1242'),
    ('L2','TMS2022'),
    ('L2','TMS4302'),
    ('L2','TMS6302'),
    ('L2','TMS6302'),
    ('L2','TMS7302'),
    ('L3','BST4024'),
    ('L3','BST3021'),
    ('L3','BST2343'),
    ('L3','BST2331'),
    ('L4','ENG1212'),
    ('L2','TCS1212');

INSERT INTO Lecture (Lecture_ID, NIC, Position, Department_ID) VALUES
    ('L1', '234567890G', 'ICT_HED', 'DP01'),
    ('L2', '345678901H', 'ET_HED', 'DP02'),
    ('L3', '456789012I', 'BST_HED', 'DP03'),
    ('L4', '567890123J', 'Lecturer', 'DP03'),
    ('L5', '678901234K', 'Professor', 'DP01'),
    ('L6', '789012345B', 'Lecture','DP2');

--Adding Foriegn keys
ALTER TABLE Lecture_Student ADD FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Lecture_Student ADD FOREIGN KEY (Lecture_ID) REFERENCES Lecture(Lecture_ID);
ALTER TABLE Student_Notice ADD FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Student_Notice ADD FOREIGN KEY (Notice_ID) REFERENCES Notice(Notice_ID);
ALTER TABLE Lecture_Course ADD FOREIGN KEY (Lecture_ID) REFERENCES Lecture(Lecture_ID);
ALTER TABLE Lecture_Course ADD FOREIGN KEY (Course_code) REFERENCES Course_code(Course_code);
ALTER TABLE Lecture ADD FOREIGN KEY(NIC) REFERENCES User(NIC);

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