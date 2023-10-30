..........theekshana...........

CREATE TABLE student_course(
student_id char(10),
course_code varchar(10),
status varchar(10));

Alter table student_course ADD FOREIGN KEY(student_id) REFERENCES Student(Student_ID);
Alter table student_course ADD FOREIGN KEY(course_code) REFERENCES Course(Course_code);

CREATE TABLE Tech_officer(
    Teach_officer_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Role varchar(50));

INSERT INTO Tech_officer (Teofficer_ID, NIC, Role)VALUES
    ('T2', '890123456C', 'Tech Officer'),
    ('T3', '901234567D', 'Tech Officer'),
    ('T4', '012345678E', 'Tech Officer'),
    ('T5', '901234567G', 'Tech Officer'),
    ('T6', '012345678H', 'Tech Officer');
ALTER TABLE Tech_officer ADD FOREIGN KEY(NIC) REFERENCES User(NIC);

ALTER TABLE Dean ADD FOREIGN KEY(NIC) REFERENCES User(NIC);


...........nekmal..........

Lecturer_Student
Student_Notice
Lecturer_Course

CREATE TABLE Lecture(
    Lecture_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Position varchar(50),
    Department_ID CHAR(5));


INSERT INTO Lecture (Lecture_ID, NIC, Position, Department_ID) VALUES
    ('L1', '234567890G', 'ICT_HED', 'DP01'),
    ('L2', '345678901H', 'ET_HED', 'DP02'),
    ('L3', '456789012I', 'BST_HED', 'DP03'),
    ('L4', '567890123J', 'Lecturer', 'DP03'),
    ('L5', '678901234K', 'Professor', 'DP01'),
    ('L6', '789012345B', 'Lecture','DP2');

ALTER TABLE Lecture ADD FOREIGN KEY(NIC) REFERENCES User(NIC);