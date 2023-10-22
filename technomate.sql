CREATE TABLE Department (
    Department_ID char(5),
    Name varchar(50),
    Dean_ID char(5),
    PRIMARY KEY(Department_ID)
);

CREATE TABLE Course (
    Course_code char(7),
    Name varchar(50),
    Credit int,
    Course_hours int,
    Course_type varchar(15),
    Department_ID char(5),
    PRIMARY KEY(Course_code)
);

CREATE TABLE Marks(
    Marks_ID char(15),
    Mid_marks int,
    Final_marks int,
    GPA int,
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
    Medical DATE,
    Course_code char(7),
    Student_ID varchar(5),
    PRIMARY KEY(Attendance_ID)
);

CREATE TABLE Notice (
    Notice_ID char(5),
    Date DATE,
    description varchar(1000),
    PRIMARY KEY(Notice_ID)
);