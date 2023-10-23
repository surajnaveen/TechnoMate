--Create Tables

CREATE TABLE Department (
    Department_ID char(5),
    Name varchar(50) NOT NULL,
    Dean_ID char(5),
    PRIMARY KEY(Department_ID)
);

CREATE TABLE Course (
    Course_code char(7),
    Name varchar(50),
    Credit int,
    Course_hours int,
    Course_type varchar(15) NOT NULL,
    Department_ID char(5),
    PRIMARY KEY(Course_code)
);

CREATE TABLE Marks(
    Marks_ID char(15),
    Mid_marks int,
    Final_marks int,
    GPA int NOT NULL,
    PRIMARY KEY(Marks_ID)
);

CREATE TABLE Assignment (
    Assignment_ID char(10),
    Marks int,
    Date DATE,
    PRIMARY KEY(Assignment_ID)
);

CREATE TABLE Attendance (
    Attendance_ID char(10),
    Date DATE,
    Status char(10),
    Course_code char(7),
    Student_ID varchar(5),
    Medical_Id char(5),
    PRIMARY KEY(Attendance_ID)
);

CREATE TABLE Notice (
    Notice_ID char(5),
    Date DATE,
    description varchar(1000),
    PRIMARY KEY(Notice_ID)
);

CREATE TABLE Medical (
    Medical_Id char(5),
    Start_Date DATE,
    End_Date DATE,
    PRIMARY KEY(Medical_Id)
)

-- Insert sample data into the tables
-- Insert sample data into the Department table
INSERT INTO Department (Department_ID, Name, Dean_ID)
VALUES
    ('DP001', 'Information and Communication Technology', 'F2001'),
    ('DP002', 'Engineering Technology', 'F2002'),
    ('DP003', 'Bio Systems Technology', 'F2003'),
    ('DP004', 'Multidisiplinary Studies', 'F2004');

-- Insert sample data into the Course table
INSERT INTO Course (Course_code, Name, Credit, Course_hours, Course_type, Department_ID)
VALUES
    ('ICT1122', 'Introduction to Programming', 3, 45, 'GPA', 'DP001'),
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
    ('BST2331', 'Electronic', 3, 45, 'GPA', 'DP003'),
    ('ENG1212', 'English', 3, 45, 'Non GPA', 'DP004'),
    ('TCS1212', 'Management', 3, 45, 'Non GPA', 'DP004');

-- Insert sample data into the Marks table
INSERT INTO Marks (Marks_ID, Mid_marks, Final_marks, GPA)
VALUES
    ('MKS01', 85, 92, 4),
    ('MKS02', 70, 78, 3),
    ('MKS03', 92, 88, 4),
    ('MKS04', 78, 85, 3),
    ('MKS05', 90, 94, 4),
    ('MKS06', 65, 72, 3),
    ('MKS07', 88, 90, 4),
    ('MKS08', 76, 80, 3);

-- Insert sample data into the Assignment table
INSERT INTO Assignment (Assignment_ID, Marks, Date)
VALUES
    ('A2001', 95, '2023-03-15'),
    ('A2002', 80, '2023-04-05'),
    ('A2003', 88, '2023-02-20'),
    ('A2004', 72, '2023-03-25'),
    ('A2005', 90, '2023-04-10'),
    ('A2006', 85, '2023-03-05'),
    ('A2007', 78, '2023-04-15'),
    ('A2008', 94, '2023-03-18');

