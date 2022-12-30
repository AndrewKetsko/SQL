select name, email, phone_number, hire_date, job_id
from it_users
where hire_date > to_date ('2003' , 'yyyy')
order by hire_date desc;