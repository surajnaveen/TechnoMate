CREATE TABLE User(
    NIC VARCHAR(15) PRIMARY KEY,
    First_name VARCHAR(20),
    Last_name VARCHAR(20),
    Address VARCHAR(50),
    Email VARCHAR(30),
    Gender CHAR(6),
    Dob DATE);

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
    ('S6', '234567890Q', 'Undergraduate', 'DP002'),
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

--Add Foreign key
    ALTER TABLE User_Contact ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
    ALTER TABLE Admin ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
    ALTER TABLE Dean ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
    ALTER TABLE Student ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
    ALTER TABLE Student ADD FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID);

---CA Result Withot_Attendance
CREATE VIEW CA_Result AS SELECT Marks_ID,Course_code,Student_ID,
((Quize1+Quize2+Quize3)-LEAST(Quize1,Quize2,Quize3))/2 AS Quiz_Mark, 
((Assignment1+Assignment2+Assignment3)/3) AS Assingment_Mark,Mid_exam,

(((((Quize1+Quize2+Quize3)-LEAST(Quize1,Quize2,Quize3))/2)*0.05)
+(((Assignment1+Assignment2+Assignment3)/3)*0.05)+(Mid_exam*0.2))*100/30 AS CA_Mark,

IF((((((Quize1+Quize2+Quize3)-LEAST(Quize1,Quize2,Quize3))/2)*0.05)
+(((Assignment1+Assignment2+Assignment3)/3)*0.05)+(Mid_exam*0.2))*100/30>=50,'Eligible','Not Eligible')
 AS Withot_Attendance_Eligibility FROM marks;


--By giving registration no as a summery
DELIMITER //
CREATE PROCEDURE CA_register_no(reg_number VARCHAR(5))
BEGIN
SELECT Marks_ID,Student_ID,Course_code,CA_Mark FROM CA_Result 
WHERE Withot_Attendance_Eligibility='Eligible' AND Student_ID=reg_number;
END //
DELIMITER ;
CALL CA_register_no('s13');

CREATE VIEW Final_Marks AS SELECT c.Student_ID,c.Course_code,c.CA_Mark*0.3,
((c.CA_Mark*0.3)+(m.Final_exam*0.7)) AS Final_Mark
FROM Marks m,CA_Result c WHERE c.Marks_ID=m.Marks_ID
AND c.Withot_Attendance_Eligibility='Eligible'
GROUP BY c.Student_ID,c.Course_code;

SELECT * FROM Final_Marks;


--Eligibility_CA_With_Attendance
CREATE VIEW Eligibility_CA_Attendance AS
SELECT r.Course_code,r.Student_ID,Att.Eligibility AS Attendance_Eligibility,
r.Withot_Attendance_Eligibility AS CA_Eligibility,
IF(Att.Eligibility='Eligible' AND 
r.Withot_Attendance_Eligibility='Eligible','Eligible','Not Eligible') AS Finale_ligibility
FROM Attendance_with_Medical Att,CA_Result r
WHERE Att.Student_ID=r.Student_ID AND r.Course_code=Att.Course_code;
--GROUP BY r.Student_ID,r.Course_code;

CREATE VIEW Student_Grade AS 
SELECT  e.Student_ID, e.Course_code,m.Final_Mark,
   CASE
      WHEN(Final_Mark>= 85 AND Final_Mark<= 100) THEN 'A+'
      WHEN(Final_Mark>= 80 AND Final_Mark<= 84.999999) THEN 'A'
      WHEN(Final_Mark>= 75 AND Final_Mark<= 79.999999) THEN 'A-'
      WHEN(Final_Mark>= 70 AND Final_Mark<= 74.999999) THEN 'B+'
      WHEN(Final_Mark>= 65 AND Final_Mark<= 69.999999) THEN 'B'
      WHEN(Final_Mark>= 60 AND Final_Mark<= 64.999999) THEN 'B-'
      WHEN(Final_Mark>= 55 AND Final_Mark<= 59.999999) THEN 'C+'
      WHEN(Final_Mark>= 50 AND Final_Mark<= 54.999999) THEN 'C'
      WHEN(Final_Mark>= 45 AND Final_Mark<= 49.999999) THEN 'C-'
      WHEN(Final_Mark>= 40 AND Final_Mark<= 44.999999) THEN 'D+'
      WHEN(Final_Mark>= 35 AND Final_Mark<= 39.999999) THEN 'D'
      WHEN(Final_Mark>= 0 AND Final_Mark<= 34.999999) THEN 'F'
   END AS 'Grade',

  CASE
      WHEN(Final_Mark>= 85 AND Final_Mark<= 100) THEN 4.0
      WHEN(Final_Mark>= 80 AND Final_Mark<= 84.999999) THEN 4.0
      WHEN(Final_Mark>= 75 AND Final_Mark<= 79.999999) THEN 3.7
      WHEN(Final_Mark>= 70 AND Final_Mark<= 74.999999) THEN 3.3
      WHEN(Final_Mark>= 65 AND Final_Mark<= 69.999999) THEN 3.0
      WHEN(Final_Mark>= 60 AND Final_Mark<= 64.999999) THEN 2.7
      WHEN(Final_Mark>= 55 AND Final_Mark<= 59.999999) THEN 2.3
      WHEN(Final_Mark>= 50 AND Final_Mark<= 54.999999) THEN 2.0
      WHEN(Final_Mark>= 45 AND Final_Mark<= 49.999999) THEN 1.7
      WHEN(Final_Mark>= 40 AND Final_Mark<= 44.999999) THEN 1.3
      WHEN(Final_Mark>= 35 AND Final_Mark<= 39.999999) THEN 1.0
      WHEN(Final_Mark>= 0 AND Final_Mark<= 34.999999) THEN 0
   END AS 'Grade_Point',c.Credit AS Credit

FROM 
Final_Marks m
INNER JOIN Eligibility_CA_Attendance e ON e.Course_code = m.Course_code AND e.Student_ID = m.Student_ID
INNER JOIN course c ON c.Course_code = m.Course_code 

AND e.Finale_ligibility = 'Eligible'
AND c.Department_ID='DP001';


--GROUP BY e.Student_ID,e.Course_code;
-- AND c.Credit='DP001'


CREATE VIEW Student_Grade_CREDIT AS 
SELECT sg. Student_ID,sg.Course_code,sg.Final_Mark,sg.Grade,sg.Grade_Point
,c.Credit,sg.Grade_Point * c.Credit AS MUL FROM
 Student_Grade sg,Course c
WHERE sg.Course_code=c.Course_code;
--GROUP BY sg.Student_ID;

--calculate SGPA

CREATE VIEW SGPA AS SELECT
sgc.Student_ID,(SUM(sgc.MUL))/SUM(c.Credit) AS SGPA
FROM Student_Grade_CREDIT sgc,Course c  WHERE 
c.Department_ID ='DP001'
GROUP BY Student_ID;

--CALCULATE CGPA
CREATE VIEW CGPA AS SELECT
sgc.Student_ID,(SUM(sgc.MUL))/SUM(c.Credit) AS CGPA
FROM Student_Grade_CREDIT sgc,Course c WHERE 
c.Department_ID='DP001' AND c.Course_code !='ENG1212'
 GROUP BY Student_ID;

--ALL GPA
CREATE VIEW ALL_GPA AS SELECT
s.Student_ID,s.SGPA,c.CGPA FROM SGPA s,CGPA c
WHERE s.Student_ID=c.Student_ID;


SELECT Department_ID,SUM(Credit) 
FROM Course GROUP BY Department_ID;