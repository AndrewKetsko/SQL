
select tt.yyyy, 
       tt.cnt_empl, 
       LAG(tt.cnt_empl, 1) OVER(ORDER BY yyyy) prev_val, 
       nvl(tt.cnt_empl + LAG(tt.cnt_empl, 0) OVER (ORDER BY yyyy), 1) val
from (
select trunc(em.hire_date, 'yyyy') as yyyy, COUNT(*) as cnt_empl
from HR.employees em
group by trunc(em.hire_date, 'yyyy')
order by trunc(em.hire_date, 'yyyy')) tt;


select add_months(tt.yyyy,+12) as yyyy,
        tt.count_empl,
        sum(tt.count_empl) over (order by tt.yyyy) as asum
from (select trunc(em.hire_date,'yyyy') as yyyy,
             count(*) as count_empl
      from hr.employees em
      group by trunc(em.hire_date,'yyyy')
      order by trunc(em.hire_date,'yyyy')) tt;