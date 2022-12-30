select s.employee_id,
        (select em.first_name || ' ' || em.last_name as full_name
        from hr.employees em
        where em.employee_id = s.employee_id) as name_emp,
        s.dt_operations,
        s.product_id,
        s.count_sales,
        s.sum_sales
from hr.sales s;