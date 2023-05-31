create table tbl_fnl_jobs
(job_id varchar(10)  primary key,
job_title varchar(50) not null,
min_salary decimal(10,2) check (min_salary>0),
max_salary decimal(10,2) check (max_salary>0)
);

create table tbl_fnl_regions
(region_id int primary key,
region_name varchar(50) not null,
region varchar (50) not null
);


create table tbl_fnl_countries 
(country_id varchar(2) primary key,
country_name varchar(20) not null,
region_id int,
foreign key (region_id) references tbl_fnl_regions (region_id)
);


Create table tbl_fnl_locations
(location_id int primary key,
street_address varchar(50) not null,
postal_code int,
city varchar(50),
state_provice varchar(50),
country_id varchar(2),
foreign key (country_id) references tbl_fnl_countries (country_id)
);

create table tbl_fnl_employees
(employee_id int primary key,
employee_name varchar(50) not null,
email varchar(50) unique,
phone_number varchar(15) unique,
hire_date date default (current_date), 
job_id varchar(10), 
salary decimal(10,2) check (salary>0),
commission_pct decimal(3,2),
monthly_salary decimal(15,2),
salary_category varchar(20) ,
manager_id int, 
department_id int,
foreign key (department_id) references tbl_fnl_departments(department_id),
foreign key (manager_id) references tbl_fnl_employees(employee_id)
);

create table tbl_fnl_departments
(department_id int primary key, 
department_name varchar(20) not null,
manager_id int, 
location_id int,
foreign key (location_id) references tbl_fnl_locations (location_id)
);
ALTER TABLE tbl_fnl_departments
ADD FOREIGN KEY (manager_id) references tbl_fnl_employees(employee_id);

create table tbl_fnl_job_history
(employee_id int,
start_date date,
end_date date,
job_id varchar(10),
department_id int,
foreign key (employee_id) references tbl_fnl_employees(employee_id),
foreign key (job_id) references tbl_fnl_jobs(job_id),
foreign key (department_id) references tbl_fnl_departments(department_id)
);

