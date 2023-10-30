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