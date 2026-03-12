CREATE TABLE people(
    p_id NUMBER,
    p_name VARCHAR2(30),
    email VARCHAR2(100)
);
INSERT INTO people VALUES(123, 'Alice', 'alice@gmail.com');
INSERT INTO people VALUES(456, 'Bob', 'bob@gmail.com');
ALTER TABLE people ADD(age NUMBER, gender VARCHAR2(6));
DESC people;
ALTER TABLE people RENAME COLUMN p_name to person_name;
ALTER TABLE people MODIFY(gender VARCHAR2(20));
DESC people;
ALTER TABLE people DROP(age);
RENAME people to people_data;
TRUNCATE TABLE people_data;
DESC people_data;
DROP TABLE people_data;



CREATE TABLE users(u_id NUMBER,u_name VARCHAR2(50));
INSERT INTO users VALUES(1,'Alice');
INSERT INTO users VALUES(2,'Bob');
INSERT INTO users VALUES(3,'charlie');
ALTER TABLE users ADD(email VARCHAR2(50),age NUMBER,gender VARCHAR2(50));
--alter+modify command
ALTER TABLE users MODIFY(u_name VARCHAR2(100));
DESC users;
--alter + rename command
ALTER TABLE users RENAME COLUMN email to mail;
DESC users;
SELECT * FROM users;