SET SERVEROUTPUT ON;

--CREATE OR REPLACE PROCEDURE MenuList
--IS

		

CREATE or REPLACE PROCEDURE MenuList(menuValue NUMBER)
is
	BEGIN
	
		
		IF (menuValue=1) THEN
		FOR i IN (SELECT * FROM menu2) LOOP
			
		
		DBMS_OUTPUT.PUT_LINE(i.menu_id || ' ' || i.menu_name || ' ' || i.price || ' ' || 'Taka');
		
			--DBMS_OUTPUT.PUT_LINE(i.menu_name);
		--for i in (select * from menu2 UNION
		--select * from menu4 UNION
		--select * from menu6) LOOP
			--DBMS_OUTPUT.PUT_LINE(i.menu_name);

	
		END LOOP;
		
		ELSIF (menuValue=2) THEN
		FOR j IN (SELECT * FROM menu4) LOOP
			
		
		DBMS_OUTPUT.PUT_LINE(j.menu_id || ' ' || j.menu_name || ' ' || j.price || ' ' || 'Taka');
		
		END LOOP;
		
		ELSIF (menuValue=3) THEN
		FOR k IN (SELECT * FROM menu6) LOOP
			
		
		DBMS_OUTPUT.PUT_LINE(k.menu_id || ' ' || k.menu_name || ' ' || k.price || ' ' || 'Taka');
		
		
		
		END LOOP;
		
END IF;		
	
END MenuList;
/