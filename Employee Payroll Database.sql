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

--UC7 sum,min,max,count,avg
select sum(salary) as total from Employee_payroll where gender = 'M' group by gender 
select sum(salary) as total from Employee_payroll where gender = 'F' group by gender 
select avg(salary) as average from Employee_payroll where gender = 'M' group by gender 
select avg(salary) as average from Employee_payroll where gender = 'F' group by gender 
select min(salary) as mini from Employee_payroll where gender = 'M' group by gender 
select max(salary) as maxi from Employee_payroll where gender = 'M' group by gender 
select count(gender) as counting from Employee_payroll where gender = 'M' group by gender 
select count(gender) as counting from Employee_payroll where gender = 'f' group by gender 

--UC8 Extending table data
alter table Employee_payroll add phone_no bigint,address varchar(300),department varchar(100) not null default 'developer'
update Employee_payroll set phone_no = 1234587963,department = 'tester' where name = 'venkatesan'
update Employee_payroll set phone_no = 1234587963,address = 'chennai',department = 'tester' where name = 'prasanna' 
update Employee_payroll set phone_no = 1234587963,address = 'erode',department = 'lab' where name = 'ajay' 
update Employee_payroll set phone_no = 1234587963,address = 'salem' where name = 'pradhap' 
update Employee_payroll set phone_no = 1234587963,address = 'karur',department = 'tester' where name = 'radha' 
select * from Employee_payroll