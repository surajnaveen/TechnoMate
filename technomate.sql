--Create Tables

CREATE TABLE Course (
    Course_code char(7),
    Name varchar(50),
    Credit int,
    Course_hours int,
    Course_type varchar(15) NOT NULL,
    Department_ID char(5),
    PRIMARY KEY(Course_code)
);

CREATE TABLE Attendance (
    Attendance_ID char(10),
    Date DATE,
    Theory varchar(10),
    Practical varchar(10),
    Course_code char(7),
    Student_ID varchar(5),
    Medical_Id char(5),
    Teach_officer_ID varchar(5),
    PRIMARY KEY(Attendance_ID)
);

CREATE TABLE Notice (
    Notice_ID char(5),
    lecture_ID varchar(5),
    Date DATE,
    description varchar(1000),
    PRIMARY KEY(Notice_ID)
);

CREATE TABLE Medical (
    Medical_Id char(5),
    Student_ID varchar(5),
    Tech_officer_ID varchar(5),
    Start_Date DATE,
    End_Date DATE,
    PRIMARY KEY(Medical_Id)
);

-- Insert sample data into the tables

-- Insert sample data into the Course table
INSERT INTO Course (Course_code, Name, Credit, Course_hours, Course_type, Department_ID)
VALUES
    ('ICT1233', 'Server Side Web Development', 3, 45, 'GPA', 'DP001'),
    ('ICT1213', 'Descrete Mathamatics', 4, 60, 'GPA', 'DP001'),
    ('ICT1253', 'Computer Networkig', 3, 45, 'GPA', 'DP001'),
    ('ICT1212', 'DBMS', 3, 45, 'GPA', 'DP001'),
    ('ICT1242', 'Computer Architecher', 3, 45, 'GPA', 'DP001'),
    
    ('TMS2022', 'Physics', 4, 60, 'GPA', 'DP003'),
    ('TMS4302', 'Calculus', 3, 45, 'GPA', 'DP003'),
    ('TMS6301', 'Wrokshop', 3, 45, 'GPA', 'DP003'),
    ('TMS6302', 'Electricity and Magnatisam', 3, 45, 'GPA', 'DP003'),
    ('TMS7302', 'Properties Of Matters', 3, 45, 'GPA', 'DP003'),

    ('BST4024', 'Fisheries', 3, 45, 'GPA', 'DP003'),
    ('BST3021', 'Micro Biology', 3, 45, 'GPA', 'DP003'),
    ('BST2343', 'Genetics', 3, 45, 'GPA', 'DP003'),
    ('BST2331', 'Electronic', 3, 45, 'GPA', 'DP003');

