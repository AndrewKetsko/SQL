select debacc
from payment
where txt like '%?????%';

--260027466

select cust_id
from account
where account = 260027466;

--16

select surname || ' ' || name || ' ' || middlename as nameuser
from customer
where cust_id = 16;