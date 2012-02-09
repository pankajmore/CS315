-- Name : Pankaj More
-- Roll : Y9402
-- Assignment 1

-- -----------------------------------------------------------------------------

-- change the current database to employees
USE employees;


-- Question 1
-- perform an "inner join" of deptartments relation and dept_manager relation
-- only the rows with matching values in the corresponding column are included
select * from departments inner join dept_manager on departments.dept_no = dept_manager.dept_no;

-- Question 2
-- perform a "left outer join" of departments relation and dept_manager relation
-- it includes all those tuples in departments table which do not have any matching dept_no in dept_manager table with null values in the latter's attributes
select * from departments left outer join dept_manager on departments.dept_no = dept_manager.dept_no;

-- perform a "right outer join" of departments relation and dept_manager relation
-- it is similar to left outer join except for the right table
select * from departments right outer join dept_manager on departments.dept_no = dept_manager.dept_no;

-- cartesian product of departments relation and dept_manager relation
select * from departments cross join dept_manager;

-- find the minimum salary from the salaries table
select MIN(salary) from salaries;

-- find the maximum salary from the salaries table
select MAX(salary) from salaries;

-- find the average of all salaries
select AVG(salary) from salaries;

-- Question 3
-- list of various job titles with the total nuumber of employees , max , min and average salaries of each title
select titles.title, count(distinct salaries.emp_no), MAX(salaries.salary) , MIN(salaries.salary), AVG(salaries.salary) from titles inner join  salaries on titles.emp_no = salaries.emp_no group by titles.title ;

-- total salaries paid in each department over all time period assumming the total salary amount is the exact amount paid from from_date to to_date
select departments.dept_name, SUM(salaries.salary) from departments, dept_emp, salaries where departments.dept_no = dept_emp.dept_no and dept_emp.emp_no = salaries.emp_no group by departments.dept_name;

-- list the number of managers in each department
select dept_no, count(distinct emp_no) from dept_manager group by dept_no;

-- list the number of employees in each department
select departments.dept_name, count(distinct dept_emp.emp_no) from departments, dept_emp where departments.dept_no = dept_emp.dept_no group by departments.dept_name ;

-- delete the tuple with the value of attribute dept_no as "d011" from relation departments
delete from departments where dept_no = "d011";

-- Question 4
-- insert the tuple with attributes dept_no = "do11" and dept_name = "Legal" into departments table
insert into departments values ('d011', 'Legal');

-- modify an existing tuple with dept_name as Legal by updating its dept_no to "d033"
update departments set dept_no = "d033" where dept_name = "Legal";

-- delete the tuple with the value of attribute dept_no as "d033" from relation departments
delete from departments where dept_no = "d033";

