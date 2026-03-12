CREATE TABLE users(id NUMBER PRIMARY KEY,name VARCHAR2(50) NOT NULL ,
email VARCHAR2(50)UNIQUE,age NUMBER CHECK(age > 0 AND age < 120));
INSERT INTO users VALUES(1,'ALice','alice@gmail.com',17);
INSERT INTO users VALUES(2,'Bob','bob@gmail.com',18);
INSERT INTO users VALUES(3,'charlie','charlie@gmail.com',24);
SELECT * FROM users;
DROP TABLE users;
SELECT constraint_name,constraint_type
FROM user_constraints
WHERE table_name='USERS';