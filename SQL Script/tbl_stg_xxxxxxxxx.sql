create table TBL_STG_JOB_HISTORY
(EMPLOYEE_ID int,
START_DATE datetime,
END_DATE datetime,
JOB_ID varchar(20),
DEPARTMENT_ID int
);

create table TBL_STG_JOBS
(JOB_ID varchar(20),
JOB_TITLE varchar (50),
MIN_SALARY decimal (10,2),
MAX_SALARY decimal (10,2)
);

Create table TBL_STG_LOCATIONS
(LOCATION_ID int,
STREET_ADDRESS varchar(50),
POSTAL_CODE varchar(20),
CITY varchar(50),
STATE_PROVINCE varchar (50),
COUNTRY_ID char(2)
);

create table TBL_STG_REGIONS
 (REGION_ID int,
 REGION_NAME varchar(50)
 );
 
 create table TBL_STG_EMPLOYEES
(EMPLOYEE_ID int,
FIRST_NAME varchar (50),
LAST_NAME varchar (50),
EMAIL varchar (50),
PHONE_NUMBER varchar(15),
HIRE_DATE datetime,
JOB_ID varchar(10),
SALARY decimal(10,2),
COMMISSION_PCT decimal(3,2),
MANAGER_ID int,
DEPARTMENT_ID int
);

create table TBL_STG_DEPARTMENTS
(DEPARTMENT_ID int,
DEPARTMENT_NAME varchar(50),
MANAGER_ID int,
LOCATION_ID int
);

create table TBL_STG_COUNTRIES
(COUNTRY_ID char(2),
COUNTRY_NAME varchar(45),
REGION_ID int
);



