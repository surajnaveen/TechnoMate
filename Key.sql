--Adding Foriegn keys
ALTER TABLE Lecture_Student ADD FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Lecture_Student ADD FOREIGN KEY (Lecture_ID) REFERENCES Lecture(Lecture_ID);
ALTER TABLE Student_Notice ADD FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID);
ALTER TABLE Student_Notice ADD FOREIGN KEY (Notice_ID) REFERENCES Notice(Notice_ID);
ALTER TABLE Lecture_Course ADD FOREIGN KEY (Lecture_ID) REFERENCES Lecture(Lecture_ID);
ALTER TABLE Lecture_Course ADD FOREIGN KEY (Course_code) REFERENCES Course_code(Course_code);
ALTER TABLE Lecture ADD FOREIGN KEY(NIC) REFERENCES User(NIC);