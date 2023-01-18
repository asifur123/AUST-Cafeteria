SET SERVEROUTPUT ON;
SET VERIFY OFF;



CREATE OR REPLACE PACKAGE mypack2 AS
	PROCEDURE P2;
END mypack2;
/

CREATE OR REPLACE PACKAGE BODY mypack2 AS
	
	PROCEDURE P2
	IS
	BEGIN
		FOR i in ((select * from orderr@asif where Order_date between TO_Date(SYSDATE, 'YYYY-MM-DD') AND To_DATE(SYSDATE + 1, 'YYYY-MM-DD')) UNION (select * from orderr@ishan where Order_date between TO_Date(SYSDATE, 'YYYY-MM-DD') AND To_DATE(SYSDATE + 1, 'YYYY-MM-DD'))) LOOP
			DBMS_OUTPUT.PUT_LINE(i.order_id || ' ' || i.order_quantity || ' ' || i.amount || ' ' || i.order_date || ' ' || i.order_item);
		END LOOP;
	END P2;
END mypack2;
/

DECLARE
BEGIN
	mypack2.P2;
END;
/