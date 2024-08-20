use ems;
create table employees(employee_id int primary key, first_name varchar(50), last_name varchar(50), department_id int, hire_date date);
insert into employees(employee_id, first_name, last_name, department_id, hire_date) values (1,'A','A',10,'2024-01-01');
insert into employees(employee_id, first_name, last_name, department_id, hire_date) values (2,'B','B',20,'2024-01-05');
insert into employees(employee_id, first_name, last_name, department_id, hire_date) values (3,'C','C',30,'2024-02-01');
insert into employees(employee_id, first_name, last_name, department_id, hire_date) values (4,'D','D',40,'2024-02-05');
insert into employees(employee_id, first_name, last_name, department_id, hire_date) values (5,'E','E',50,'2024-03-01');
insert into employees(employee_id, first_name, last_name, department_id, hire_date) values (6,'F','F',60,'2024-03-05');

create table departments(department_id int primary key,department_name varchar(100));
insert into departments(department_id, department_name) values (10, 'OO');
insert into departments(department_id, department_name) values (20, 'PP');
insert into departments(department_id, department_name) values (30, 'QQ');
insert into departments(department_id, department_name) values (40, 'RR');
insert into departments(department_id, department_name) values (50, 'SS');
insert into departments(department_id, department_name) values (60, 'TT');

create table salaries ( employees_id int, salary decimal(10,2), from_date date, to_date date);
insert into salaries(employee_id,salary ,from_date, to_date)values (1,10000,'2024-01-01','2024-02-01');
insert into salaries(employee_id,salary ,from_date, to_date)values (2,20000,'2024-01-05','2024-02-05');
insert into salaries(employee_id,salary ,from_date, to_date)values (3,20000,'2024-02-01','2024-03-01');
insert into salaries(employee_id,salary ,from_date, to_date)values (4,10000,'2024-02-05','2024-03-05');
insert into salaries(employee_id,salary ,from_date, to_date)values (5,50000,'2024-03-01','2024-04-01');
insert into salaries(employee_id,salary ,from_date, to_date)values (6,20000,'2024-03-05','2024-04-05');

#question one: write a query to find all employees who have been hired in the last year.

select * from employees where hire_date <= date_sub(curdate(),interval 1 year);

# question two: write a query to calculate the total salary expenditure for each department 

select d.department_name,sum(s.salary) as total_salary from departments d join employees e on d.department_id = e.department_id join salaries s on e.employee_id = s.employee_id group by d.department_name;

# question three: write a query to find the top 5 highest paid employees along with their department names.

select e.first_name, e.last_name,d.department_name, s.salary from employees e join departments d on e.department_id = d.department_id join salaries s on e.employee_id = s.employee_id order by s.salary desc limit 5;
