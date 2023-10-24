CREATE TABLE student_course(
student_id char(10),
course_code varchar(10),
status varchar(10));

Alter table student_course ADD FOREIGN KEY(student_id) REFERENCES Student(Student_ID);
Alter table student_course ADD FOREIGN KEY(course_code) REFERENCES Course(Course_code);


CREATE TABLE student_attendance(
student_id char(10),
attendance_id varchar(15));
Alter table student_attendance ADD FOREIGN KEY(student_id) REFERENCES Student(Student_ID);
Alter table student_attendance ADD FOREIGN KEY(attendance_id) REFERENCES Attendance(Attendance_ID);


CREATE TABLE marks_course(
marks_id char(10),
course_code varchar(10));
Alter table mraks_course ADD FOREIGN KEY(marks_id) REFERENCES Marks(Marks_ID);
Alter table marks_course ADD FOREIGN KEY(course_code) REFERENCES Course(Course_ID);

CREATE TABLE attendance_course(
course_code char(10),
attendance_code varchar(15));

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
 
  
INSERT INTO Student_attendance(Student_ID,attendance_id)
VALUES
('S4','ATTIT002'),
('S5','ATTIT003'),
('S8','ATTIT004'),
('S11','ATTIT005'),
('S13','ATTIT006'),

('S4','ATTIT008'),
('S5','ATTIT009'),
('S8','ATTIT0010'),
('S11','ATTIT0011'),
('S13','ATTIT0012'),

('S7','ATTIT001'),
('S10','ATTIT002'),
('S15','ATTIT003'),
('S7','ATTIT004'),
('S10','ATTIT005'),
('S15','ATTIT006'),

('S6','ATTIT008'),
('S9','ATTIT009'),
('S12','ATTIT0010'),
('S14','ATTIT0011'),


('S4','ATTIT0013'),
('S5','ATTIT0014'),
('S8','ATTIT0015'),
('S11','ATTIT0016'),
('S13','ATTIT0017'),

('S7','ATTIT007'),
('S10','ATTIT008'),
('S15','ATTIT009'),
('S17','ATTIT0010'),
('S10','ATTIT0011'),
('S15','ATTIT0012'),

('S3','ATTIT007'),
('S4','ATTIT008'),
('S5','ATTIT009'),
('S6','ATTIT0010'),
('S7','ATTIT0011');


INSERT INTO marks_course (marks_id,course_code)
VALUES
    ('MKS01','ICT1233'),
    ('MKS02','ICT1253'),
    ('MKS03','ICT1212'),
    ('MKS04','ICT1213'),
    ('MKS19','ICT1242'),

    ('MKS04','ICT1233'),
    ('MKS05','ICT1253'),
    ('MKS06','ICT1212'),
    ('MKS07','ICT1213'),
    ('MKS18','ICT1242'),

    ('MKS08','ICT1233'),
    ('MKS09','ICT1253'),
    ('MKS10','ICT1212'),
    ('MKS11','ICT1242'),

    ('MKS12','ICT1233'),
    ('MKS13','ICT1253'),
    ('MKS14','ICT1212'),
    ('MKS14','ICT1213'),
    ('MKS17','ICT1242'),

    ('MKS14','ICT1233'),
    ('MKS15','ICT1253'),
    ('MKS16','ICT1212'),
    ('MKS17','ICT1213'),
    ('MKS18','ICT1242');

INSERT INTO attendance_course(course_code,attendance_code)
VALUES
('ICT1212','ATTIT002'),
    ('ICT1212','ATTIT003'),
    ('ICT1212','ATTIT004'),
    ('ICT1212','ATTIT005'),
    ('ICT1212','ATTIT006'),

    ('ICT1212','ATTIT008'),
    ('ICT1212','ATTIT009'),
    ('ICT1212','ATTIT010'),
    ('ICT1212','ATTIT011'),
    ('ICT1212','ATTIT012'),

    ('BST4024','ATTBT001'),
    ('BST4024','ATTBT002'),
    ('BST4024','ATTBT003'),

    ('BST2343','ATTBT004'),
    ('BST2343','ATTBT005'),
    ('BST2343','ATTBT006'),

    ('TMS2022','ATTET003'),
    ('TMS2022','ATTET004'),
    ('TMS2022','ATTET005'),
    ('TMS2022','ATTET006'),

    ('TMS6302','ATTET008'),
    ('TMS6302','ATTET009'),
    ('TMS6302','ATTET010'),
    ('TMS6302','ATTET011'),

    ('ICT1253','ATTIT013'),
    ('ICT1253','ATTIT014'),
    ('ICT1253','ATTIT015'),
    ('ICT1253','ATTIT016'),
    ('ATTIT017', 'ICT1253'),

    ('ICT1242','ATTIT013'),
    ('ICT1242','ATTIT014'),
    ('ICT1242','ATTIT015'),
    ('ICT1242','ATTIT016'),
    ('ICT1242','ATTIT017'),

    ('BST4024','ATTBT007'),
    ('BST4024','ATTBT008'),
    ('BST4024','ATTBT009'),
    ('BST2343','ATTBT0010'),
    ('BST2343','ATTBT0011'),
    ('BST2343','ATTBT0012'),

    ('ICT1242','ATTET007'),
    ('ICT1242','ATTET008'),
    ('ICT1242','ATTET009'),
    ('ICT1242','ATTET010'),
    ('ICT1242','ATTET011');


INSERT INTO marks_assignment (marks_id,assignment_code)
VALUES
