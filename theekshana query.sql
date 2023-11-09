REATE TABLE Marks (
    Marks_Id char(10) PRIMARY KEY,
    Student_ID varchar(5),
    Course_code char(10),
    Mid_exam INT,
    Final_exam INT,
    Quize1 INT,
    Quize2 INT,
    Quize3 INT,
    Assignment1 INT,
    Assignment2 INT,
    Assignment3 INT
);


CREATE TABLE student_course(
    student_id char(10),
    course_code varchar(10),
    status varchar(10));

CREATE TABLE Department (
    Department_ID char(5),
    Name varchar(50) NOT NULL,
    Admin_Id varchar(5),
    Dean_ID varchar(5),
    PRIMARY KEY(Department_ID));

CREATE TABLE Tech_officer(
    Teach_officer_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Role varchar(50));


CREATE TABLE Lecture_Student (Student_ID CHAR(5),Lecture_ID CHAR(5));
CREATE TABLE Student_Notice (Student_ID CHAR(5),Notice_ID CHAR(5));
CREATE TABLE Lecture_Course (Lecture_ID CHAR(5),Course_ID CHAR(10));
CREATE TABLE Lecture(
    Lecture_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Position varchar(50),
    Department_ID CHAR(5));

Alter table student_course ADD FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID);
--Alter table student_course ADD FOREIGN KEY(course_code) REFERENCES Course(Course_code);
Alter table Marks ADD FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID);
Alter table Marks ADD FOREIGN KEY(Course_code) REFERENCES Course(Course_code);
--ALTER TABLE Department ADD FOREIGN KEY(Dean_ID) REFERENCES Dean(Dean_ID);
ALTER TABLE Department ADD FOREIGN KEY(Admin_Id) REFERENCES Admin(Admin_Id);
ALTER TABLE Tech_officer ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Dean ADD FOREIGN KEY(NIC) REFERENCES User(NIC);

INSERT INTO student_course(Student_ID,course_code,status)VALUES
    ('S1','ENG1212','NO'),
    ('S1','ICT1212','No'),
    ('S1','ICT1253T','No'),
    ('S1','ICT1242','No'),
    ('S2','TMS2022','No'),
    ('S2','TMS4302','No'),
    ('S2','TMS6302','No'),
    ('S2','TMS2022','No'),
    ('S2','TMS2022','No'),
    ('S3','BST4024','No'),
    ('S3','BST3021','No'),
    ('S3','BST2343','No'),
    ('S3','BST2331','No'),
    ('S4','ENG1212','No'),
    ('S4','ICT1212','No'),
    ('S4','ICT1253T','No'),
    ('S4','ICT1253P','No'),
    ('S4','ICT1242','No'),
    ('S5','ENG1212','No'),
    ('S5','ICT1212','No'),
    ('S5','ICT1253P','NO'),
    ('S5','ICT1242','No'),
    ('S6','TMS2022','No'),
    ('S6','TMS4302','No'),
    ('S6','TMS6302','No'),
    ('S6','TMS2022','Repeat'),
    ('S6','TMS2022','No'),
    ('S7','BST4024','No'),
    ('S7','BST3021','No'),
    ('S7','BST2343','No'),
    ('S7','BST2331','Repeat'),
    ('S8','ENG1212','No'),
    ('S8','ICT1212','No'),
    ('S8','ICT1253P','No'),
    ('S8','ICT1242','No'),
    ('S9','TMS2022','No'),
    ('S9','TMS4302','No'),
    ('S9','TMS6302','No'),
    ('S9','TMS2022','No'),
    ('S9','TMS2022','No'),
    ('S10','BST4024','No'),
    ('S10','BST3021','Repeat'),
    ('S10','BST2343','No'),
    ('S10','BST2331','No'),  
    ('S11','ENG1212','NO'),
    ('S11','ICT1212','No'),
    ('S11','ICT1253T','No'),
    ('S11','ICT1242','No'),
    ('S12','TMS2022','No'),
    ('S12','TMS4302','No'),
    ('S12','TMS6302','No'),
    ('S12','TMS2022','No'),
    ('S12','TMS2022','No'),
    ('S13','ENG1212','No'),
    ('S13','ICT1212','No'),
    ('S13','ICT1253P','No'),
    ('S13','ICT1242','No'),
    ('S14','TMS2022','Repeat'),
    ('S14','TMS4302','No'),
    ('S14','TMS6302','No'),
    ('S14','TMS2022','No'),
    ('S14','TMS2022','No'),
    ('S15','BST4024','Repeat'),
    ('S15','BST3021','No'),
    ('S15','BST2343','No'),
    ('S15','BST2331','No');

