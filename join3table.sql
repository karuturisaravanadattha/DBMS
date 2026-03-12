CREATE TABLE client (
    client_id NUMBER PRIMARY KEY,
    client_name VARCHAR2(100),
    contact_no NUMBER
);

CREATE TABLE projects (
    project_id NUMBER PRIMARY KEY,
    project_name VARCHAR2(75),
    dead_line DATE,
    manager VARCHAR2(100),
    c_id NUMBER REFERENCES client(client_id)
);

CREATE TABLE intern (
    intern_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    email VARCHAR2(100),
    p_id NUMBER REFERENCES projects(project_id)
);

INSERT INTO client VALUES (1, 'Infosys', 9876543210);
INSERT INTO client VALUES (2, 'TCS', 9123456780);
INSERT INTO client VALUES (3, 'Google', 9988776655);
INSERT INTO client VALUES (4, 'Amazon', 8877665544);

INSERT INTO projects VALUES (101, 'AI Chatbot', TO_DATE('2025-08-30', 'YYYY-MM-DD'), 'Alice Mathews', 1);
INSERT INTO projects VALUES (102, 'E-commerce Website', TO_DATE('2025-09-15', 'YYYY-MM-DD'), 'Bob Singh', 2);
INSERT INTO projects VALUES (103, 'Cloud Migration', TO_DATE('2025-10-01', 'YYYY-MM-DD'), 'Carol Johnson', 3);
INSERT INTO projects VALUES (104, 'IoT Dashboard', TO_DATE('2025-08-20', 'YYYY-MM-DD'), 'David Kumar', 4);

INSERT INTO intern VALUES (1, 'Aman', 21, 'aman@example.com', 101);
INSERT INTO intern VALUES (2, 'Bhavna', 22, 'bhavna@example.com', 101);
INSERT INTO intern VALUES (3, 'Chirag', 20, 'chirag@example.com', 102);
INSERT INTO intern VALUES (4, 'Divya', 23, 'divya@example.com', 103);
INSERT INTO intern VALUES (5, 'Eshan', 21, 'eshan@example.com', 104);

SELECT * FROM client;
SELECT * FROM projects;
SELECT * FROM intern;


SELECT i.name , c.client_name FROM
intern i JOIN projects p
ON i.p_id = p.project_id
JOIN client c
ON p.c_id = c.client_id;



SELECT  c.client_name,count(*) AS in_count FROM
intern i JOIN projects p
ON i.p_id = p.project_id
JOIN client c
ON p.c_id = c.client_id
GROUP BY c.client_name;