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