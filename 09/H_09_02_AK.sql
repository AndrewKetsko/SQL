insert into m_andrew.product
--(product_id, product_name, count_product, price_sales)
select 1, 'first', 10, 10
from dual
union
select 2, 'second', 20, 20
from dual
union
select 3, 'third', 30, 30
from dual
union
select 4, 'fourth', 40, 40
from dual
union
select 5, 'fifth', 50, 50
from dual
union
select 6, 'sixth', 60, 60
from dual;

commit;