INSERT INTO Department (Department_ID, Name,Admin_Id, Dean_ID)
VALUES
    ('DP001', 'Information and Communication Technology','A1', 'D1'),
    ('DP002', 'Engineering Technology','A1', 'D1'),
    ('DP003', 'Bio Systems Technology','A1', 'D1');

INSERT INTO Tech_officer (Teach_officer_ID, NIC, Role)VALUES
    ('T2', '890123456C', 'Tech Officer'),
    ('T3', '901234567D', 'Tech Officer'),
    ('T4', '012345678E', 'Tech Officer'),
    ('T5', '901234567G', 'Tech Officer'),
    ('T6', '012345678H', 'Tech Officer');

INSERT INTO Marks (Marks_Id, Student_ID, Course_code, Mid_exam, Final_exam, Quize1, Quize2, Quize3, Assignment1, Assignment2, Assignment3)
VALUES

-Data inserting
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


INSERT INTO Lecture (Lecture_ID, NIC, Position, Department_ID) VALUES
    ('L1', '234567890G', 'ICT_HED', 'DP001'),
    ('L2', '345678901H', 'ET_HED', 'DP002'),
    ('L3', '456789012I', 'BST_HED', 'DP003'),
    ('L4', '567890123J', 'Lecturer', 'DP003'),
    ('L5', '678901234K', 'Professor', 'DP001'),
    ('L6', '789012345B', 'Lecture','DP002');



