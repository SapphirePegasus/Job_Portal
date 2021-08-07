# Job_Portal
Online Job Portal prototype made using HTML, CSS, JSP, Servlet along with oracle 11g XE database.


Online Job Portal Prototype
created by Sapphire Pegasus (a.k.a Prittam Bhattacharyya)

Prerequisite to run the project-
1. Any IDE you are familiar with (Eclipse IDE recommended)
2. Install Apache Tomcat Server v10 or above 
3. Create a new project using target runtime as Tomcat Server
4. Copy this project files into yours
5. Install Oracle 11g XE database (small size and hassel free)
6. Create a workspace with username- "jobportal" and password- "jobportal"
7. Create the tables listed below

Create tables - JOBS for job posting by company
		COMPANY for company registration
		JOBSEEK for employee registration
		APPLICANTS for job applications
		
Insert the following command into the "SQL Commands" under "SQL Workspace" to create the "JOBS" table

create table jobs
(job_id number(10) primary key, 
job_name varchar2(50), 
job_min_experience number(10), 
job_max_experience number(10), 
job_other_skill varchar2(100), 
job_valid_date varchar2(10), 
job_qualification varchar2(100), 
job_skill varchar2(50), 
job_type varchar2(50)
);

Insert the following command into the "SQL Commands" under "SQL Workspace" to create the "COMPANY" table

create table company 
(company_id number(30),
company_name varchar2(50),
company_email varchar2(50) primary key,
password varchar2(20),
phone_no number(15),
address_line_1 varchar2(50),
address_line_2 varchar2(50),
details varchar2(200),
company_type varchar2(50)
);

Insert the following command into the "SQL Commands" under "SQL Workspace" to create the "JOBSEEK" table

create table jobseek
(name varchar2(50), 
username varchar2(50), 
email varchar2(50) primary key, 
password varchar2(20), 
phone_no number(15), 
address_line_1 varchar2(50), 
address_line_2 varchar2(50), 
date_of_birth varchar2(10),
experience number(10),
gender varchar2(20),
qualification varchar2(50),
skill varchar2(50)
);

Insert the following command into the "SQL Commands" under "SQL Workspace" to create the "APPLICANTS" table

create table applicants
(applicant_username varchar2(50),
applicant_email varchar2(50),
job_id_applied varchar2(50)
);


***PLEASE NOTE THAT I HAVE SPECIFIED THE USERNAME, PASSWORD, AND TABLE STRUCTURE FOR EASY RUNNING OF THE PROJECT. YOU MAY CHANGE THE NAMES AFTER CHANGING THE PROJECT CODE A LITTLE BIT***
