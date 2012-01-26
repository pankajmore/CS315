elect * from departments inner join dept_manager on departments.dept_no = dept_manager.dept_no;

select * from departments left outer join dept_manager on departments.dept_no = dept_manager.dept_no;

select * from departments right outer join dept_manager on departments.dept_no = dept_manager.dept_no;

select * from departments cross join dept_manager;

select MIN(salary) from salaries;

select MAX(salary) from salaries;

select AVG(salary) from salaries;

select SUM(salary) from salaries;

select dept_no, count(emp_no) from dept_manager group by dept_no;