INSERT INTO Lecture_Course VALUES
    ('L1','ICT1222'),
    ('L1','ICT1212'),
    ('L5','ICT1233'),
    ('L5','ICT1212'),
    ('L1','ICT1242'),
    ('L2','TMS2022'),
    ('L2','TMS4302'),
    ('L2','TMS6302'),
    ('L2','ICT1253T'),
    ('L2','TMS7302'),
    ('L3','BST4024'),
    ('L3','BST3021'),
    ('L3','BST2343'),
    ('L3','BST2331'),
    ('L4','ENG1212'),
    ('L2','TCS1212');
    ('M01','s4','ICT1212',85, 92, 75, 80, 88, 50, 89, 93),
    ('M02','s5','ICT1212',78, 85, 70, 76, 82, 88, 80, 91),
    ('M03','s8','ICT1212',92, 88, 85, 89, 90, 94, 87, 92),
    ('M04','s11','ICT1212',65, 75, 60, 68, 74, 79, 72, 78),
    ('M05','s13','ICT1212',88, 90, 78, 84, 86, 91, 83, 89),
    ('M06','s4','ICT1222',73, 80, 68, 72, 76, 84, 77, 81),
    ('M07','s5','ICT1222',91, 94, 82, 87, 89, 93, 86, 90),
    ('M08','s8','ICT1222',79, 50, 72, 78, 80, 87, 80, 85),
    ('M09','s11','ICT1222',84, 87, 76, 82, 85, 88, 82, 86),
    ('M010','s13','ICT1222',70, 78, 61, 70, 72, 76, 70, 74),
    ('M011','s4','ICT1233', 92, 75, 80, 88, 95, 89,50, 93),
    ('M012','s5','ICT1233', 85, 70, 76, 82, 88, 80,50, 91),
    ('M013','s8','ICT1233', 88, 85, 89, 90, 94, 87,50, 92),
    ('M014','s11','ICT1233', 75, 60, 68, 74, 79, 72,50, 78),
    ('M035','s13','ICT1233', 75, 60, 68, 40, 55, 72,50, 76),
    ('M015','s4','ICT1213', 90, 60, 84, 86, 91, 83,50, 89),
    ('M016','s5','ICT1213', 80, 68, 72, 76, 84, 77,50, 81),
    ('M017','s8','ICT1213', 94, 82, 87, 89, 93, 86,50, 90),
    ('M018','s11','ICT1213', 84, 72, 78, 80, 87, 80,50, 85),
    ('M019','s13','ICT1213', 87, 76, 82, 85, 88, 82,50, 86),
    ('M020','s4','ICT1242', 78, 65, 70, 72, 76, 70,50, 74),
    ('M021','s5','ICT1242', 91, 83, 89, 88, 92, 85,50, 89),
    ('M022','s8','ICT1242', 82, 71, 75, 50, 80, 78,50, 83),
    ('M023','s11','ICT1242', 94, 88, 91, 92, 95, 89,50, 91),
    ('M024','s13','ICT1242', 85, 75, 79, 60, 86, 80,50, 83),
    ('M025','s4','ICT1253P', 81, 70, 74, 76, 80, 75,50, 78),
    ('M026','s5','ICT1253P', 96, 89, 92, 94, 97, 90,50, 94),
    ('M027','s8','ICT1253P', 85, 76, 80, 82, 84, 78,50, 82),
    ('M028','s11','ICT1253P', 78, 62, 75, 76, 78, 73,50, 75),
    ('M029','s13','ICT1253P', 94, 87, 90, 92, 95, 88,50, 91),
    ('M030','s4','ICT1253T', 72, 65, 70, 70, 73, 70,50, 72),
    ('M031','s5','ICT1253T', 90, 82, 86, 87, 89, 85,50, 88),
    ('M032','s8','ICT1253T', 87, 80, 83, 85, 86, 82,50, 85),
    ('M033','s11','ICT1253T', 82, 75, 78, 80, 81, 78,50, 80),
    ('M034','s13','ICT1253T', 97, 90, 94, 96, 98, 92,50, 95),
    ('M036','s4','ICT1253T', 72, 65, 70, 70, 73, 70,50, 72),
    ('M037','s5','ICT1253T', 90, 82, 86, 87, 89, 85,50, 88),
    ('M038','s8','ICT1253T', 87, 80, 83, 85, 86, 82,50, 85),
    ('M039','s11','ICT1253T', 82, 75, 78, 80, 81, 78,50, 80),
    ('M040','s13','ENG1212', 97, 90, 94, 96, 98, 92,50, 95),
    ('M041','s4','ENG1212', 72, 65, 88, 70, 73, 70,50, 72),
    ('M042','s5','ENG1212', 90, 50, 86, 87, 55, 85,50, 88),
    ('M043','s8','ENG1212', 87, 80, 40, 85, 86, 82,50, 85),
    ('M044','s11','ENG1212', 82, 88, 70, 80, 81, 78,50, 80),
    ('M045','s13','ENG1212', 90, 90, 94, 96, 98, 92,50, 95);

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

SELECT Department_ID,Name
from Department;

SELECT Mid_exam,Final_exam
from Marks;

SELECT student_id,Final_exam
from marks
WHERE course_code ='ICT1212';

SELECT Marks_Id, Student_ID, Mid_exam, Final_exam
FROM Marks
WHERE Student_ID = 'S4';

UPDATE Marks
SET Mid_exam = 95, Final_exam = 92
WHERE Student_ID = 'S12';


UPDATE student_course
SET status = 'Completed'
WHERE student_id = 'S12' AND course_code = 'ICT1122';


SELECT concat(First_name,' ',Last_name)AS name, 
YEAR(CURRENT_DATE) - YEAR(dob) - (RIGHT(CURRENT_DATE, 5) < RIGHT(dob, 5)) AS age
FROM user;