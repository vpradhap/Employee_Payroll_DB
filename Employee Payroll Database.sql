--UC1 Creating database
create database Employee_Payroll_DB
use Employee_Payroll_DB
--UC2 Createing table
create table Employee_payroll(id int identity(1,1) primary key,name varchar(200),salary int,joining_date date) 