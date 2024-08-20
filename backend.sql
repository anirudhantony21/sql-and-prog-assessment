create table departments (department_id int primary key, department_name varchar(200));

create table roles (role_id int primary key,role_name varchar(200),description text);

create table employees (employee_id int primary key,first_name varchar(200),last_name varchar(200),email varchar(200), password varchar(200),department_id int,role_id int,foreign key (department_id) references departments(department_id),foreign key (role_id) references roles(role_id));

create table performance_reviews (review_id int primary key,employee_id int,review_date date,rating int,comments text, foreign key (employee_id) references employees(employee_id));
