select pr.product_name,
       sl.*
from hr.sales sl
full outer join hr.products pr
on sl.product_id = pr.product_id
order by pr.product_id;