-- Insert sample data into the Attendance table
INSERT INTO Attendance (Attendance_ID, Date, Theory, Practical, Course_code, Student_ID, Medical_Id,Teach_officer_ID)
VALUES
    ('ATTIT001', '2023-03-10', 'Present','Present', 'ICT1212', 'S4', NULL,'T4'),
    ('ATTIT002', '2023-03-10', 'Present','Present', 'ICT1212', 'S5', NULL,'T4'),
    ('ATTIT003', '2023-03-10', 'Present','Present', 'ICT1212', 'S8', NULL,'T4'),
    ('ATTIT004', '2023-03-10', 'Absant', 'Absant', 'ICT1212', 'S11', NULL,'T4'),
    ('ATTIT005', '2023-03-10', 'Present','Present', 'ICT1212', 'S13', NULL,'T4'),

    ('ATTIT006', '2023-03-11', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT007', '2023-03-11', 'Present','Present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT008', '2023-03-11', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT009', '2023-03-11', 'Absant', 'Absant', 'ICT1212', 'S11', 'M1003','T6'),
    ('ATTIT010', '2023-03-11', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0076', '2023-03-12', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0075', '2023-03-12', 'Present','Present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0074', '2023-03-12', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0073', '2023-03-12', 'Absant', 'Absant', 'ICT1212', 'S11', 'M1003','T6'),
    ('ATTIT0072', '2023-03-12', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0012', '2023-03-13', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0013', '2023-03-13', 'Present','Absant', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0014', '2023-03-13', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0015', '2023-03-13', 'Absant', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0016', '2023-03-13', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0017', '2023-03-14', 'Absant','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0018', '2023-03-14', 'Present','Present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0019', '2023-03-14', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0020', '2023-03-14', 'Absant', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0021', '2023-03-14', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0022', '2023-03-15', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0023', '2023-03-15', 'Absant','Absant', 'ICT1212', 'S5', 'M1006','T6'),
    ('ATTIT0024', '2023-03-15', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0025', '2023-03-15', 'Absant', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0026', '2023-03-15', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0027', '2023-03-16', 'Absant','Absant', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0028', '2023-03-16', 'Present','Present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0029', '2023-03-16', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0030', '2023-03-16', 'Absant', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0031', '2023-03-16', 'Present','Present', 'ICT1212', 'S13', 'M1005','T6'),

    ('ATTIT0032', '2023-03-17', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0033', '2023-03-17', 'Absant','Present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0034', '2023-03-17', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0035', '2023-03-17', 'Absant', 'Present', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0036', '2023-03-17', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0037', '2023-03-18', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0038', '2023-03-18', 'Present','Absant', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0039', '2023-03-18', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0040', '2023-03-18', 'Present', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0041', '2023-03-18', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0042', '2023-03-19', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0043', '2023-03-19', 'Present','Absant', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0044', '2023-03-19', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0045', '2023-03-19', 'Absant', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0046', '2023-03-19', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0047', '2023-03-20', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0048', '2023-03-20', 'Absant','Absant', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0049', '2023-03-20', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0050', '2023-03-20', 'Present', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0051', '2023-03-20', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0052', '2023-03-21', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0053', '2023-03-21', 'Present','Absant', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0054', '2023-03-21', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0055', '2023-03-21', 'Present','Present', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0056', '2023-03-21', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0057', '2023-03-22', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0058', '2023-03-22', 'Present','Absant', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0059', '2023-03-22', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0060', '2023-03-22', 'Present', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0061', '2023-03-22', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0062', '2023-03-23', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0063', '2023-03-23', 'Absant','Absant', 'ICT1212', 'S5', 'M1007','T6'),
    ('ATTIT0064', '2023-03-23', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0065', '2023-03-23', 'Absant', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0066', '2023-03-23', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0067', '2023-03-24', 'Present','Present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0068', '2023-03-24', 'Absant','Present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0069', '2023-03-24', 'Present','Present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0070', '2023-03-24', 'Absant', 'Absant', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0071', '2023-03-24', 'Present','Present', 'ICT1212', 'S13', NULL,'T6'),

-- End of ICT attendance

    ('ATTBT0016', '2023-03-10', 'Present','Present', 'BST4024', 'S7', NULL,'T3'),
    ('ATTBT0017', '2023-03-10', 'Present','Present', 'BST4024', 'S10', NULL,'T3'),
    ('ATTBT0018', '2023-03-10', 'Absent', 'Absent', 'BST4024', 's15', 'M1001','T3'),

    ('ATTBT0019', '2023-03-10', 'Present','Present', 'BST2343', 'S7', NULL,'T6'),
    ('ATTBT0020', '2023-03-10', 'Present','Present', 'BST2343', 'S10', NULL,'T6'),
    ('ATTBT0021', '2023-03-10', 'Absent','Absent', 'BST2343', 's15', 'M1001','T6'),

    ('ATTET0022', '2023-03-10', 'Present','Present', 'TMS2022', 'S6', NULL,'T2'),
    ('ATTET0023', '2023-03-10', 'Absent', 'Absent', 'TMS2022', 'S9', 'M1002','T2'),
    ('ATTET0024', '2023-03-10', 'Present','Present', 'TMS2022', 'S12', NULL,'T2'),
    ('ATTET0025', '2023-03-10', 'Present','Present', 'TMS2022', 'S14', NULL,'T2'),

    ('ATTET0026', '2023-03-11', 'Present','Present', 'TMS6302', 'S6', NULL,'T5'),
    ('ATTET0027', '2023-03-11', 'Absent', 'Absent', 'TMS6302', 'S9', 'M1002','T5'),
    ('ATTET0028', '2023-03-11', 'Present','Present', 'TMS6302', 'S12', NULL,'T5'),
    ('ATTET0029', '2023-03-11', 'Present','Present', 'TMS6302', 'S14', NULL,'T5'),

    ('ATTIT0030', '2023-03-11', 'Present','Present', 'ICT1253', 'S4', NULL,'T5'),
    ('ATTIT0031', '2023-03-11', 'Present','Present', 'ICT1253', 'S5', NULL,'T5'),
    ('ATTIT0032', '2023-03-11', 'Present','Present', 'ICT1253', 'S8', NULL,'T5'),
    ('ATTIT0033', '2023-03-11', 'Absant', 'Absant', 'ICT1253', 'S11', 'M1003','T5'),
    ('ATTIT0034', '2023-03-11', 'Present','Present', 'ICT1253', 'S13', NULL,'T5'),

    ('ATTIT0035', '2023-03-11', 'Present','Present', 'ICT1242', 'S4', NULL,'T3'),
    ('ATTIT0036', '2023-03-11', 'Present','Present', 'ICT1242', 'S5', NULL,'T3'),
    ('ATTIT0037', '2023-03-11', 'Present','Present', 'ICT1242', 'S8', NULL,'T3'),
    ('ATTIT0038', '2023-03-11', 'Absant', 'Absant', 'ICT1242', 'S11', 'M1003','T3'),
    ('ATTIT0039', '2023-03-11', 'Present','Present', 'ICT1242', 'S13', NULL,'T3'),

    ('ATTBT0040', '2023-03-11', 'Present','Present', 'BST4024', 'S7', NULL,'T6'),
    ('ATTBT0041', '2023-03-11', 'Present','Present', 'BST4024', 'S10', NULL,'T6'),
    ('ATTBT0042', '2023-03-11', 'Absent', 'Absent', 'BST4024', 's15', 'M1001','T6'),
    ('ATTBT0043', '2023-03-11', 'Present','Present', 'BST2343', 'S7', NULL,'T6'),
    ('ATTBT0044', '2023-03-11', 'Present','Present', 'BST2343', 'S10', NULL,'T6'),
    ('ATTBT0045', '2023-03-11', 'Absent', 'Absent', 'BST2343', 's15', 'M1001','T6'),

    ('ATTET0046', '2023-03-11', 'Present','Present', 'ICT1242', 'S3', NULL,'T6'),
    ('ATTET0047', '2023-03-11', 'Absent', 'Absent', 'ICT1242', 'S4', 'M1002','T6'),
    ('ATTET0048', '2023-03-11', 'Present','Present', 'ICT1242', 'S5', NULL,'T6'),
    ('ATTET0049', '2023-03-11', 'Present','Present', 'ICT1242', 'S6', NULL,'T6'),
    ('ATTET0050', '2023-03-11', 'Absent', 'Absent', 'ICT1242', 'S7', NULL,'T6');


-- Insert sample data into the Notice table
INSERT INTO Notice (Notice_ID,lecture_ID, Date, description)
VALUES
    ('N5001','L1' '2023-03-01', 'Class cancellation on March 5th due to holiday.'),
    ('N5002','L2' '2023-03-10', 'Faculty meeting on March 15th at 3:00 PM.'),
    ('N5003','L2' '2023-04-05', 'Upcoming midterm exams schedule.'),
    ('N5004','L2' '2023-04-15', 'Library closure on April 20th for maintenance'),
    ('N5005','L4' '2023-04-25', 'Guest lecture on May 1st in the auditorium'),
    ('N5006','L4' '2023-05-05', 'Final exam schedule for the current semester'),
    ('N5007','L5' '2023-05-15', 'Graduation ceremony details for this year');

-- Insert sample data into the Medical table
INSERT INTO Medical (Medical_Id,Student_ID, Tech_officer_ID, Start_Date, End_Date)
VALUES
    ('M1001','s15','T1', '2023-03-10', '2023-03-12'),
    ('M1002','s09','T2', '2023-03-10', '2023-03-11'),
    ('M1003','s11','T2', '2023-03-11', '2023-03-12'),
    ('M1004','s11','T3', '2023-03-10', '2023-03-11');
    ('M1005','s13','T4', '2023-03-16', '2023-03-17');
    ('M1006','s5','T4', '2023-03-15', '2023-03-16');
    ('M1007','s5','T4', '2023-03-23', '2023-03-16');

--Adding foreign keys
ALTER TABLE Course ADD FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID);
ALTER TABLE Attendance ADD FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Attendance ADD FOREIGN KEY(Medical_Id) REFERENCES Medical(Medical_Id);
ALTER TABLE Attendance ADD FOREIGN KEY(Teach_officer_ID) REFERENCES Tech_officer(Teach_officer_ID);
ALTER TABLE Notice ADD FOREIGN KEY(lecture_ID) REFERENCES lecture(lecture_ID);
ALTER TABLE Medical ADD FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Medical ADD FOREIGN KEY(Tech_officer) REFERENCES Tech_officer(Teach_officer_ID);

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

