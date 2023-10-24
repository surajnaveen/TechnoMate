CREATE TABLE Notice_Lecture (Notice_ID CHAR(5),Lecture_ID CHAR(5));
CREATE TABLE Lecture_Student (Student_ID CHAR(5),Lecture_ID CHAR(5));
CREATE TABLE Student_Notice (Student_ID CHAR(5),Notice_ID CHAR(5));
CREATE TABLE Student_Marks (Student_ID CHAR(5),Mask_ID CHAR(5));
CREATE TABLE Lecture_Course (Lecture_ID CHAR(5),Course_ID CHAR(5));

INSERT INTO Notice_Lecture VALUES(
('N5001','L1'),
('N5002','L3'),
('N5003','L5'),
('N5004','L3'),
('N5005','L2'),
('N5006','L4'),
('N5007','L1'));

INSERT INTO Notice_Lecture VALUES(
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
    ('S15','L3'));


INSERT INTO student_Notice VALUES (
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
    ('S9','N5006'));

INSERT INTO Student_Marks VALUES (
    ('S1','MKS01'),
    ('S2','MKS02'),
    ('S3','MKS03'),
    ('S4','MKS04'),
    ('S5','MKS05'),
    ('S6','MKS06'),
    ('S7','MKS07'),
    ('S8','MKS08'));


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