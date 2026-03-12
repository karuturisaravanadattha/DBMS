CREATE TABLE courses(c_id NUMBER PRIMARY KEY
,c_name VARCHAR2(50) NOT NULL,
price NUMBER NOT NULL,
duration NUMBER NOT NULL);
INSERT INTO courses VALUES(101,'c programming',6000,180);
INSERT INTO courses VALUES(102,'java',7000,220);
INSERT INTO courses VALUES(103,'python',8000,200);
SELECT * FROM courses;
DROP TABLE courses;
CREATE TABLE student_data(s_id NUMBER PRIMARY KEY,
s_name VARCHAR2(50) NOT NULL,email VARCHAR2(50) NOT NULL,
age NUMBER CHECK(age>=18 AND age<=100),
course_id NUMBER REFERENCES courses(c_id));
SELECT constraint_name,constraint_type
FROM user_constraints
WHERE table_name='STUDENT_DATA';
INSERT INTO student_data VALUES(1,'Alice','alice@gmail.com',19,101);
INSERT INTO student_data VALUES(2,'Bob','bob@gmail.com',20,103);
DROP TABLE student_data;
SELECT * FROM student_data;