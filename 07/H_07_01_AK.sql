select em.first_name,
       em.last_name,
       em.phone_number,
       em.email,
       em.salary,
       sl.dt_operations,
       sl.product_id,
       sl.count_sales,
       sl.sum_sales
from hr.sales sl
left outer join hr.employees em
on sl.employee_id = em.employee_id
where sl.dt_operations between trunc(sysdate,'mm') 
and add_months(trunc(sysdate,'mm'),1)-1/86400;