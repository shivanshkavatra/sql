create database lab_work;
use lab_work;
create table employee(
	id int primary key,
	name varchar(255) unique,
    age int not null,
     constraint age_chk check(age > 18)
);
drop table employee;

create table account(
	account_id  int primary key,
    emp_id int,
    emp_account_balance int default 0,
    foreign key(emp_id) references employee(id)
);

drop table account;

INSERT INTO employee (id, name, age)
VALUES
    (1, 'John Doe', 30),
    (2, 'Jane Smith', 25),
    (3, 'Michael Johnson', 28),
    (4, 'Emily Davis', 22),
    (5, 'Robert Lee', 35);
    
INSERT INTO account (account_id,emp_id, emp_account_balance)
VALUES
    (1,1, 10000), 
    (2,3, 7500),  
    (3,5, 12000); 
    
SELECT * from employee;
select * from account;

update employee set name = 'Tiger' where id = 1;
alter table account add interest float not null default 0 ;

start transaction;
savepoint employee;
rollback to employee;

CREATE VIEW employee_view AS
SELECT id, name, age
FROM employee;

SELECT * FROM employee_view;

SELECT name AS employee_synonym
FROM lab_work.employee;

 
CREATE SEQUENCE my_sequence
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 1000
CYCLE;

CREATE INDEX employee_index ON employee (name);

SHOW INDEX FROM employee;

