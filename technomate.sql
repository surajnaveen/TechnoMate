--Create Tables

CREATE TABLE Course (
    Course_code char(10),
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
    ('ICT1253T', 'Computer Networkig Theory', 3, 45, 'GPA', 'DP001'),
    ('ICT1253P', 'Computer Networkig Practical', 3, 45, 'GPA', 'DP001'),
    ('ICT1212', 'DBMS', 3, 45, 'GPA', 'DP001'),
    ('ICT1222', 'DBMS practicum', 3, 45, 'GPA', 'DP001'),
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
INSERT INTO Attendance (Attendance_ID, Date, Attendance, Practical, Course_code, Student_ID, Medical_Id,Teach_officer_ID)
VALUES
    ('ATTIT001', '2023-03-10', 'present', 'ICT1212', 'S4', NULL,'T4'),
    ('ATTIT002', '2023-03-10', 'present', 'ICT1212', 'S5', NULL,'T4'),
    ('ATTIT003', '2023-03-10', 'Absant', 'ICT1212', 'S8', NULL,'T4'),
    ('ATTIT004', '2023-03-10', 'present', 'ICT1212', 'S11', NULL,'T4'),
    ('ATTIT005', '2023-03-10', 'present', 'ICT1212', 'S13', NULL,'T4'),

    ('ATTIT006', '2023-03-11', 'precent', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT007', '2023-03-11', 'precent', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT008', '2023-03-11', 'precent', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT009', '2023-03-11', 'Absant', 'ICT1212', 'S11', 'M1003','T6'),
    ('ATTIT010', '2023-03-11', 'precent', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0076', '2023-03-12', 'Absant', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0075', '2023-03-12', 'precent', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0074', '2023-03-12', 'precent', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0073', '2023-03-12', 'Absant', 'ICT1212', 'S11', 'M1003','T6'),
    ('ATTIT0072', '2023-03-12', 'precent', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0012', '2023-03-13', 'precent', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0013', '2023-03-13', 'precent', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0014', '2023-03-13', 'precent', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0015', '2023-03-13', 'precent', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0016', '2023-03-13', 'precent', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0017', '2023-03-14', 'precent', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0018', '2023-03-14', 'precent', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0019', '2023-03-14', 'precent', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0020', '2023-03-14', 'precent', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0021', '2023-03-14', 'precent', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0022', '2023-03-15','precent' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0023', '2023-03-15','Absant' ,'ICT1212', 'S5', 'M1006','T6'),
    ('ATTIT0024', '2023-03-15','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0025', '2023-03-15','precent' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0026', '2023-03-15','precent' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0027', '2023-03-16','precent' ,'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0028', '2023-03-16','precent' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0029', '2023-03-16','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0030', '2023-03-16','precent' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0031', '2023-03-16','Absant' , 'ICT1212', 'S13', 'M1005','T6'),

    ('ATTIT0032', '2023-03-17','precent' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0033', '2023-03-17','precent' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0034', '2023-03-17','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0035', '2023-03-17','Absant' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0036', '2023-03-17','precent' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0037', '2023-03-18','precent' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0038', '2023-03-18','precent' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0039', '2023-03-18','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0040', '2023-03-18','precent' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0041', '2023-03-18','precent' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0042', '2023-03-19','Absant' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0043', '2023-03-19','precent' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0044', '2023-03-19','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0045', '2023-03-19','precent' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0046', '2023-03-19','precent' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0047', '2023-03-20','precent' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0048', '2023-03-20','Absant' ,'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0049', '2023-03-20','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0050', '2023-03-20','precent' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0051', '2023-03-20','precent' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0052', '2023-03-21','precent' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0053', '2023-03-21','Absant' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0054', '2023-03-21','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0055', '2023-03-21','precent' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0056', '2023-03-21','Absant' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0057', '2023-03-22','precent' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0058', '2023-03-22','precent' ,'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0059', '2023-03-22','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0060', '2023-03-22','precent' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0061', '2023-03-22','precent' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0062', '2023-03-23','precent' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0063', '2023-03-23','Absant' ,'ICT1212', 'S5', 'M1007','T6'),
    ('ATTIT0064', '2023-03-23','precent' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0065', '2023-03-23','precent' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0066', '2023-03-23','precent' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0067', '2023-03-24','precent' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0068', '2023-03-24','precent' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0069', '2023-03-24','Absant' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0070', '2023-03-24','precent' ,'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0071', '2023-03-24','precent' , 'ICT1212', 'S13', NULL,'T6'),
-
    ('ATTIT0072', '2023-03-10', 'present', 'ICT1222', 'S4', NULL,'T4'),
    ('ATTIT0073', '2023-03-10', 'present', 'ICT1222', 'S5', NULL,'T4'),
    ('ATTIT0074', '2023-03-10', 'present', 'ICT1222', 'S8', NULL,'T4'),
    ('ATTIT0075', '2023-03-10', 'present', 'ICT1222', 'S11', NULL,'T4'),
    ('ATTIT0076', '2023-03-10', 'present', 'ICT1222', 'S13', NULL,'T4'),

    ('ATTIT0077', '2023-03-11', 'precent', 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0078', '2023-03-11', 'precent', 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0079', '2023-03-11', 'precent', 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0080', '2023-03-11', 'Absant', 'ICT1222', 'S11', 'M1003','T6'),
    ('ATTIT0081', '2023-03-11', 'precent', 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0082', '2023-03-12', 'Absant', 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0082', '2023-03-12', 'precent', 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0083', '2023-03-12', 'precent', 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0084', '2023-03-12', 'Absant', 'ICT12122', 'S11', 'M1003','T6'),
    ('ATTIT0086', '2023-03-12', 'precent', 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0087', '2023-03-13', 'precent', 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0088', '2023-03-13', 'precent', 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0089', '2023-03-13', 'precent', 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0090', '2023-03-13', 'Absant', 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0091', '2023-03-13', 'precent', 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0092', '2023-03-14', 'precent', 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0093', '2023-03-14', 'precent', 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0094', '2023-03-14', 'precent', 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0095', '2023-03-14', 'precent', 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0096', '2023-03-14', 'precent', 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0097', '2023-03-15','precent' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0098', '2023-03-15','Absant' ,'ICT1222', 'S5', 'M1006','T6'),
    ('ATTIT0099', '2023-03-15','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0100', '2023-03-15','precent' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0101', '2023-03-15','precent' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0102', '2023-03-16','precent' ,'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0103', '2023-03-16','precent' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0104', '2023-03-16','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0105', '2023-03-16','precent' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0106', '2023-03-16','Absant' , 'ICT1222', 'S13', 'M1005','T6'),

    ('ATTIT0107', '2023-03-17','precent' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0108', '2023-03-17','Absant' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0109', '2023-03-17','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0110', '2023-03-17','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0111', '2023-03-17','precent' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0112', '2023-03-18','precent' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0113', '2023-03-18','precent' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0114', '2023-03-18','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0115', '2023-03-18','precent' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0116', '2023-03-18','precent' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0117', '2023-03-19','Absant' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0118', '2023-03-19','Absant' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0119', '2023-03-19','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0120', '2023-03-19','precent' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0121', '2023-03-19','Absant' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0122', '2023-03-20','precent' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0123', '2023-03-20','Absant' ,'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0124', '2023-03-20','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0125', '2023-03-20','precent' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0126', '2023-03-20','precent' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0127', '2023-03-21','precent' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0128', '2023-03-21','Absant' , 'ICT122', 'S5', NULL,'T6'),
    ('ATTIT0129', '2023-03-21','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0130', '2023-03-21','precent' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0131', '2023-03-21','Absant' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0132', '2023-03-22','precent' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0133', '2023-03-22','precent' ,'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0134', '2023-03-22','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0135', '2023-03-22','precent' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0136', '2023-03-22','precent' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0137', '2023-03-23','precent' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0138', '2023-03-23','Absant' ,'ICT1222', 'S5', 'M1007','T6'),
    ('ATTIT0139', '2023-03-23','precent' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0140', '2023-03-23','precent' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0141', '2023-03-23','precent' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0142', '2023-03-24','precent' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0144', '2023-03-24','precent' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0146', '2023-03-24','Absant' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0148', '2023-03-24','precent' ,'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0149', '2023-03-24','precent' , 'ICT1222', 'S13', NULL,'T6'),
-

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
    ('M1004','s11','T3', '2023-03-10', '2023-03-11'),
    ('M1005','s13','T4', '2023-03-16', '2023-03-17'),
    ('M1006','s5','T4', '2023-03-15', '2023-03-16'),
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
--All student Attendance, Subject by Subject without Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present'
GROUP BY Student_ID,Course_code;

--All studence Attendance above 80 present without Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present'
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>80;

--All student Attendance, Subject by Subject with Medical
--view table
CREATE OR REPLACE VIEW Practical_Attendance AS
SELECT Student_ID,Course_code,COUNT( Attendance_ID)*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present' AND Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code;

SELECT * FROM Practical_Attendance;

--All student Attendance, Subject by Subject with Medical
--view table
CREATE OR REPLACE VIEW Theory_Attendance AS
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code;

SELECT * FROM Theory_Attendance;

--All studence Attendance above 80 present with Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>80;

--by giving the course code 
-- without medical
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1212' AND Theory='Present'
GROUP BY Student_ID;

-- CREATE PROCEDURE Function to view attendance by subject
DELIMITER //
CREATE PROCEDURE AttendanceForSubject ( subject char(10) )
BEGIN
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',
IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code=subject AND (Attendance='Present' OR Medical_Id IS NOT NULL)
GROUP BY Student_ID;
End//
DELIMITER ;

CALL AttendanceForSubject('ICT1212');

--with medical
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',
IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1222' AND (Attendance='Present' OR Medical_Id IS NOT NULL)
GROUP BY Student_ID;

--for all the subjects with percentage and eligibility 
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code;

--as individuals by giving the registration no 
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID='s5' 
GROUP BY Course_code,Student_ID;


--as individuals by giving the registration no (CREATE PROCEDURE)
DELIMITER //
CREATE PROCEDURE AttendanceForStudent (
studentId varchar(5))
BEGIN
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage'
IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID=studentId
GROUP BY Course_code,Student_ID;
END //
DELIMITER ;

CALL AttendanceForStudent('ICT1212');

--Attendance for Student and subject
DELIMITER //
CREATE PROCEDURE SubjectAndStudent(
studentId varchar(5),
subjectId char(10))
BEGIN
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID=studentId AND Course_code=subjectId
GROUP BY Course_code,Student_ID;
END //
DELIMITER ;

CALL SubjectAndStudent ('s4','ICT1212');