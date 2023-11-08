  ///////////// //suraj////////////////////
--Crete database
CREATE DATABASE technomate;

--Create Tables

CREATE TABLE Course (
    Course_code char(10),
    Name varchar(50),
    Credit int,
    Course_hours int,
    Course_type varchar(15) NOT NULL,
    Department_ID char(5),
    PRIMARY KEY(Course_code)
);

CREATE TABLE Attendance (
    Attendance_ID char(10),
    Date DATE,
    Attendance varchar(10),
    Course_code char(7),
    Student_ID varchar(5),
    Medical_Id char(5),
    Teach_officer_ID varchar(5),
    PRIMARY KEY(Attendance_ID)
);

CREATE TABLE Notice (
    Notice_ID char(5),
    lecture_ID varchar(5),
    Date DATE,
    description varchar(1000),
    PRIMARY KEY(Notice_ID)
);

CREATE TABLE Medical (
    Medical_Id char(5),
    Student_ID varchar(5),
    Tech_officer_ID varchar(5),
    Start_Date DATE,
    End_Date DATE,
    PRIMARY KEY(Medical_Id)
);

-- Insert sample data into the tables

-- Insert sample data into the Course table
INSERT INTO Course (Course_code, Name, Credit, Course_hours, Course_type, Department_ID)
VALUES
    ('ICT1233', 'Server Side Web Development', 3, 45, 'GPA', 'DP001'),
    ('ICT1213', 'Descrete Mathamatics', 3, 60, 'GPA', 'DP001'),
    ('ICT1253T', 'Computer Networkig Theory', 2, 45, 'GPA', 'DP001'),
    ('ICT1253P', 'Computer Networkig Practical', 1, 45, 'GPA', 'DP001'),
    ('ICT1212', 'DBMS', 2, 45, 'GPA', 'DP001'),
    ('ICT1222', 'DBMS practicum', 2, 45, 'GPA', 'DP001'),
    ('ICT1242', 'Computer Architecher', 3, 45, 'GPA', 'DP001'),
    ('ENG1212', 'English', 2, 45, 'Non GPA', 'DP001'),
    
    ('TMS2022', 'Physics', 4, 60, 'GPA', 'DP003'),
    ('TMS4302', 'Calculus', 3, 45, 'GPA', 'DP003'),
    ('TMS6301', 'Wrokshop', 3, 45, 'GPA', 'DP003'),
    ('TMS6302', 'Electricity and Magnatisam', 3, 45, 'GPA', 'DP003'),
    ('TMS7302', 'Properties Of Matters', 3, 45, 'GPA', 'DP003'),

    ('BST4024', 'Fisheries', 3, 45, 'GPA', 'DP003'),
    ('BST3021', 'Micro Biology', 3, 45, 'GPA', 'DP003'),
    ('BST2343', 'Genetics', 3, 45, 'GPA', 'DP003'),
    ('BST2331', 'Electronic', 3, 45, 'GPA', 'DP003');

