SET SERVEROUTPUT ON;


CREATE or REPLACE PROCEDURE checkQuantity(m char,Q Number)

IS

	BEGIN
		
			
			update item1 set available = available-Q where item1_name=m;
			
			
			
	
END checkQuantity;
/







