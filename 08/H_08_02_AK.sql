select *
from hr.products p
where p.product_id 
not in(select distinct s.product_id
       from hr.sales s);


select *
from hr.products p
where p.product_id in(select p.product_id
                      from hr.products p
                      minus
                      select distinct s.product_id
                      from hr.sales s);