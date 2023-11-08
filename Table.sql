
CREATE TABLE Marks (
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


-- Insert sample data into the Department table


INSERT INTO student_course(Student_ID,course_code,status)VALUES
('S1','ICT1122','NO'),
('S1','ICT1212','No'),
('S1','ICT1253','No'),
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
('S4','ICT1122','No'),
('S4','ICT1212','No'),
('S4','ICT1253','No'),
('S4','ICT1242','No'),
('S5','ICT1122','No'),
('S5','ICT1212','No'),
('S5','ICT1253','NO'),
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
('S8','ICT1122','No'),
('S8','ICT1212','No'),
('S8','ICT1253','No'),
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
('S11','ICT1122','NO'),
('S11','ICT1212','No'),
('S11','ICT1253','No'),
('S11','ICT1242','No'),
('S12','TMS2022','No'),
('S12','TMS4302','No'),
('S12','TMS6302','No'),
('S12','TMS2022','No'),
('S12','TMS2022','No'),
('S13','ICT1122','No'),
('S13','ICT1212','No'),
('S13','ICT1253','No'),
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


