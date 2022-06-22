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
