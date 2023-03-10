SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION InsertCustomerfromSite1
	
return number
is
	m1 NUMBER;
 	total number;
	A customer.customer_id%TYPE;
	B customer.customer_name%TYPE;
	C customer.customer_type%TYPE;
	D customer.customer_userName%TYPE;
	E customer.customer_password%TYPE;
BEGIN
	select count(customer_id) into m1 from customer;
	FOR R IN (SELECT * FROM customer1@asif) LOOP
		A := R.customer_id;
		B := R.customer_name;
		C := R.customer_type;
		D := R.customer_userName;
		E := R.customer_password;
		--DBMS_OUTPUT.PUT_LINE(A || B);
		m1 := m1 + 1;
		INSERT INTO Customer(customer_id, customer_name, customer_type, customer_userName, customer_password) VALUES(m1, B, C, D, E);
		commit;
	END LOOP;
	return 1;
END InsertCustomerfromSite1;

/

DECLARE
	m1 number;
BEGIN
	m1 := InsertCustomerfromSite1;
END;
/