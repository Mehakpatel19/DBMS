create database company100;
use company100;
create table employee(  
	fname varchar(10) not null,     
    mint varchar(3),     
    lname varchar(10),     
    ssn int primary key not null,     
    bdate varchar(20),     
    address varchar(50),     
    sex varchar(5),     
    salary int not null,     
    superssn int,     
    dno int     
    );
    
create table department(  
	dname varchar(10) not null,     
    mgrssn int,     
    mgrstartdate varchar(20),     
    dnumber int primary key not null    
    );
    
alter table employee
add foreign key(dno) references department(dnumber);

alter table department
add foreign key(mgrssn) references employee(ssn);

create table dept_loc(  
	dloc varchar(15) ,     
    dlno int      
    );
    
alter table dept_loc
add foreign key(dlno) references department(dnumber);

alter table dept_loc
add primary key(dlno,dloc);
    
create table project(  
	pname varchar(30) ,     
    pnumber int primary key ,     
    plocation varchar(50),     
    dnum int not null     
    );
    
alter table project
add foreign key (dnum) references department(dnumber);
    
create table works_on(  
	essn int ,    
    pno int,     
    hours int    
    );
    
alter table works_on
add foreign key(essn) references employee(ssn);

alter table works_on
add foreign key(pno) references project(pnumber);
    
create table dependent(  
	essn int ,     
    dependent_name varchar(20),     
    sex varchar(5),     
    bdate varchar(20),     
    relationship varchar(20)     
    );
    
alter table dependent
add foreign key(essn) references employee(ssn);

alter table dependent 
add primary key(essn,dependent_name);
    
    
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO department (dnumber, dname, mgrssn, mgrstartdate) VALUES
(1, 'HQ', 108, '1981-06-19'),
(2, 'Sales', 110, '2015-01-10'),
(3, 'IT', 112, '2018-03-15'),
(4, 'Admin', 104, '1995-01-01'),
(5, 'Research', 102, '1988-05-22');

INSERT INTO employee (ssn, fname, mint, lname, bdate, address, sex, salary, superssn, dno) VALUES
(101, 'John', 'B', 'Smith', '1965-01-09', '731 Fondren, Houston, TX', 'M', 55000, NULL, 5),
(102, 'Franklin', 'T', 'Wong', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, 101, 5),
(103, 'Alicia', 'J', 'Zelaya', '1968-07-19', '3321 Castle, Spring, TX', 'F', 25000, 102, 4),
(104, 'Jennifer', 'S', 'Wallace', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, 101, 4),
(105, 'Ramesh', 'K', 'Narayan', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, 102, 5),
(106, 'Joyce', 'A', 'English', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, 102, 5),
(107, 'Ahmad', 'V', 'Jabbar', '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, 104, 4),
(108, 'James', 'E', 'Borg', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1),
(109, 'David', 'M', 'King', '1980-04-12', '123 Main, Austin, TX', 'M', 60000, 108, 1),
(110, 'Sarah', 'N', 'Scott', '1985-08-22', '456 Oak, Dallas, TX', 'F', 48000, 109, 2),
(111, 'Daniel', 'R', 'Green', '1990-11-05', '789 Pine, Dallas, TX', 'M', 52000, 110, 2),
(112, 'Emily', 'C', 'Brown', '1993-02-14', '101 Elm, Austin, TX', 'F', 45000, 108, 3);

INSERT INTO dept_loc (dlno, dloc) VALUES
(1, 'Houston'),
(2, 'Dallas'),
(3, 'Austin'),
(3, 'Seattle'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Sugarland'),
(5, 'Houston');

INSERT INTO project (pnumber, pname, plocation, dnum) VALUES
(10, 'ProductX', 'Bellaire', 5),
(20, 'ProductY', 'Sugarland', 5),
(30, 'ProductZ', 'Houston', 5),
(100, 'Computerization', 'Stafford', 4),
(200, 'Reorganization', 'Houston', 1),
(300, 'New Benefits', 'Stafford', 4),
(400, 'Cloud Migration', 'Austin', 3),
(500, 'Sales Expansion', 'Dallas', 2);

INSERT INTO works_on (essn, pno, hours) VALUES
(101, 10, 32),
(101, 20, 8),
(102, 10, 10),
(102, 20, 10),
(102, 30, 20),
(103, 30, 30),
(103, 100, 10),
(104, 100, 20),
(104, 300, 20),
(105, 20, 20),
(105, 30, 20),
(106, 20, 15),
(107, 100, 35),
(108, 200, 40),
(109, 200, 35),
(110, 500, 40),
(111, 500, 38),
(112, 400, 40);

INSERT INTO dependent (essn, dependent_name, sex, bdate, relationship) VALUES
(101, 'Michael', 'M', '1988-01-04', 'Son'),
(101, 'Alice', 'F', '1988-12-30', 'Daughter'),
(101, 'Elizabeth', 'F', '1967-05-05', 'Spouse'),
(102, 'Alice', 'F', '1986-04-05', 'Daughter'),
(102, 'Theodore', 'M', '1983-10-25', 'Son'),
(102, 'Joy', 'F', '1958-05-03', 'Spouse'),
(104, 'Abner', 'M', '1942-02-28', 'Spouse'),
(105, 'Sanjay', 'M', '1990-06-12', 'Son'),
(109, 'David Jr', 'M', '2008-09-15', 'Son'),
(110, 'Emma', 'F', '2012-11-02', 'Daughter');

SET FOREIGN_KEY_CHECKS = 1;