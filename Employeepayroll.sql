/*
@author : Sadanand pandey
*/

-------------------------UC1--------------------
mysql> create database employepayroll_service
show databases;
mysql> use payroll_service;

-------------------------UC2----------------------
mysql> create table employee_payroll(id int(5) primary key, name varchar(20), salary float(5), start_date date);
mysql> desc employee_payroll;

-------------------------UC3----------------------
mysql> insert into employee_payroll values(100, 'atik', 50000, '2022-05-14');

-------------------------UC4----------------------
mysql> select * from employee_payroll;

-------------------------UC5----------------------
mysql> select salary from employee_payroll where name = 'snehal';

mysql> select * from employee_payroll where start_date between cast('2022-04-15' as date) and date(now());

-------------------------UC6----------------------
mysql> alter table employee_payroll add gender ENUM('male', 'female');
mysql> update employee_payroll set gender = 'male' where id =100;

-------------------------UC7----------------------
mysql> select sum(salary) total_salary from employee_payroll;
mysql> select avg(salary) from employee_payroll;
mysql> select min(salary) from employee_payroll;
mysql> select max(salary) from employee_payroll;
mysql> select count(*) from employee_Payroll where gender = 'male';
mysql> select count(*) from employee_Payroll where gender = 'female';

mysql> select sum(salary), avg(salary), min(salary), max(salary),gender, count(*) from employee_payroll group by gender;

-------------------------UC8----------------------
mysql> alter table employee_payroll add (phone int(12), address varchar(15) default 'office', dept varchar(10) not null);

-------------------------UC9----------------------
mysql> alter table employee_payroll add(basic_pay float(5,2), deduction float(3,2), tax_pay int(5), income_tax int(5), net_pay float(6,2));

-------------------------UC10---------------------
mysql> insert into employee_payroll( id, name , salary, start_date, gender, phone, address, dept) values(107, 'Terissa', 100000 , '2020-12-15', 'female', 405632147, 'USA', 'sale');

mysql> insert into employee_payroll( id, name , salary, start_date, gender, phone, address, dept) values(108, 'Terissa', 300000 , '2021-12-15', 'female', 40563487, 'USA', 'marketing');

-------------------------UC11---------------------
mysql> create table employee_dept(id int(5), dept varchar(5));

-------------------------UC12----------------------
mysql> select * from employee_payroll;
mysql> select * from employee_payroll where start_date between cast('2022-04-15' as date) and date(now());
mysql> select sum(salary), avg(salary), min(salary), max(salary),gender, count(*) from employee_payroll group by gender;