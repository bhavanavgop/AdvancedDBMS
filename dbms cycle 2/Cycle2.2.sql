# Question 2

CREATE TABLE STUDENT_INFO
(
Sid INT UNIQUE,
Stud_name VARCHAR(20) NOT NULL,
student_score int default 20
);
DESC STUDENT_INFO;
ALTER TABLE STUDENT_INFO ADD PRIMARY KEY(sid);
INSERT INTO STUDENT_INFO VALUES 
(1,'Rosmi',120),
(2,'Riya',150),
(3,'Minna',155);
UPDATE STUDENT_INFO set student_score=student_score +5 where student_score >150;
SELECT * FROM STUDENT_INFO;
DROP TABLE STUDENT_INFO;

#Question 1

CREATE TABLE WORKER
(
worker_id INT,
first_name VARCHAR(15),
last_name VARCHAR(15),
salary int,
joining_date DATE,
department VARCHAR(15),
primary key pk (worker_id)
);
DROP TABLE WORKER;
DESC WORKER;
CREATE TABLE BONUS(
worker_id int,
bounus_date DATE,
bonus_amount int
);
DROP TABLE BONUS;
DESC BONUS;
 ALTER TABLE bonus ADD CONSTRAINT fk_cod_csd FOREIGN KEY(worker_id) REFERENCES worker(worker_id)ON DELETE CASCADE;
INSERT INTO WORKER VALUES
(1 ,'Monika', 'Arora', 100000 ,'2014-02-20' ,'HR'), 
(2 ,'Niharika','Verma',80000,'2014-06-11','Admin'),
 (3 ,'Vishal','Singhal',300000,'2014-02-20','HR'),
 (4 ,'Amitabh','Singh',500000,'2014-02-20','Admin'),
 (5 ,'Vivek','Bhati' ,500000,'2014-06-11','Admin' ),
 (6 ,'Vipul', 'Diwan', 200000 ,'2014-06-11','Account'),
 (7 ,'Satish','Kumar','75000' ,'2014-01-20','Account'),
 (8 ,'Geetika','Chauhan',90000,'2014-04-11','Admin');
SELECT * FROM WORKER;
DESC BONUS;
SELECT * FROM BONUS;
DROP TABLE WORKER;
DROP TABLE BONUS;
INSERT INTO BONUS VALUES
(1,'2016-02-20',5000 ),
(2,'2016-06-11',3000 ),
(3,'2016-02-20',4000 ),
(1,'2016-02-20',4500),
(2,'2016-06-11',3500);
SELECT * FROM BONUS;
SELECT first_name AS worker_name FROM worker;
 SELECT * FROM worker ORDER BY trim(first_name) ASC ;
SELECT *FROM worker WHERE trim(first_name) != 'Vipul'AND trim(first_name)!= 'Satish';
 SELECT* FROM WORKER WHERE department='Admin';
SELECT * FROM WORKER WHERE salary between 100000 and 500000;
SELECT upper(first_name) from worker;
SELECT distinct department FROM worker;
SELECT substr(first_name,1,3) AS small FROM WORKER;
 SELECT rtrim(first_name) FROM worker;
 SELECT ltrim(department) FROM worker;
SELECT distinct department, LENGTH(department) FROM worker ;
SELECT REPLACE(first_name, 'a', 'A') AS fname FROM worker;
 SELECT distinct first_name,last_name,department,salary,bonus_amount FROM worker,bonus
 WHERE worker.worker_id = bonus.worker_id AND bonus_amount > 4000 ;
  DELETE FROM worker WHERE worker_id=7;
select * FROM worker;
 ALTER TABLE bonus DROP CONSTRAINT fk_cod_csd;
ALTER TABLE bonus ADD CONSTRAINT fk_cod_na 
FOREIGN KEY(Worker_ID) REFERENCES worker(Worker_ID) ON DELETE no action ;
DESC bonus;
DELETE FROM worker WHERE worker_id=8;
select * FROM worker;











