select *
from hr.products pr
where pr.product_id in (select distinct s.product_id
                        from hr.sales s);


SELECT PR.PRODUCT_NAME
FROM HR.PRODUCTS PR
WHERE EXISTS ( SELECT * FROM HR.SALES S WHERE S.PRODUCT_ID = PR.PRODUCT_ID);