--All student Theory Attendance, Subject by Subject without Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'THEORY Attendance percentage'
FROM Attendance 
WHERE Theory = 'Present'
GROUP BY Student_ID,Course_code;

--All studence Theory Attendance above 80 present without Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'THEORY Attendance percentage'
FROM Attendance 
WHERE Theory = 'Present'
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>80;

--All student Practical Attendance, Subject by Subject without Medical
SELECT Student_ID,Course_code,COUNT( Attendance_ID)*100/15 as 'Practical Attendance percentage'
FROM Attendance 
WHERE Practical = 'Present'
GROUP BY Student_ID,Course_code;

--All studence Practical Attendance above 80 present without Medical
SELECT Student_ID,Course_code,COUNT( Attendance_ID)*100/15 as 'Practical Attendance percentage'
FROM Attendance 
WHERE Practical = 'Present'
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>80;

--All student Theory Attendance, Subject by Subject with Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'THEORY Attendance percentage'
FROM Attendance 
WHERE Theory = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code;

--All studence Theory Attendance above 80 present with Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'THEORY Attendance percentage'
FROM Attendance 
WHERE Theory = 'Present'
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>80;

--All student Practical Attendance, Subject by Subject with Medical above 80 precent
SELECT Student_ID,Course_code,COUNT( Attendance_ID)*100/15 as 'Practical Attendance percentage'
FROM Attendance 
WHERE Practical = 'Present' or Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>80;

--by giving the course code 
--theory subject without medical
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1212' AND Theory='Present'
GROUP BY Student_ID;

--theory subject with medical
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1212' AND (Theory='Present' OR Medical_Id IS NOT NULL)
GROUP BY Student_ID;

--Practical subject without medical
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1212' AND Theory='Present'
GROUP BY Student_ID;

--Practical subject with medical
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1212' AND (Theory='Present' OR Medical_Id IS NOT NULL)
GROUP BY Student_ID;

--for all the subjects with percentage and eligibility 
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE Theory = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code;

--as individuals by giving the registration no 
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE (Theory = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID='s5' 
GROUP BY Course_code,Student_ID;

--ATTENDANCE for practical and as combined