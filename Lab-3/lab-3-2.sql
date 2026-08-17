create database temp;

create table employee1(  
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
    
INSERT INTO employee1 (ssn, fname, mint, lname, bdate, address, sex, salary, superssn, dno) VALUES
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

select * from employee1;

update employee1 set lname='Patel' where ssn='108';

