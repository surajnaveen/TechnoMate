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

--Adding foreign keys
ALTER TABLE Department ADD FOREIGN KEY(Dean_ID) REFERENCES Dean(Dean_ID);
ALTER TABLE Course ADD FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID);
ALTER TABLE Attendance ADD FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Attendance ADD FOREIGN KEY(Course_code) REFERENCES Course(Course_code);
ALTER TABLE Attendance ADD FOREIGN KEY(Medical_Id) REFERENCES Medical(Medical_Id);


-- Insert sample data into the tables
-- Insert sample data into the Department table
INSERT INTO Department (Department_ID, Name, Dean_ID)
VALUES
    ('D1001', 'Computer Science', 'F2001'),
    ('D1002', 'Electrical Engineering', 'F2002'),
    ('D1003', 'Mechanical Engineering', 'F2003'),
    ('D1004', 'Mathematics', 'F2004');

-- Insert sample data into the Course table
INSERT INTO Course (Course_code, Name, Credit, Course_hours, Course_type, Department_ID)
VALUES
    ('CSE101', 'Introduction to Programming', 3, 45, 'GPA', 'D1001'),
    ('EEE201', 'Circuit Analysis', 4, 60, 'Non GPA', 'D1002'),
    ('MECH301', 'Thermodynamics', 3, 45, 'GPA', 'D1003'),
    ('MATH101', 'Calculus I', 3, 45, 'Non GPA', 'D1004'),
    ('CSE102', 'Data Structures', 3, 45, 'GPA', 'D1001'),
    ('EEE202', 'Digital Electronics', 4, 60, 'Non GPA', 'D1002'),
    ('MECH302', 'Fluid Mechanics', 3, 45, 'GPA', 'D1003'),
    ('MATH102', 'Calculus II', 3, 45, 'Non GPA', 'D1004'),

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
    ('ATT3001', '2023-03-10', 'Present', 'CSE101', 'S001', NULL),
    ('ATT3002', '2023-03-12', 'Absent', 'EEE201', 'S002', 'M1001'),
    ('ATT3003', '2023-03-14', 'Present', 'MECH301', 'S003', NULL),
    ('ATT3004', '2023-03-10', 'Absent', 'CSE101', 'S004', 'M1002'),
    ('ATT3005', '2023-03-12', 'Present', 'EEE201', 'S005', NULL),
    ('ATT3006', '2023-03-14', 'Present', 'MECH301', 'S006', NULL),
    ('ATT3014', '2023-03-12', 'Present', 'EEE201', 'S014', NULL),
    ('ATT3015', '2023-03-14', 'Absent', 'MECH301', 'S015', NULL);


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
    ('M1001', '2023-03-12', '2023-03-14'),
    ('M1002', '2023-04-10', '2023-04-11');