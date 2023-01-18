
SET SERVEROUTPUT ON;
SET VERIFY OFF;


ACCEPT Z number PROMPT "Enter user id "


DECLARE 

	menuValue number:= &Z;
	M varchar2(20);

BEGIN
	
	
	dbms_output.put_line(menuValue);
	SELECT customer_name into M FROM customer2 
  WHERE customer2.customer_id = menuValue;
  DBMS_OUTPUT.PUT_LINE(M);
  
  
  CREATE or replace VIEW check_view AS
  SELECT 
  FROM customer2
  WHERE customer2.customer_id = menuValue;
	

END;
/


