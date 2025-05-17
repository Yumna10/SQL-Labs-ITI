-----------task 1-----------

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

--2.1
use Company_SD

insert into Employee(Dno, SSN, Superssn, Salary)
values (30, 102672 , 112233 , 3000)

--2.2
insert into Employee(Dno, SSN)
values (30, 102660)

--2.3
update Employee
set Salary = Salary * 1.2

----------task 3-----------

--3.1
select * from Employee

--3.2
select Fname, Lname, Salary, Dno
from Employee

--3.3
select Pname, Plocation, Dnum
from Project

--3.4
select (Fname+ ' '+ Lname) as Fullname,
(Salary *12* 0.1) as AnnualCommission
from Employee

--3.5
select SSN, Fname
from Employee
where Salary >=5000

--3.6
select Fname, Salary
from Employee
where Sex = 'F'

--3.7
select Dnum, Dname
from Departments 
where MGRSSN = 968574

--3.8
select Pnumber, Pname, Plocation
from Project
where Dnum = 10

--3.9
select Pnumber, Pname, Plocation
from Project
where City in ('Cairo', 'Alex')

--3.10
select *
from Project
where Pname like 'a%'

--3.11
select *
from Employee
where Dno = 30 and Salary between 1000 and 2000