-- Insert sample data into the Attendance table
INSERT INTO Attendance (Attendance_ID, Date, Attendance, Course_code, Student_ID, Medical_Id,Teach_officer_ID)
VALUES
    ('ATTIT001', '2023-03-10', 'present', 'ICT1212', 'S4', NULL,'T4'),
    ('ATTIT002', '2023-03-10', 'present', 'ICT1212', 'S5', NULL,'T4'),
    ('ATTIT003', '2023-03-10', 'Absant', 'ICT1212', 'S8', NULL,'T4'),
    ('ATTIT004', '2023-03-10', 'present', 'ICT1212', 'S11', NULL,'T4'),
    ('ATTIT005', '2023-03-10', 'present', 'ICT1212', 'S13', NULL,'T4'),

    ('ATTIT006', '2023-03-11', 'present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT007', '2023-03-11', 'present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT008', '2023-03-11', 'present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT009', '2023-03-11', 'Absant', 'ICT1212', 'S11', 'M1003','T6'),
    ('ATTIT010', '2023-03-11', 'present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0150', '2023-03-12', 'Absant', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0151', '2023-03-12', 'present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0152', '2023-03-12', 'present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0153', '2023-03-12', 'Absant', 'ICT1212', 'S11', 'M1003','T6'),
    ('ATTIT0154', '2023-03-12', 'Absant', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0012', '2023-03-13', 'present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0013', '2023-03-13', 'present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0014', '2023-03-13', 'present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0015', '2023-03-13', 'present', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0016', '2023-03-13', 'present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0017', '2023-03-14', 'present', 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0018', '2023-03-14', 'present', 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0019', '2023-03-14', 'present', 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0020', '2023-03-14', 'present', 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0021', '2023-03-14', 'present', 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0022', '2023-03-15','present' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0023', '2023-03-15','Absant' ,'ICT1212', 'S5', 'M1006','T6'),
    ('ATTIT0024', '2023-03-15','present' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0025', '2023-03-15','present' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0026', '2023-03-15','Absant' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0027', '2023-03-16','present' ,'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0028', '2023-03-16','present' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0029', '2023-03-16','present' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0030', '2023-03-16','present' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0031', '2023-03-16','Absant' , 'ICT1212', 'S13', 'M1005','T6'),

    ('ATTIT0032', '2023-03-17','present' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0033', '2023-03-17','present' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0034', '2023-03-17','present' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0035', '2023-03-17','Absant' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0036', '2023-03-17','present' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0037', '2023-03-18','present' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0038', '2023-03-18','Absant' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0039', '2023-03-18','Absant' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0040', '2023-03-18','present' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0041', '2023-03-18','present' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0042', '2023-03-19','Absant' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0043', '2023-03-19','Absant' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0044', '2023-03-19','present' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0045', '2023-03-19','present' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0046', '2023-03-19','Absant' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0047', '2023-03-20','present' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0048', '2023-03-20','Present' ,'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0049', '2023-03-20','Absant' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0050', '2023-03-20','present' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0051', '2023-03-20','present' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0052', '2023-03-21','present' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0053', '2023-03-21','Present' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0054', '2023-03-21','present' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0055', '2023-03-21','present' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0056', '2023-03-21','Absant' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0057', '2023-03-22','present' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0058', '2023-03-22','present' ,'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0059', '2023-03-22','present' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0060', '2023-03-22','present' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0061', '2023-03-22','present' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0062', '2023-03-23','present' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0063', '2023-03-23','Absant' ,'ICT1212', 'S5', 'M1007','T6'),
    ('ATTIT0064', '2023-03-23','present' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0065', '2023-03-23','present' , 'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0066', '2023-03-23','Absant' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0067', '2023-03-24','present' , 'ICT1212', 'S4', NULL,'T6'),
    ('ATTIT0068', '2023-03-24','present' , 'ICT1212', 'S5', NULL,'T6'),
    ('ATTIT0069', '2023-03-24','Absant' , 'ICT1212', 'S8', NULL,'T6'),
    ('ATTIT0070', '2023-03-24','present' ,'ICT1212', 'S11', NULL,'T6'),
    ('ATTIT0071', '2023-03-24','present' , 'ICT1212', 'S13', NULL,'T6'),

    ('ATTIT0072', '2023-03-10', 'present', 'ICT1222', 'S4', NULL,'T4'),
    ('ATTIT0073', '2023-03-10', 'present', 'ICT1222', 'S5', NULL,'T4'),
    ('ATTIT0074', '2023-03-10', 'present', 'ICT1222', 'S8', NULL,'T4'),
    ('ATTIT0075', '2023-03-10', 'present', 'ICT1222', 'S11', NULL,'T4'),
    ('ATTIT0076', '2023-03-10', 'present', 'ICT1222', 'S13', NULL,'T4'),

    ('ATTIT0077', '2023-03-11', 'present', 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0078', '2023-03-11', 'present', 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0079', '2023-03-11', 'present', 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0080', '2023-03-11', 'Absant', 'ICT1222', 'S11', 'M1003','T6'),
    ('ATTIT0081', '2023-03-11', 'present', 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0082', '2023-03-12', 'Absant', 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0155', '2023-03-12', 'present', 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0083', '2023-03-12', 'present', 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0084', '2023-03-12', 'Absant', 'ICT1222', 'S11', 'M1003','T6'),
    ('ATTIT0086', '2023-03-12', 'present', 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0087', '2023-03-13', 'present', 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0088', '2023-03-13', 'Absant', 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0089', '2023-03-13', 'present', 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0090', '2023-03-13', 'Absant', 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0091', '2023-03-13', 'present', 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0092', '2023-03-14', 'present', 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0093', '2023-03-14', 'present', 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0094', '2023-03-14', 'Absant', 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0095', '2023-03-14', 'present', 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0096', '2023-03-14', 'present', 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0097', '2023-03-15','present' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0098', '2023-03-15','Absant' ,'ICT1222', 'S5', 'M1006','T6'),
    ('ATTIT0099', '2023-03-15','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0100', '2023-03-15','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0101', '2023-03-15','present' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0102', '2023-03-16','Absant' ,'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0103', '2023-03-16','Absant' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0104', '2023-03-16','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0105', '2023-03-16','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0106', '2023-03-16','Absant' , 'ICT1222', 'S13', 'M1005','T6'),

    ('ATTIT0107', '2023-03-17','present' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0108', '2023-03-17','Absant' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0109', '2023-03-17','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0110', '2023-03-17','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0111', '2023-03-17','present' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0112', '2023-03-18','present' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0113', '2023-03-18','present' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0114', '2023-03-18','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0115', '2023-03-18','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0116', '2023-03-18','present' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0117', '2023-03-19','Absant' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0118', '2023-03-19','Absant' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0119', '2023-03-19','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0120', '2023-03-19','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0121', '2023-03-19','Absant' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0122', '2023-03-20','present' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0123', '2023-03-20','Absant' ,'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0124', '2023-03-20','Absant' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0125', '2023-03-20','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0126', '2023-03-20','Absant' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0127', '2023-03-21','present' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0128', '2023-03-21','Absant' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0129', '2023-03-21','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0130', '2023-03-21','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0131', '2023-03-21','Absant' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0132', '2023-03-22','present' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0133', '2023-03-22','present' ,'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0134', '2023-03-22','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0135', '2023-03-22','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0136', '2023-03-22','present' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0137', '2023-03-23','present' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0138', '2023-03-23','Absant' ,'ICT1222', 'S5', 'M1007','T6'),
    ('ATTIT0139', '2023-03-23','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0140', '2023-03-23','present' , 'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0141', '2023-03-23','present' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0142', '2023-03-24','present' , 'ICT1222', 'S4', NULL,'T6'),
    ('ATTIT0144', '2023-03-24','present' , 'ICT1222', 'S5', NULL,'T6'),
    ('ATTIT0146', '2023-03-24','present' , 'ICT1222', 'S8', NULL,'T6'),
    ('ATTIT0148', '2023-03-24','present' ,'ICT1222', 'S11', NULL,'T6'),
    ('ATTIT0149', '2023-03-24','Absant' , 'ICT1222', 'S13', NULL,'T6'),

    ('ATTIT0170', '2023-03-10', 'present', 'ENG1212', 'S4', NULL,'T4'),
    ('ATTIT0171', '2023-03-10', 'present', 'ENG1212', 'S5', NULL,'T4'),
    ('ATTIT0174', '2023-03-10', 'present', 'ENG1212', 'S8', NULL,'T4'),
    ('ATTIT0175', '2023-03-10', 'present', 'ENG1212', 'S11', NULL,'T4'),
    ('ATTIT0176', '2023-03-10', 'present', 'ENG1212', 'S13', NULL,'T4'),

    ('ATTIT0177', '2023-03-11', 'present', 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT0178', '2023-03-11', 'present', 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT0179', '2023-03-11', 'present', 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT0180', '2023-03-11', 'Absant', 'ENG1212', 'S11', 'M1003','T6'),
    ('ATTIT0181', '2023-03-11', 'present', 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT0182', '2023-03-12', 'Absant', 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1155', '2023-03-12', 'present', 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT0183', '2023-03-12', 'present', 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT0184', '2023-03-12', 'Absant', 'ENG1212', 'S11', 'M1003','T6'),
    ('ATTIT0186', '2023-03-12', 'present', 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT0187', '2023-03-13', 'present', 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT0188', '2023-03-13', 'Absant', 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT0189', '2023-03-13', 'present', 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT0190', '2023-03-13', 'Absant', 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT0191', '2023-03-13', 'present', 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT0192', '2023-03-14', 'present', 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT0193', '2023-03-14', 'present', 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT0194', '2023-03-14', 'Absant', 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT0195', '2023-03-14', 'present', 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT0196', '2023-03-14', 'present', 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT0197', '2023-03-15','present' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT0198', '2023-03-15','Absant' ,'ENG1212', 'S5', 'M1006','T6'),
    ('ATTIT0199', '2023-03-15','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1100', '2023-03-15','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1101', '2023-03-15','present' , 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT1102', '2023-03-16','Absant' ,'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1103', '2023-03-16','Absant' , 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT1104', '2023-03-16','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1105', '2023-03-16','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1106', '2023-03-16','Absant' , 'ENG1212', 'S13', 'M1005','T6'),

    ('ATTIT1107', '2023-03-17','present' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1108', '2023-03-17','Absant' , 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT1109', '2023-03-17','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1110', '2023-03-17','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1111', '2023-03-17','present' , 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT1112', '2023-03-18','present' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1113', '2023-03-18','present' , 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT1114', '2023-03-18','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1115', '2023-03-18','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1116', '2023-03-18','present' , 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT1117', '2023-03-19','Absant' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1118', '2023-03-19','Absant' , 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT1119', '2023-03-19','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1120', '2023-03-19','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1121', '2023-03-19','Absant' , 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT1122', '2023-03-20','present' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1123', '2023-03-20','Absant' ,'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT1124', '2023-03-20','Absant' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1125', '2023-03-20','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1126', '2023-03-20','Absant' , 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT1127', '2023-03-21','present' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1128', '2023-03-21','Absant' , 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT1129', '2023-03-21','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1130', '2023-03-21','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1131', '2023-03-21','Absant' , 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT1132', '2023-03-22','present' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1133', '2023-03-22','present' ,'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT1134', '2023-03-22','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1135', '2023-03-22','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1136', '2023-03-22','present' , 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT1137', '2023-03-23','present' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1138', '2023-03-23','Absant' ,'ENG1212', 'S5', 'M1007','T6'),
    ('ATTIT1139', '2023-03-23','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1140', '2023-03-23','present' , 'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1141', '2023-03-23','present' , 'ENG1212', 'S13', NULL,'T6'),

    ('ATTIT1142', '2023-03-24','present' , 'ENG1212', 'S4', NULL,'T6'),
    ('ATTIT1144', '2023-03-24','present' , 'ENG1212', 'S5', NULL,'T6'),
    ('ATTIT1146', '2023-03-24','present' , 'ENG1212', 'S8', NULL,'T6'),
    ('ATTIT1148', '2023-03-24','present' ,'ENG1212', 'S11', NULL,'T6'),
    ('ATTIT1149', '2023-03-24','Absant' , 'ENG1212', 'S13', NULL,'T6');

-- Insert sample data into the Notice table
INSERT INTO Notice (Notice_ID,lecture_ID, Date, description)
VALUES
    ('N5001','L1', '2023-03-01', 'Class cancellation on March 5th due to holiday.'),
    ('N5002','L2', '2023-03-10', 'Faculty meeting on March 15th at 3:00 PM.'),
    ('N5003','L2', '2023-04-05', 'Upcoming midterm exams schedule.'),
    ('N5004','L2', '2023-04-15', 'Library closure on April 20th for maintenance'),
    ('N5005','L4', '2023-04-25', 'Guest lecture on May 1st in the auditorium'),
    ('N5006','L4', '2023-05-05', 'Final exam schedule for the current semester'),
    ('N5007','L5', '2023-05-15', 'Graduation ceremony details for this year');

-- Insert sample data into the Medical table
INSERT INTO Medical (Medical_Id,Student_ID, Tech_officer_ID, Start_Date, End_Date)
VALUES
    ('M1001','s15','T1', '2023-03-10', '2023-03-12'),
    ('M1002','s09','T2', '2023-03-10', '2023-03-11'),
    ('M1003','s11','T2', '2023-03-11', '2023-03-12'),
    ('M1004','s11','T3', '2023-03-10', '2023-03-11'),
    ('M1005','s13','T4', '2023-03-16', '2023-03-17'),
    ('M1006','s5','T4', '2023-03-15', '2023-03-16'),
    ('M1007','s5','T4', '2023-03-23', '2023-03-16');

--Adding foreign keys
ALTER TABLE Course ADD FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID);
ALTER TABLE Attendance ADD FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Attendance ADD FOREIGN KEY(Medical_Id) REFERENCES Medical(Medical_Id);
ALTER TABLE Attendance ADD FOREIGN KEY(Teach_officer_ID) REFERENCES Tech_officer(Teach_officer_ID);
ALTER TABLE Notice ADD FOREIGN KEY(lecture_ID) REFERENCES lecture(lecture_ID);
ALTER TABLE Medical ADD FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Medical ADD FOREIGN KEY(Tech_officer) REFERENCES Tech_officer(Teach_officer_ID);

--Function of The System--
--------------------------

CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'admin123';
CREATE USER 'Dean'@'localhost' IDENTIFIED BY 'dean123';
CREATE USER 'lecturer'@'localhost' IDENTIFIED BY 'lecturer123';
CREATE USER 'Tech_officer'@'localhost' IDENTIFIED BY 'to123';
CREATE USER 'Student'@'localhost' IDENTIFIED BY 'student123';

--PRIVILAGES AND GRANT OPTION

GRANT ALL PRIVILEGES ON technomate.* TO 'Admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON technomate.* TO 'Dean'@'localhost';
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON technomate.* TO 'Lecturer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT,INSERT,UPDATE ON technomate.attendance TO 'Tech_officer'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT,INSERT,UPDATE ON technomate.medical TO 'Tech_officer'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT ON technomate.attendance TO 'Student'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT ON technomate.marks TO 'Student'@'localhost';
FLUSH PRIVILEGES;

--Attendance Related Function--

--All studence Attendance above 80 present without Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present'
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>=80;

--All student Attendance, Subject by Subject with Medical
--view table
CREATE OR REPLACE VIEW AllAttendance AS
SELECT Student_ID,Course_code,COUNT( Attendance_ID)*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Course_code,Student_ID;

SELECT * FROM AllAttendance;

--All studence Attendance above 80 present with Medical
SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code
HAVING ((COUNT( Attendance_ID))*100/15)>=80;

-- CREATE PROCEDURE Function to view attendance by subject
DELIMITER //
CREATE PROCEDURE AttendanceForSubject ( subject char(10) )
BEGIN
SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code=subject AND (Attendance='Present' OR Medical_Id IS NOT NULL)
GROUP BY Student_ID;
End//
DELIMITER ;

CALL AttendanceForSubject('ICT1212');

--with medical
CREATE VIEW Attendance_with_Medical AS
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligibility'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code;


--for all the subjects with percentage and eligibility 
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE Attendance = 'Present' OR Medical_Id IS NOT NULL
GROUP BY Student_ID,Course_code;

--as individuals by giving the registration no 
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID='s5' 
GROUP BY Course_code,Student_ID;


--as individuals by giving the registration no (CREATE PROCEDURE)
DELIMITER //
CREATE PROCEDURE AttendanceForStudent (
studentId varchar(5))
BEGIN
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance 
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID=studentId
GROUP BY Course_code,Student_ID;
END //
DELIMITER ;

CALL AttendanceForStudent('s4');

--Attendance for Student and subject
DELIMITER //
CREATE PROCEDURE SubjectAndStudent(
studentId varchar(5),
subjectId char(10))
BEGIN
SELECT Course_code,Student_ID,(COUNT( Attendance_ID))*100/15 as 'percentage',
IF((COUNT( Attendance_ID)*100/15)>=80,"Eligible","Not eligible") AS 'Eligiblity'
FROM Attendance
WHERE (Attendance = 'Present' OR Medical_Id IS NOT NULL) AND Student_ID=studentId AND Course_code=subjectId
GROUP BY Course_code,Student_ID;
END //
DELIMITER ;

CALL SubjectAndStudent ('s4','ICT1212');

/////////////////KOSALA///////////////////////////////

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



--Add Foreign key
ALTER TABLE User_Contact ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Admin ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Dean ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Student ADD FOREIGN KEY(NIC) REFERENCES User(NIC);


--CA Result Withot_Attendance
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

--viev final mark
CREATE VIEW Final_Marks AS SELECT c.Student_ID,c.Course_code,c.CA_Mark*0.3,
((c.CA_Mark*0.3)+(m.Final_exam*0.7)) AS Final_Mark
FROM Marks m,CA_Result c WHERE c.Marks_ID=m.Marks_ID
AND c.Withot_Attendance_Eligibility='Eligible'
GROUP BY Student_ID,Course_code
SELECT * FROM Final_Marks;


--Eligibility_CA_With_Attendance
CREATE VIEW Eligibility_CA_Attendance AS
SELECT r.Course_code,r.Student_ID,Att.Eligibility AS Attendance_Eligibility,
r.Withot_Attendance_Eligibility AS CA_Eligibility,
IF(Att.Eligibility='Eligible' AND 
r.Withot_Attendance_Eligibility='Eligible','Eligible','Not Eligible') AS Finale_ligibility
FROM Attendance_with_Medical Att,CA_Result r
WHERE Att.Student_ID=r.Student_ID AND r.Course_code=Att.Course_code
GROUP BY r.Student_ID,Course_code;



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

FROM Final_Marks m,Eligibility_CA_Attendance e,course c WHERE
e.Course_code=m.Course_code AND e.Student_ID=m.Student_ID

AND e.Finale_ligibility = 'Eligible'
GROUP BY e.Student_ID,Course_code;

AND c.Credit='DP001'

CREATE VIEW Student_Grade_CREDIT AS 
SELECT sg.*,c.Credit,sg.Grade_Point * c.Credit AS MUL FROM
 Student_Grade sg,Course c
WHERE sg.Course_code=c.Course_code 
GROUP BY sg.Student_ID;

--calculate SGPA
CREATE VIEW SGPA AS SELECT
sgc.Student_ID,(SUM(sgc.MUL))/18 AS SGPA
FROM Student_Grade_CREDIT sgc,Course c  WHERE 
c.Department_ID ='DP001'
GROUP BY Student_ID;

--CALCULATE CGPA
CREATE VIEW CGPA AS SELECT
sgc.Student_ID,(SUM(sgc.MUL))/16 AS CGPA
FROM Student_Grade_CREDIT sgc,Course c WHERE 
c.Department_ID='DP001' AND c.Course_code !='ENG1212'
 GROUP BY Student_ID;

--ALL GPA
CREATE VIEW ALL_GPA AS SELECT
s.Student_ID,s.SGPA,c.CGPA FROM SGPA s,CGPA c
WHERE s.Student_ID=c.Student_ID;


SELECT SUM(c.Credit) FROM course;

/////THEEKSHANA/////////

CREATE TABLE Marks (
    Marks_Id char(10) PRIMARY KEY,
    Student_ID varchar(5),
    Course_code char(10),
    Mid_exam INT,
    Final_exam INT,
    Quize1 INT,
    Quize2 INT,
    Quize3 INT,
    Assignment1 INT,
    Assignment2 INT,
    Assignment3 INT
);


CREATE TABLE student_course(
student_id char(10),
course_code varchar(10),
status varchar(10));

CREATE TABLE student_attendance(
student_id char(10),
attendance_id varchar(15));


CREATE TABLE marks_course(
marks_id char(10),
course_code varchar(10));


CREATE TABLE attendance_course(
course_code char(10),
attendance_code varchar(15));


CREATE TABLE Department (
    Department_ID char(5),
    Name varchar(50) NOT NULL,
    Admin_Id varchar(5),
    Dean_ID varchar(5),
    PRIMARY KEY(Department_ID));

CREATE TABLE student_course(
student_id char(10),
course_code varchar(10),
status varchar(10));


CREATE TABLE Tech_officer(
    Teach_officer_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Role varchar(50));




--Add Foreign Key
Alter table student_course ADD FOREIGN KEY(student_id) REFERENCES Student(Student_ID);
Alter table student_course ADD FOREIGN KEY(course_code) REFERENCES Course(Course_code);
Alter table student_attendance ADD FOREIGN KEY(attendance_id) REFERENCES Attendance(Attendance_ID);
Alter table mraks_course ADD FOREIGN KEY(marks_id) REFERENCES Marks(Marks_ID);
Alter table marks_course ADD FOREIGN KEY(course_code) REFERENCES Course(Course_ID);
ALTER TABLE Department ADD FOREIGN KEY(Dean_ID) REFERENCES Dean(Dean_ID);
ALTER TABLE Department ADD FOREIGN KEY(Admin_Id) REFERENCES Admin(Admin_Id);
Alter table student_course ADD FOREIGN KEY(student_id) REFERENCES Student(Student_ID);
Alter table student_course ADD FOREIGN KEY(course_code) REFERENCES Course(Course_code);
ALTER TABLE Teach_officer_ID ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
ALTER TABLE Dean ADD FOREIGN KEY(NIC) REFERENCES User(NIC);
-- Insert sample data into the Department table


INSERT INTO student_course(Student_ID,course_code,status)VALUES
('S1','ICT1122','NO'),
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
('S5','ICT1253','NO'),
('S5','ICT1242','No'),
('S6','TMS2022','No'),
('S6','TMS4302','No'),
('S6','TMS6302','No'),
('S6','TMS2022','Repeat'),
('S6','TMS2022','No'),
('S7','BST4024','No'),
('S7','BST3021','No'),
('S7','BST2343','No'),
('S7','BST2331','Repeat'),
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
('S10','BST3021','Repeat'),
('S10','BST2343','No'),
('S10','BST2331','No'),  
('S11','ICT1122','NO'),
('S11','ICT1212','No'),
('S11','ICT1253','No'),
('S11','ICT1242','No'),
('S12','TMS2022','No'),
('S12','TMS4302','No'),
('S12','TMS6302','No'),
('S12','TMS2022','No'),
('S12','TMS2022','No'),
('S13','ICT1122','No'),
('S13','ICT1212','No'),
('S13','ICT1253','No'),
('S13','ICT1242','No'),
('S14','TMS2022','Repeat'),
('S14','TMS4302','No'),
('S14','TMS6302','No'),
('S14','TMS2022','No'),
('S14','TMS2022','No'),
('S15','BST4024','Repeat'),
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
    ('ATTIT017','ICT1253'),
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


INSERT INTO Department (Department_ID, Name,Admin_Id, Dean_ID)
VALUES
    ('DP001', 'Information and Communication Technology','A1', 'D1'),
    ('DP002', 'Engineering Technology','A1', 'D1'),
    ('DP003', 'Bio Systems Technology','A1', 'D1');

INSERT INTO Tech_officer (Teach_officer_ID, NIC, Role)VALUES
    ('T2', '890123456C', 'Tech Officer'),
    ('T3', '901234567D', 'Tech Officer'),
    ('T4', '012345678E', 'Tech Officer'),
    ('T5', '901234567G', 'Tech Officer'),
    ('T6', '012345678H', 'Tech Officer');

    INSERT INTO Marks (Marks_Id, Student_ID, Course_code, Mid_exam, Final_exam, Quize1, Quize2, Quize3, Assignment1, Assignment2, Assignment3)
VALUES
    ('M01','s4','ICT1212',85, 92, 75, 80, 88, 50, 89, 93),
    ('M02','s5','ICT1212',78, 85, 70, 76, 82, 88, 80, 91),
    ('M03','s8','ICT1212',92, 88, 85, 89, 90, 94, 87, 92),
    ('M04','s11','ICT1212',65, 75, 60, 68, 74, 79, 72, 78),
    ('M05','s13','ICT1212',88, 90, 78, 84, 86, 91, 83, 89),
    ('M06','s4','ICT1222',73, 80, 68, 72, 76, 84, 77, 81),
    ('M07','s5','ICT1222',91, 94, 82, 87, 89, 93, 86, 90),
    ('M08','s8','ICT1222',79, 50, 72, 78, 80, 87, 80, 85),
    ('M09','s11','ICT1222',84, 87, 76, 82, 85, 88, 82, 86),
    ('M010','s13','ICT1222',70, 78, 61, 70, 72, 76, 70, 74),
    ('M011','s4','ICT1233', 92, 75, 80, 88, 95, 89,50, 93),
    ('M012','s5','ICT1233', 85, 70, 76, 82, 88, 80,50, 91),
    ('M013','s8','ICT1233', 88, 85, 89, 90, 94, 87,50, 92),
    ('M014','s11','ICT1233', 75, 60, 68, 74, 79, 72,50, 78),
    ('M035','s13','ICT1233', 75, 60, 68, 40, 55, 72,50, 76),
    ('M015','s4','ICT1213', 90, 60, 84, 86, 91, 83,50, 89),
    ('M016','s5','ICT1213', 80, 68, 72, 76, 84, 77,50, 81),
    ('M017','s8','ICT1213', 94, 82, 87, 89, 93, 86,50, 90),
    ('M018','s11','ICT1213', 84, 72, 78, 80, 87, 80,50, 85),
    ('M019','s13','ICT1213', 87, 76, 82, 85, 88, 82,50, 86),
    ('M020','s4','ICT1242', 78, 65, 70, 72, 76, 70,50, 74),
    ('M021','s5','ICT1242', 91, 83, 89, 88, 92, 85,50, 89),
    ('M022','s8','ICT1242', 82, 71, 75, 50, 80, 78,50, 83),
    ('M023','s11','ICT1242', 94, 88, 91, 92, 95, 89,50, 91),
    ('M024','s13','ICT1242', 85, 75, 79, 60, 86, 80,50, 83),
    ('M025','s4','ICT1253P', 81, 70, 74, 76, 80, 75,50, 78),
    ('M026','s5','ICT1253P', 96, 89, 92, 94, 97, 90,50, 94),
    ('M027','s8','ICT1253P', 85, 76, 80, 82, 84, 78,50, 82),
    ('M028','s11','ICT1253P', 78, 62, 75, 76, 78, 73,50, 75),
    ('M029','s13','ICT1253P', 94, 87, 90, 92, 95, 88,50, 91),
    ('M030','s4','ICT1253T', 72, 65, 70, 70, 73, 70,50, 72),
    ('M031','s5','ICT1253T', 90, 82, 86, 87, 89, 85,50, 88),
    ('M032','s8','ICT1253T', 87, 80, 83, 85, 86, 82,50, 85),
    ('M033','s11','ICT1253T', 82, 75, 78, 80, 81, 78,50, 80),
    ('M034','s13','ICT1253T', 97, 90, 94, 96, 98, 92,50, 95),
    ('M036','s4','ICT1253T', 72, 65, 70, 70, 73, 70,50, 72),
    ('M037','s5','ICT1253T', 90, 82, 86, 87, 89, 85,50, 88),
    ('M038','s8','ICT1253T', 87, 80, 83, 85, 86, 82,50, 85),
    ('M039','s11','ICT1253T', 82, 75, 78, 80, 81, 78,50, 80),
    ('M040','s13','ENG1212', 97, 90, 94, 96, 98, 92,50, 95),
    ('M041','s4','ENG1212', 72, 65, 88, 70, 73, 70,50, 72),
    ('M042','s5','ENG1212', 90, 50, 86, 87, 55, 85,50, 88),
    ('M043','s8','ENG1212', 87, 80, 40, 85, 86, 82,50, 85),
    ('M044','s11','ENG1212', 82, 88, 70, 80, 81, 78,50, 80),
    ('M045','s13','ENG1212', 90, 90, 94, 96, 98, 92,50, 95);


--By giving course code
DELIMITER //
CREATE PROCEDURE Give_Course_code_CA(Course_cod VARCHAR(10))
BEGIN
SELECT Marks_ID,Student_ID,CA_Mark FROM CA_Result 
WHERE CA_Result.Course_code = Course_cod AND Withot_Attendance_Eligibility='Eligible';
END //
DELIMITER ;
CALL Give_Course_code_CA('ICT1212');

--By giving course code and registration no
DELIMITER //
CREATE PROCEDURE course_register_no(Course_cod VARCHAR(10),reg_number VARCHAR(5))
BEGIN
SELECT Marks_ID,Student_ID,CA_Mark FROM CA_Result 
WHERE Course_code = Course_cod AND 
Withot_Attendance_Eligibility='Eligible' AND Student_ID=reg_number;
END //
DELIMITER ;
CALL course_register_no('ICT1212','s4');

SELECT Department_ID,Name
from Department;

SELECT student_id,Attendance_ID
from * from student_attendance;

SELECT Mid_exam,Final_exam
from Marks;

SELECT student_id,Final_exam
from marks
WHERE course_code ='ICT1212';



 

//////////nekmal//////////

--Create tables
CREATE TABLE Lecture_Student (Student_ID CHAR(5),Lecture_ID CHAR(5));
CREATE TABLE Student_Notice (Student_ID CHAR(5),Notice_ID CHAR(5));
CREATE TABLE Lecture_Course (Lecture_ID CHAR(5),Course_ID CHAR(10));
CREATE TABLE Lecture(
    Lecture_ID VARCHAR(5) PRIMARY KEY,
    NIC varchar(15),
    Position varchar(50),
    Department_ID CHAR(5));


--Data inserting
INSERT INTO Lecture_Student VALUES
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
    ('S15','L3');


INSERT INTO Student_Notice VALUES 
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
    ('S9','N5006');


INSERT INTO Lecture (Lecture_ID, NIC, Position, Department_ID) VALUES
    ('L1', '234567890G', 'ICT_HED', 'DP001'),
    ('L2', '345678901H', 'ET_HED', 'DP002'),
    ('L3', '456789012I', 'BST_HED', 'DP003'),
    ('L4', '567890123J', 'Lecturer', 'DP003'),
    ('L5', '678901234K', 'Professor', 'DP001'),
    ('L6', '789012345B', 'Lecture','DP002');



    INSERT INTO Lecture_Course VALUES
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

INSERT INTO Lecture (Lecture_ID, NIC, Position, Department_ID) VALUES
    ('L1', '234567890G', 'ICT_HED', 'DP01'),
    ('L2', '345678901H', 'ET_HED', 'DP02'),
    ('L3', '456789012I', 'BST_HED', 'DP03'),
    ('L4', '567890123J', 'Lecturer', 'DP03'),
    ('L5', '678901234K', 'Professor', 'DP01'),
    ('L6', '789012345B', 'Lecture','DP2');

--Adding Foriegn keys
ALTER TABLE Lecture_Student ADD FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Lecture_Student ADD FOREIGN KEY (Lecture_ID) REFERENCES Lecture(Lecture_ID);
ALTER TABLE Student_Notice ADD FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Student_Notice ADD FOREIGN KEY (Notice_ID) REFERENCES Notice(Notice_ID);
ALTER TABLE Lecture_Course ADD FOREIGN KEY (Lecture_ID) REFERENCES Lecture(Lecture_ID);
ALTER TABLE Lecture_Course ADD FOREIGN KEY (Course_code) REFERENCES Course_code(Course_code);
ALTER TABLE Lecture ADD FOREIGN KEY(NIC) REFERENCES User(NIC);


--view users details
SELECT CONCAT(User.First_name,' ',User.Last_name),Tech_officer.Tech_officer_ID,User.NIC
FROM Tech_officer,User
WHERE tech_officer.NIC=User.NIC;

SELECT CONCAT(User.First_name,' ',User.Last_name),lecturer.Lecturer_ID,User.NIC
FROM Lecture,User
WHERE Lecturer.NIC=User.NIC;

SELECT CONCAT(User.First_name,' ',User.Last_name),Student.Student_ID,User.NIC
FROM Student,User
WHERE Student.NIC=User.NIC;

SELECT CONCAT(User.First_name,' ',User.Last_name),Admin.Admin_ID,User.NIC
FROM Admin,User
WHERE Admin.NIC=User.NIC;

SELECT CONCAT(User.First_name,' ',User.Last_name),Dean.Dean_ID,User.NIC
FROM Dean,User
WHERE Dean.NIC=User.NIC;

--view all notices
SELECT Date,description 
As 'Notice'
FROM Notice
ORDER BY Date;

--View Notice published by Lecturer
DELIMITER //
CREATE PROCEDURE ViewLecturerNotice (
    lecture varchar(10)
)
BEGIN
SELECT Date,description As 'Notice'
FROM Notice
WHERE lecture_ID=lecture;
END//
DELIMITER ;

CALL ViewLecturerNotice ('L1');


--All student Attendance, Subject by Subject without Medical

SELECT Student_ID,Course_code,(COUNT( Attendance_ID))*100/15 as 'Attendance percentage'
FROM Attendance 
WHERE Attendance = 'Present'
GROUP BY Course_code,Student_ID;

--by giving the course code 
-- without medical

SELECT Student_ID,COUNT( Attendance_ID)*100/15 AS 'percentage',IF((COUNT( Attendance_ID)*100/15)>80,"Eligible","Not eligible") AS 'Eligiblity'
FROM attendance
WHERE Course_code='ICT1212' AND Attendance='Present'
GROUP BY Student_ID;

--Medical Dates
SELECT student.Student_ID, medical.End_Date - medical.Start_Date AS 'Medical Date Count'
FROM medical,student
WHERE student.Student_ID=medical.Student_ID;

