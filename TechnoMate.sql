--Create Table--

CREATE TABLE User(
    NIC VARCHAR(15) PRIMARY KEY,
    First_name VARCHAR(20),
    Last_name VARCHAR(20),
    Address VARCHAR(50),
    Email VARCHAR(30),
    Gender CHAR(6),
    Dod DATE);

CREATE TABLE User_Contact(
    NIC VARCHAR(5) PRIMARY KEY,
    Contact1 INT(10),
    Contact2 INT(10));

CREATE TABLE Admin(
    Admin_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Role varchar(50),
    Department_ID CHAR(5));

CREATE TABLE Tech_officer(
    Teach_officer_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Role varchar(50),
    Attendence_ID CHAR(10));

CREATE TABLE Dean(
    Dean_ID VARCHAR(5),
    NIC VARCHAR(15));

CREATE TABLE Student(
    Student_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Type varchar(30),
    Department_ID CHAR(5));

CREATE TABLE Lecture(
    Lecture_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Position varchar(50),
    Department_ID CHAR(5));

--Add Foreign key--
ALTER TABLE User_Contact ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Admin ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Tech_officer ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Dean ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Student ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Lecture ADD FOREIGN KEY(NIC) REFERENCES User(NIC);

-- Insert sample data into the User table--
INSERT INTO User(NIC,First_name,Last_name,Address,Email,Gender,Dod)
VALUES
    ('678901234A', 'Sarah', 'Johnson', '321 Elm St', 'sarahjohnson@email.com', 'Female', '1980-08-05'),
    ('789012345B', 'David', 'Smith', '567 Oak St', 'davidsmith@email.com', 'Male', '1981-06-17'),
    ('890123456C', 'Sophia', 'Wilson', '654 Pine St', 'sophiawilson@email.com', 'Male', '1988-12-03'),
    ('901234567D', 'James', 'Brown', '234 Cedar St', 'jamesbrown@email.com', 'Male', '1991-02-28'),
    ('012345678E', 'Olivia', 'Davis', '876 Maple St', 'oliviadavis@email.com', 'Female', '1998-04-12'),
    ('123456789F', 'Matthew', 'Taylor', '123 Oak St', 'matthewtaylor@email.com', 'Male', '1985-09-15'),
    ('234567890G', 'Emily', 'Anderson', '456 Elm St', 'emilyanderson@email.com', 'Female', '1994-07-20'),
    ('345678901H', 'William', 'Miller', '789 Cedar St', 'williammiller@email.com', 'Male', '1987-03-25'),
    ('456789012I', 'Olivia', 'Moore', '987 Pine St', 'oliviamoore@email.com', 'Female', '1986-11-10'),
    ('567890123J', 'Ethan', 'Harris', '543 Maple St', 'ethanharris@email.com', 'Male', '1990-01-08'),
    ('678901234K', 'Ava', 'Wilson', '234 Birch St', 'avawilson@email.com', 'Female', '1999-02-19'),
    ('789012345L', 'Liam', 'Anderson', '876 Oak St', 'liamanderson@email.com', 'Male', '1998-07-14'),
    ('890123456M', 'Sophie', 'Martin', '345 Pine St', 'sophiemartin@email.com', 'Female', '1995-05-30'),
    ('901234567N', 'Jacob', 'Hall', '543 Cedar St', 'jacobhall@email.com', 'Male', '1997-03-12'),
    ('012345678O', 'Ella', 'King', '654 Cedar St', 'ellaking@email.com', 'Female', '1999-12-25'),
    ('123456789P', 'Mason', 'Hill', '789 Oak St', 'masonhill@email.com', 'Male', '1995-09-03'),
    ('234567890Q', 'Chloe', 'Roberts', '123 Pine St', 'chloeroberts@email.com', 'Female', '1996-10-21'),
    ('234567890R', 'Emily', 'Martin', '987 Elm St', 'emilymartin@email.com', 'Female', '1995-08-01'),
    ('345678901S', 'Liam', 'Harris', '654 Birch St', 'liamharris@email.com', 'Male', '2000-04-30'),
    ('456789012T', 'Ava', 'Taylor', '543 Cedar St', 'avataylor@email.com', 'Female', '1999-02-14'),
    ('567890123U', 'Noah', 'Lewis', '234 Pine St', 'noahlewis@email.com', 'Male', '2000-11-18'),
    ('678901234V', 'Sophie', 'Brown', '321 Oak St', 'sophiebrown@email.com', 'Female', '2001-09-06'),
    ('789012345W', 'William', 'White', '876 Maple St', 'williamwhite@email.com', 'Male', '1997-03-23'),
    ('123456789v', 'John', 'Doe', '123 Main St', 'johndoe@email.com', 'Male', '1995-01-15'),
    ('234567890w', 'Alice', 'Smith', '456 Elm St', 'alicesmith@email.com', 'Female', '1998-03-20'),
    ('345678901x', 'Michael', 'Johnson', '789 Oak St', 'michaeljohnson@email.com', 'Male', '1999-07-10'),
    ('456789012y', 'Emily', 'Wilson', '987 Pine St', 'emilywilson@email.com', 'Female', '2000-11-25'),
    ('567890123z', 'Daniel', 'Brown', '543 Cedar St', 'danielbrown@email.com', 'Male', '2001-04-30');
    
