create or replace view myview (view_A,view_B,view_C)AS
select s.customer_id,s.customer_name,s.customer_type
from customer1 s;

select *from myview;
commit;