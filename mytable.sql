CREATE TABLE student_course(
student_id char(10),
course_code varchar(10),
status varchar(10));


CREATE TABLE Tech_officer(
    Teach_officer_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Role varchar(50));


CREATE TABLE Department (
    Department_ID char(5),
    Name varchar(50) NOT NULL,
    Admin_Id varchar(5),
    Dean_ID varchar(5),
    PRIMARY KEY(Department_ID);
);

CREATE TABLE mark(
    mark_ID char(10) PRIMARY KEY,
    Student_ID char(10),
    Course_ID char(10),
    Mid_Theory float(3,2),
    Mid_practical float(3,2),
    Final_Theory float(3,2),
    Final_practical float(3,2)
    Quiz_1 float(3,2),
    Quiz_2 float(3,2),
    Quiz_3 float(3,2),
    Asgm_1 float(3,2),
    Asgm_2 float(3,2),
    Asgm_3 float(3,2),
    CA float(3,2)
);

--FORIEGN KEY
Alter table student_course ADD FOREIGN KEY(student_id) REFERENCES Student(Student_ID);
Alter table student_course ADD FOREIGN KEY(course_code) REFERENCES Course(Course_code);
ALTER TABLE Department ADD FOREIGN KEY(Dean_ID) REFERENCES Dean(Dean_ID);
ALTER TABLE Department ADD FOREIGN KEY(Admin_Id) REFERENCES Admin(Admin_Id);
ALTER TABLE Tech_officer ADD FOREIGN KEY(NIC) REFERENCES User(NIC);

--insert data


INSERT INTO student_course(Student_ID,course_code,status)VALUES
('S1','ICT1122','Repeat'),
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
('S5','ICT1253','Repeat'),
('S5','ICT1242','No'),

('S6','TMS2022','No'),
('S6','TMS4302','No'),
('S6','TMS6302','No'),
('S6','TMS2022','No'),
('S6','TMS2022','No'),

('S7','BST4024','No'),
('S7','BST3021','No'),
('S7','BST2343','No'),
('S7','BST2331','No'),

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
('S10','BST3021','No'),
('S10','BST2343','No'),
('S10','BST2331','No'),  

('S11','ICT1122','Repeat'),
('S11','ICT1212','No'),
('S11','ICT1253','No'),
('S11','ICT1242','No'),

('S12','TMS2022','No'),
('S12','TMS4302','No'),
('S12','TMS6302','No'),
('S12','TMS2022','No'),
('S12','TMS2022','No'),

('S13','ICT1122','Repeat'),
('S13','ICT1212','Repeat'),
('S13','ICT1253','No'),
('S13','ICT1242','No'),

('S14','TMS2022','No'),
('S14','TMS4302','No'),
('S14','TMS6302','No'),
('S14','TMS2022','No'),
('S14','TMS2022','No'),

('S15','BST4024','No'),
('S15','BST3021','No'),
('S15','BST2343','No'),
('S15','BST2331','No');
 
  
INSERT INTO Tech_officer (Teofficer_ID, NIC, Role)VALUES
    ('T2', '890123456C', 'Tech Officer'),
    ('T3', '901234567D', 'Tech Officer'),
    ('T4', '012345678E', 'Tech Officer'),
    ('T5', '901234567G', 'Tech Officer'),
    ('T6', '012345678H', 'Tech Officer');


INSERT INTO Department (Department_ID, Name,Admin_Id, Dean_ID)
VALUES
    ('DP001', 'Information and Communication Technology','A1', 'D1'),
    ('DP002', 'Engineering Technology','A1', 'D1'),
    ('DP003', 'Bio Systems Technology','A1', 'D1');

INSERT INTO Mark(Marks_ID,Student_ID,Course_ID,Mid_Theory,Mid_practical,Final_Theory,Final_practical,
    Quiz_1,Quiz_2,Quiz_3,Asgm_1,Asgm_2,Asgm_3)
VALUES
    ("MICT1","S4","",88,80,75,65,89,91,78,68,95,84),
    ("MICT1","S4","",97,80,75,65,88,91,78,88,95,84),
    ("MICT1","S4","",97,80,75,65,50,91,78,68,88,84),
    ("MICT1","S4","",97,80,75,65,89,91,78,68,95,88),
    ("MICT1","S4","",88,80,50,65,89,91,50,68,95,84),
    ("MICT1","S4","",97,80,75,88,89,91,78,68,95,84),
    ("MICT1","S4","",97,80,75,80,88,91,78,68,95,84),
    ("MICT1","S4","",97,88,75,65,89,91,78,68,95,84),
    ("MICT1","S4","",97,80,75,65,89,91,78,88,88,84),
    ("MICT1","S4","",97,80,45,65,80,50,78,68,95,84),
    ("MICT1","S4","",88,80,75,65,89,91,80,68,95,84),
    ("MICT1","S4","",97,80,75,65,88,91,78,88,95,84),
    ("MICT1","S4","",97,80,75,65,89,91,78,68,95,84),
