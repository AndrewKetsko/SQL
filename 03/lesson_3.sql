select em.manager_id
from hr.employees em
where em.manager_id is not null
group by em.manager_id
order by 1;

select em.job_id, count(*) as count, SUM(em.salary) as sum_salary
from hr.employees em
group by em.job_id
order by count(*) desc;

select em.department_id, count(*) as count, SUM(em.salary) as sum_salary
from hr.employees em
where em.department_id is not null 
group by em.department_id
order by count(*) desc;

select em.job_id, count(em.employee_id) as count, SUM(em.salary) as sum_salary
from hr.employees em
group by em.job_id
having count(em.employee_id) > 2
order by count(em.employee_id) desc;

select em.department_id, count(em.employee_id) as count, SUM(em.salary) as sum_salary
from hr.employees em
where em.department_id is not null 
group by em.department_id
having count(em.employee_id) > 5
order by count(em.employee_id) desc;

select em.manager_id, round(avg(em.salary),2) as avg_salary
from hr.employees em
where em.commission_pct is null
group by em.manager_id
having round(avg(em.salary),2) between 6000 and 9000;

select em.job_id, 
    em.department_id, 
    count(em.employee_id) as count_empl, 
    sum(em.salary) as sum_salary
from hr.employees em
group by em.job_id, em.department_id
having sum(em.salary) > 25000
order by 3, 4;