-- Insert sample data into the User_Contact table--
INSERT INTO User_Contact(NIC, Contact1, Contact2) VALUES
    ('678901234A', 1234567890, 9876543210),
    ('789012345B', 2345678901, 8765432100),
    ('890123456C', 3456789012, 7654321098),
    ('901234567D', 4567890123, 6543210987),
    ('012345678E', 5678901234, 5432109876),
    ('123456789F', 6789012345, NULL),
    ('234567890G', 6789012344, 5678901239),
    ('345678901H', 7890123457, 4567890122),
    ('456789012I', 7890123455, 4567890124),
    ('567890123J', 8901234567, 3456789011),
    ('678901234K', 9012345678, 2345678900),
    ('789012345L', 1234567899, NULL),
    ('890123456M', 3456789013, 7654321099),
    ('901234567N', 5678901230, 5432109877),
    ('012345678O', 6789012346, 4567890126),
    ('123456789P', 2345678001, 8765432109),
    ('234567890Q', 7890123456, 7654321097);
    ('234567890R', 6789012349, 5678901244),
    ('345678901S', 3456789033, 9876543111),
    ('456789012T', 5678901333, 8765432111)

-- Insert sample data into the Admin table--
INSERT INTO Admin (Admin_ID, NIC, Role) VALUES
    ('A1', '678901234A', 'Administrator'),
    ('A2', '789012345B', 'Administrator');

INSERT INTO Tech_officer (Tech_officer_ID, NIC, Role, Attendence_ID)VALUES
    ('T2', '890123456C', 'Tech Officer', 'A345678901'),
    ('T3', '901234567D', 'Tech Officer', 'A456789012'),
    ('T4', '012345678E', 'Tech Officer', 'A567890123'),

-- Insert sample data into the Dean table--
INSERT INTO Dean(Dean_ID, NIC)VALUES
    ('123456789F', '123456789P');

-- Insert sample data into the Lecture table--
INSERT INTO Lecture (Lecture_ID, NIC, Position, Department_ID) VALUES
    ('L1', '234567890G', 'Lecturer', 'DP01'),
    ('L2', '345678901H', 'Assistant Professor', 'DP02'),
    ('L3', '456789012I', 'Lecturer', 'DP03'),
    ('L4', '567890123J', 'Lecturer', 'DP04'),
    ('L5', '678901234K', 'Professor', 'DP01');

-- Insert sample data into the Student table--
INSERT INTO Student (Student_ID, NIC, Type, Department_ID) VALUES
    ('S1', '789012345L', 'Graduate', 'DP01'),
    ('S2', '890123456M', 'Graduate', 'DP02'),
    ('S3', '901234567N', 'Graduate', 'DP03'),
    ('S4', '012345678O', 'Undergraduate', 'DP01'),
    ('S5', '123456789P', 'Undergraduate','DP01'),
    ('S6', '123456789Q', 'Undergraduate', 'DP02'),
    ('S7', '234567890R', 'Undergraduate', 'DP03'),
    ('S8', '345678901S', 'Undergraduate', 'DP01'),
    ('S9', '456789012T', 'Undergraduate', 'DP02'),
    ('S10', '567890123U', 'Undergraduate', 'DP03'),
    ('S11', '678901234V', 'Undergraduate', 'DP01'),
    ('S12', '789012345W', 'Undergraduate', 'DP02'),
    ('S13', '345678901x', 'Undergraduate', 'DP01'),
    ('S14', '456789012y', 'Undergraduate', 'DP02'),
    ('S15', '567890123z', 'Undergraduate', 'DP03');
    