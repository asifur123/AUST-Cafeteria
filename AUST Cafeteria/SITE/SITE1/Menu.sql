SET SERVEROUTPUT ON;

--CREATE OR REPLACE PROCEDURE MenuList
--IS

		

CREATE or REPLACE PROCEDURE MenuList(menuValue NUMBER)
is
	BEGIN
	
		
		IF (menuValue=1) THEN
		FOR i IN (SELECT * FROM menu1) LOOP
			
		
		DBMS_OUTPUT.PUT_LINE(i.menu_id || ' ' || i.menu_name || ' ' || i.price || ' ' || 'Taka');
		
	
		END LOOP;
		
		ELSIF (menuValue=2) THEN
		FOR j IN (SELECT * FROM menu3) LOOP
			
		
		DBMS_OUTPUT.PUT_LINE(j.menu_id || ' ' || j.menu_name || ' ' || j.price || ' ' || 'Taka');
		
		END LOOP;
		
		ELSIF (menuValue=3) THEN
		FOR k IN (SELECT * FROM menu5) LOOP
			
		
		DBMS_OUTPUT.PUT_LINE(k.menu_id || ' ' || k.menu_name || ' ' || k.price || ' ' || 'Taka');
		
		
		
		END LOOP;
		
END IF;		
	
END MenuList;
/