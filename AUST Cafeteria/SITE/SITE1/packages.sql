SET SERVEROUTPUT ON;
SET VERIFY OFF;



CREATE OR REPLACE PACKAGE mypack AS
	FUNCTION F1(n in NUMBER)
	RETURN NUMBER;
END mypack;
/

CREATE OR REPLACE PACKAGE BODY mypack AS
	FUNCTION F1(n in NUMBER)
	RETURN NUMBER
	IS
	num NUMBER;
	BEGIN
		select count(ORDER_ITEM) into num from orderr ;
		DBMS_OUTPUT.PUT_LINE(num);

		return num;
	END F1;
	
END mypack;
/

DECLARE
	num NUMBER;
BEGIN
	num := mypack.F1(num);
END;
/
