SET SERVEROUTPUT ON;
SET VERIFY OFF;



CREATE OR REPLACE TRIGGER trigg
AFTER INSERT
ON customer1
DECLARE 
BEGIN
	
	DBMS_OUTPUT.PUT_LINE('Student data inserted by ASIF of site1');

END;
/

