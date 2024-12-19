question-1
select * from employee;
     question-2
select name,salary from employee;
     question-3
select * from employee where age>30;
     question-4
select name from department;
     question-5
select * from employee 
e join department d on e.department_id=d.department_id;
     question-6
select * from employee where name like 'J%';
     question-7
select * from employee where name like '%e';
     question-8
select * from employee where name like '%a%';
     question-9
select * from employee where length(name)=9;
     question-10
select * from employee where name like '_o%';
     question-11
select * from employee where year(hire_date)='2020';
     question-12
select * from employee where month(hire_date)='1';
     question-13
select * from employee where year(hire_date)<2019;
     question-14
select * from employee where hire_date>='2021-03-01';
     question-15


     question-16
select sum(salary) from employee;
     question-17
select avg(salary) from employee;
     question-18
select min(salary) from employee;
     question-19
select count(*),department_id from employee group by department_id;
     question-20
select avg(salary),department_id from employee group by department_id;
     question-21
select sum(salary),department_id from employee group by department_id;
     question-22
select avg(age),department_id from employee group by department_id;
     question-23
select count(*),year(hire_date) from employee group by year(hire_date);
     question-24
select max(salary),department_id from employee group by department_id;
     question-25


     question-26
select department_id,name,count(emp_id) as employeecount from employee group by department_id,name having count(emp_id)>2;
     question-27
select department_id,avg(salary) from employee group by department_id having avg(salary)>55000;
     question-28
select year(hire_date),count(emp_id) from employee group by year(hire_date) having count(emp_id)>1;
     question-29
select department_id,sum(salary) from employee group by department_id having sum(salary)<100000;
     question-30
select max(salary),department_id from employee group by department_id having max(salary)>75000;
    question-31
select name,salary from employee
order by salary ASC;
    question-32
select name,age from employee
order by age DESC;
     question-33
select name,hire_date from employee
order by hire_date ASC;
     question-34
select name,department_id,salary from employee
order by  department_id,salary;
     question-35
SELECT department_id,SUM(salary) AS total_salary
FROM employee
GROUP BY department_id
ORDER BY total_salary;
     question-36
SELECT e.name,d.name From employee e
join department d on e.department_id=d.department_id;
     question-37
SELECT p.name,d.name From project p
join department d on p.department_id=d.department_id;
     question-38
SELECT e.name AS employee_name, p.name AS project_name,e.department_id
FROM employee e
JOIN project p ON e.department_id = p.department_id
ORDER BY e.department_id ASC;
     question-44
SELECT e1.name
FROM Employee e1
JOIN Employee e2 ON e1.department_id = e2.department_id
WHERE e2.name = 'John Doe' AND e1.name != 'John Doe';
     question-45
select d.name from department d
join employee e on d.department_id=e.department_id
group by d.name
order by avg(salary) DESC LIMIT 1;
     question-46
select name,salary from employee
order by salary DESC LIMIT 1;
     question-47
select name,salary from employee
where salary>(select avg(salary) from employee);
     question-48
select max(salary) from employee
where salary<(select max(salary) from employee);
     question-49
SELECT d.name
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.name
ORDER BY COUNT(e.emp_id) DESC
LIMIT 1;
     question-50
SELECT e.name,salary
FROM Employee e
JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM Employee
    GROUP BY department_id
) dept_avg ON e.department_id = dept_avg.department_id
WHERE e.salary > dept_avg.avg_salary;
     question-51
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2; 
     question-52
SELECT name
FROM Employee
WHERE age > ALL (
    SELECT age
    FROM Employee
    WHERE department_id = (SELECT id FROM Department WHERE name = 'HR')
);
     question-53
SELECT d.name
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.name
HAVING AVG(e.salary) > 55000;
