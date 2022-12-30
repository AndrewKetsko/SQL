select name, phone_number, job_id, salary, currency
from it_users
where salary < 12000
order by salary
;