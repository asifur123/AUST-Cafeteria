CREATE VIEW sup_orders AS view 
  SELECT customer2.customer_id,customer_type,customer_userName
  FROM customer2;
  
select *from sup_orders;