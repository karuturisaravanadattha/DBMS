CREATE TABLE users_data(u_id NUMBER,u_name VARCHAR2(50),email_id VARCHAR2(100),users_since DATE);
INSERT INTO users_data(u_id, u_name) VALUES(1,'alice');
INSERT INTO users_data(u_id, u_name) VALUES(2,'Bob');
SELECT * FROM users_data;
UPDATE users_data SET email_id='alice@gmail.com';
UPDATE users_data SET email_id='bob@gmail.com'
WHERE u_id=2;
UPDATE users_data SET users_since=TO_DATE('10-07-25','DD-MM-YY'); 
UPDATE users_data SET users_since=TO_DATE('12-08-24','DD-MM-YY') where u_id=2; 
ALTER TABLE users_data ADD (gender VARCHAR2(50));
UPDATE users_data SET gender='male';
UPDATE users_data SET gender='female'
WHERE u_id=2;
ALTER TABLE users_data RENAME COLUMN u_name to first_name;
ALTER TABLE users_data ADD (last_name VARCHAR2(50));
UPDATE users_data SET last_name='Ram';
UPDATE users_data SET last_name='sita'
WHERE u_id=2;
DELETE FROM users_data WHERE u_id=1; 
