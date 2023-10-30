CREATE TABLE User(
    NIC VARCHAR(15) PRIMARY KEY,
    First_name VARCHAR(20),
    Last_name VARCHAR(20),
    Address VARCHAR(50),
    Email VARCHAR(30),
    Gender CHAR(6),
    Dod DATE);

CREATE TABLE User_Contact(
    NIC VARCHAR(15) PRIMARY KEY,
    Contact1 VARCHAR(11),
    Contact2 VARCHAR(11));

CREATE TABLE Admin(
    Admin_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Role varchar(50));

CREATE TABLE Dean(
    Dean_ID VARCHAR(5),
    NIC VARCHAR(15));

CREATE TABLE Student(
    Student_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Type varchar(30),
    Department_ID CHAR(5));

-- Insert sample data into the User table
INSERT INTO User VALUES
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
    ('567890123z', 'Daniel', 'Brown', '543 Cedar St', 'danielbrown@email.com', 'Male', '2001-04-30'),
    ('345678901A', 'Anna', 'Williams', '111 Pine St', 'annawilliams@email.com', 'Female', '1999-04-1'),
    ('456789012B', 'Michael', 'Lee', '222 Elm St', 'michaellee@email.com', 'Male', '2001-08-30'),
    ('567890123C', 'Grace', 'Moore', '333 Oak St', 'gracemoore@email.com', 'Female', '2000-11-20'),
    ('678901234D', 'Christopher', 'Clark', '444 Cedar St', 'christopherclark@email.com', 'Male', '1998-02-10'),
    ('789012345E', 'Sophia', 'Harris', '555 Birch St', 'sophiaharris@email.com', 'Female', '1990-03-25'),
    ('890123456F', 'Lucas', 'Roberts', '666 Maple St', 'lucasroberts@email.com', 'Male', '1992-05-17'),
    ('901234567G', 'Olivia', 'Smith', '777 Pine St', 'oliviasmith@email.com', 'Male', '1996-07-05'),
    ('012345678H', 'William', 'Jones', '888 Elm St', 'williamjones@email.com', 'Male', '1985-08-29');

-- Insert sample data into the User_Contact table
INSERT INTO User_Contact VALUES
    ('678901234A', '0734567890', '07876543210'),
    ('789012345B', '0745678901', '07765432100'),
    ('890123456C', '0756789012', '07654321098'),
    ('901234567D', '0767890123', '07543210987'),
    ('012345678E', '0778901234', NULL),
    ('123456789F', '0789012345', '07432109876'),
    ('234567890G', '0789012344', '07678901239'),
    ('345678901H', '0790123457', '07567890122'),
    ('456789012I', '0790123455', '07567890124'),
    ('567890123J', '0701234567', '07456789011'),
    ('678901234K', '0712345678', '07345678900'),
    ('789012345L', '0734567899', NULL),
    ('890123456M', '0756789013', '07654321099'),
    ('901234567N', '0778901230', '07432109877'),
    ('012345678O', '0789012346', '07567890126'),
    ('123456789P', '0745678001', '07765432109'),
    ('234567890Q', '0790123456', '07654321097'),
    ('234567890R', '0789012349', '07678901244'),
    ('345678901S', '0756789033', '07876543111'),
    ('456789012T', '0778901333', '07765432111');

-- Insert sample data into the Admin table
INSERT INTO Admin (Admin_ID, NIC, Role) VALUES
    ('A1', '678901234A', 'Administrator');

-- Insert sample data into the Dean table
INSERT INTO Dean(Dean_ID, NIC)VALUES('D1', '123456789P');


-- Insert sample data into the Student table
INSERT INTO Student (Student_ID, NIC, Type, Department_ID) VALUES
    ('S1', '789012345L', 'Graduate', 'DP001'),
    ('S2', '890123456M', 'Graduate', 'DP002'),
    ('S3', '901234567N', 'Graduate', 'DP003'),
    ('S4', '012345678O', 'Undergraduate', 'DP001'),
    ('S5', '123456789P', 'Undergraduate','DP001'),
    ('S6', '123456789Q', 'Undergraduate', 'DP002'),
    ('S7', '234567890R', 'Undergraduate', 'DP003'),
    ('S8', '345678901S', 'Undergraduate', 'DP001'),
    ('S9', '456789012T', 'Undergraduate', 'DP002'),
    ('S10', '567890123U', 'Undergraduate', 'DP003'),
    ('S11', '678901234V', 'Undergraduate', 'DP001'),
    ('S12', '789012345W', 'Undergraduate', 'DP002'),
    ('S13', '345678901x', 'Undergraduate', 'DP001'),
    ('S14', '456789012y', 'Undergraduate', 'DP002'),
    ('S15', '567890123z', 'Undergraduate', 'DP003'),
    ('S16', '345678901A', 'Undergraduate', 'DP001'),
    ('S17', '456789012B', 'Undergraduate', 'DP001'),
    ('S18', '567890123C', 'Undergraduate', 'DP002'),
    ('S19', '789012345E', 'Undergraduate', 'DP003'),
    ('S20', '890123456F', 'Undergraduate', 'DP003');