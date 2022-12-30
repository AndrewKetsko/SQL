insert into m_andrew.students (
student_id,
department_id,
teacher_id,
start_date,
full_name,
scholarship)
select 1, 50, 100, to_date('01.08.2019', 'dd.mm.yyyy'), 'Бєляєв Матвій Артемович', 700
from dual
union
select 2, 50, 100, to_date('22.08.2019', 'dd.mm.yyyy'), 'Блажевич Ігор Юрійович', 690
from dual
union
select 3, 50, 100, to_date('01.08.2019', 'dd.mm.yyyy'), 'Валієва Руфіна Рафаелівна', 690
from dual
union
select 4, 60, 200, to_date('22.08.2019', 'dd.mm.yyyy'), 'Височин Олександр Андрійович', 730
from dual
union
select 5, 60, 200, to_date('01.08.2019', 'dd.mm.yyyy'), 'Гріненко Олексій Олексійович', 740
from dual
union
select 6, 70, 300, to_date('22.08.2019', 'dd.mm.yyyy'), 'Жигляєв Родіон Олексійович', 790
from dual
union
select 7, 60, 200, to_date('01.08.2019', 'dd.mm.yyyy'), 'Журавльова Анастасія Сергіївна', 730
from dual
union
select 8, 60, 200, to_date('29.08.2019', 'dd.mm.yyyy'), 'Зібров Кирило Вікторович', 720
from dual
union
select 9, 70, 300, to_date('29.07.2019', 'dd.mm.yyyy'), 'Колосов Дмитро Григорович', 800
from dual
union
select 10, 70, 300, to_date('28.07.2019', 'dd.mm.yyyy'), 'Червоних Олексій Володимирович', 790
from dual
;

commit;