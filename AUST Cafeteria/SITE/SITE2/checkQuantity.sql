SET SERVEROUTPUT ON;


CREATE or REPLACE PROCEDURE checkQuantity(m item1.item1_name%TYPE,Quantity item1.quantity%TYPE)

IS
p int;
	BEGIN
		
			
			
			--select quantity into p from item1 where item1_name=m;
			update item1 set quantity = (quantity-Quantity) where item1_name=m;
			
			
	
END checkQuantity;
/




