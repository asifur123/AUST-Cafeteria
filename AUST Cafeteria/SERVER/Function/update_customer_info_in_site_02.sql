CREATE OR REPLACE FUNCTION update_customer_info_in_site2(x in customer.customer_name%TYPE, y in customer.customer_userName%TYPE, z in customer.customer_password%TYPE, b in customer.customer_userName%TYPE, c in customer.customer_password%TYPE)
RETURN NUMBER
IS
c_id customer.customer_id%TYPE := 0;
c_type customer.customer_type%TYPE;
BEGIN
	select customer_id, customer_type into c_id, c_type FROM customer2@ishan where customer_name = x and customer_userName = y and customer_password = z;
	IF c_id = 0 THEN
		RETURN 0;
	ELSE
		UPDATE customer2@ishan
		SET customer_userName = b, customer_password = c
		WHERE customer_id = c_id;
		COMMIT;
		RETURN 1;
	END IF;
END update_customer_info_in_site2;
/