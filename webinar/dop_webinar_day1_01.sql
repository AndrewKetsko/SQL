
select *
from customer;

select surname || ' ' || name || ' ' || middlename as full_name,
to_char(birthday,'day') as day_of_birthday,
to_char(birthday,'month') mn_name_birthday,
to_char(birthday,'yyyy') year_birthday,
birthday,
decode(gender,'M','Male','F','Female') as gender,
decode(status,'O','Open','C','Close') as status,
    (select current_date 
    from dual)  as date_of_report
from customer;
