-----------task 1-----------
/*1. DDL 

1.1. create hospital database using DDL */

use lab3_hospital

create table ward(
ward_id int primary key,
ward_name varchar(20) not null
)

create table nurse(
nurs_num int primary key,
nurs_name varchar(30) not null,
nurs_add varchar(100) not null
)

alter table nurse
add ward_id int foreign key references ward(ward_id)

create table patient(
pat_id int primary key,
pat_name varchar(30) not null,
DOB date not null
)

create table consultant(
cons_id int primary key,
cons_name varchar(30)
)

create table drug(
code_num int primary key,
brand_name varchar(30) not null
)

create table patient_ward(
ward_id int,
pat_id int,
primary key(ward_id, pat_id),
foreign key(ward_id) REFERENCES ward (ward_id),
foreign key(pat_id) REFERENCES patient (pat_id)
)

create table nurse_patient_drug(
pat_id int,
nurs_num int,
dosage varchar(50) not null,
dos_date date not null,
dos_time time not null,
primary key(pat_id, nurs_num),
foreign key(pat_id) references patient (pat_id),
foreign key(nurs_num) references nurse (nurs_num)
)

create table patient_cons(
pat_id int,
cons_id int,
primary key(pat_id, cons_id),
foreign key(pat_id) references patient (pat_id),
foreign key(cons_id) references consultant (cons_id)
)

-----------task 2-----------

--2. DML (Use Company_SD database) 

/* 2.1. Insert your personal data into the employee table as a new employee in department number 30, 
SSN = 102672, Superssn = 112233, salary = 3000. */

use Company_SD

insert into Employee(Dno, SSN, Superssn, Salary)
values (30, 102672 , 112233 , 3000)

/* 2.2. Insert another employee with personal data of your friend as a new employee in department 
number 30, SSN = 102660, but don’t enter any value for salary or manager number for him. */

insert into Employee(Dno, SSN)
values (30, 102660)

/* 2.3. Upgrade your salary by 20% of its last value. */

update Employee
set Salary = Salary * 1.2

----------task 3-----------

/* 3. DQL (Use Company_SD database) 

3.1. Display all the employee data. */

select * from Employee

--3.2. Display the employee's first name, last name, salary, and department number. 

select Fname, Lname, Salary, Dno
from Employee

--3.3. Display all the project names, locations, and the department ID that is responsible for it. 

select Pname, Plocation, Dnum
from Project

/* 3.4. Display each employee's full name and his annual commission in an ANNUALCOMMISSION, 
which equals 10% of his/her annual salary (use alias). */

select (Fname+ ' '+ Lname) as Fullname,
(Salary *12* 0.1) as AnnualCommission
from Employee

--3.5. Display the employee ID and name who earn more than 5000 LE monthly. 

select SSN, Fname
from Employee
where Salary >=5000

--3.6. Display the names and salaries of the female employees  

select Fname, Salary
from Employee
where Sex = 'F'

--3.7. Display each department ID and name that is managed by a manager with an ID = 968574. 

select Dnum, Dname
from Departments 
where MGRSSN = 968574

--3.8. Display the IDs, names, and locations of the projects that were controlled with department 10. 

select Pnumber, Pname, Plocation
from Project
where Dnum = 10

--3.9. Display the ID, name, and location of the projects in Cairo or Alex City. 

select Pnumber, Pname, Plocation
from Project
where City in ('Cairo', 'Alex')

--3.10. Display the full data of the projects with a name that starts with the letter a. 

select *
from Project
where Pname like 'a%'

/* 3.11. Display all the employees in department 30 whose salaries range from 1000 to 2000 LE 
monthly. */

select *
from Employee
where Dno = 30 and Salary between 1000 and 2000
