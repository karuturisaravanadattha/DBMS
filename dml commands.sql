CREATE TABLE employess(id NUMBER, name VARCHAR2(50),salary NUMBER(7, 2),doj DATE);
INSERT INTO employess VALUES(1, 'alice',5600.50, '10-JUL-25');
INSERT INTO employess VALUES(1, 'alice',5600.50, TO_DATE('10-08-2024','DD-MM-YYYY'));
INSERT INTO employess VALUES(1, 'alice',5600.50, TO_DATE('2023-09-23','YYYY-MM-DD'));
SELECT value
FROM nls_session_parameters
WHERE parameter='NLS_DATE_FORMAT';
SELECT * FROM empolyess;
