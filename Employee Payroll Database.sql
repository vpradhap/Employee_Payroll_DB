--UC1 Creating database
create database Employee_Payroll_DB
use Employee_Payroll_DB

--UC2 Createing table
create table Employee_payroll(id int identity(1,1) primary key,name varchar(200),salary int,joining_date date)

--UC3 Inserting Data
insert into Employee_payroll values 
('prasanna',100000,'2021-09-20'),('venkatesan',150000,'2020-02-08'),('pradhap',20000,'2022-08-11'),('ajay',50000,'2020-02-07')

--UC4 Retrieve data
select * from  Employee_payroll

--UC4 Retrieve  particular data
select salary from Employee_payroll where name = 'ajay'
select * from Employee_payroll where joining_date between CAST('2020-03-01' as date) and GETDATE()

--UC6 Update table
alter table Employee_payroll add gender varchar(10)
insert into Employee_payroll values 
('radha',50000,'2021-07-24','F')
update Employee_payroll set gender = 'M' where name = 'prasanna' or name = 'venkatesan' or name = 'pradhap' or name = 'ajay'