-- Insert sample data into the Attendance table
INSERT INTO Attendance (Attendance_ID, Date, Status, Course_code, Student_ID, Medical_Id)
VALUES
    ('ATTIT002', '2023-03-10', 'Present', 'ICT1122', 'S4', NULL),
    ('ATTIT003', '2023-03-10', 'Present', 'ICT1122', 'S5', NULL),
    ('ATTIT004', '2023-03-10', 'Present', 'ICT1122', 'S8', NULL),
    ('ATTIT005', '2023-03-10', 'Absant', 'ICT1122', 'S11', NULL),
    ('ATTIT006', '2023-03-10', 'Present', 'ICT1122', 'S13', NULL),

    ('ATTIT008', '2023-03-10', 'Present', 'ICT1212', 'S4', NULL),
    ('ATTIT009', '2023-03-10', 'Present', 'ICT1212', 'S5', NULL),
    ('ATTIT010', '2023-03-10', 'Present', 'ICT1212', 'S8', NULL),
    ('ATTIT011', '2023-03-10', 'Absant', 'ICT1212', 'S11', NULL),
    ('ATTIT012', '2023-03-10', 'Present', 'ICT1212', 'S13', NULL),

    ('ATTBT001', '2023-03-10', 'Present', 'BST4024', 'S7', NULL),
    ('ATTBT002', '2023-03-10', 'Present', 'BST4024', 'S10', NULL),
    ('ATTBT003', '2023-03-10', 'Absent', 'BST4024', 's15', 'M1001'),
    ('ATTBT004', '2023-03-10', 'Present', 'BST2343', 'S7', NULL),
    ('ATTBT005', '2023-03-10', 'Present', 'BST2343', 'S10', NULL),
    ('ATTBT006', '2023-03-10', 'Absent', 'BST2343', 's15', 'M1001'),

    ('ATTET003', '2023-03-10', 'Present', 'TMS2022', 'S6', NULL),
    ('ATTET004', '2023-03-10', 'Absent', 'TMS2022', 'S9', 'M1002'),
    ('ATTET005', '2023-03-10', 'Present', 'TMS2022', 'S12', NULL),
    ('ATTET006', '2023-03-10', 'Present', 'TMS2022', 'S14', NULL),

    ('ATTET008', '2023-03-11', 'Present', 'TMS6302', 'S6', NULL),
    ('ATTET009', '2023-03-11', 'Absent', 'TMS6302', 'S9', 'M1002'),
    ('ATTET010', '2023-03-11', 'Present', 'TMS6302', 'S12', NULL),
    ('ATTET011', '2023-03-11', 'Present', 'TMS6302', 'S14', NULL),

    ('ATTIT013', '2023-03-11', 'Present', 'ICT1253', 'S4', NULL),
    ('ATTIT014', '2023-03-11', 'Present', 'ICT1253', 'S5', NULL),
    ('ATTIT015', '2023-03-11', 'Present', 'ICT1253', 'S8', NULL),
    ('ATTIT016', '2023-03-11', 'Absant', 'ICT1253', 'S11', NULL),
    ('ATTIT017', '2023-03-11', 'Present', 'ICT1253', 'S13', NULL),

    ('ATTBT007', '2023-03-11', 'Present', 'BST4024', 'S7', NULL),
    ('ATTBT008', '2023-03-11', 'Present', 'BST4024', 'S10', NULL),
    ('ATTBT009', '2023-03-11', 'Absent', 'BST4024', 's15', 'M1001'),
    ('ATTBT0010', '2023-03-11', 'Present', 'BST2343', 'S7', NULL),
    ('ATTBT0011', '2023-03-11', 'Present', 'BST2343', 'S10', NULL),
    ('ATTBT0012', '2023-03-11', 'Absent', 'BST2343', 's15', 'M1001'),

    ('ATTET007', '2023-03-11', 'Present', 'MECH301', 'S3', NULL),
    ('ATTET008', '2023-03-11', 'Absent', 'CSE101', 'S4', 'M1002'),
    ('ATTET009', '2023-03-11', 'Present', 'EEE201', 'S5', NULL),
    ('ATTET010', '2023-03-11', 'Present', 'MECH301', 'S6', NULL),
    ('ATTET011', '2023-03-11', 'Absent', 'MECH301', 'S7', NULL);


-- Insert sample data into the Notice table
INSERT INTO Notice (Notice_ID, Date, description)
VALUES
    ('N5001', '2023-03-01', 'Class cancellation on March 5th due to holiday.'),
    ('N5002', '2023-03-10', 'Faculty meeting on March 15th at 3:00 PM.'),
    ('N5003', '2023-04-05', 'Upcoming midterm exams schedule.'),
    ('N5004', '2023-04-15', 'Library closure on April 20th for maintenance'),
    ('N5005', '2023-04-25', 'Guest lecture on May 1st in the auditorium'),
    ('N5006', '2023-05-05', 'Final exam schedule for the current semester'),
    ('N5007', '2023-05-15', 'Graduation ceremony details for this year');

-- Insert sample data into the Medical table
INSERT INTO Medical (Medical_Id, Start_Date, End_Date)
VALUES
    ('M1001', '2023-03-10', '2023-03-12'),
    ('M1002', '2023-03-10', '2023-03-11');

--Adding foreign keys
ALTER TABLE Department ADD FOREIGN KEY(Dean_ID) REFERENCES Dean(Dean_ID);
ALTER TABLE Course ADD FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID);
ALTER TABLE Attendance ADD FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Attendance ADD FOREIGN KEY(Course_code) REFERENCES Course(Course_code);
ALTER TABLE Attendance ADD FOREIGN KEY(Medical_Id) REFERENCES Medical(Medical_Id);