SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT X CHAR PROMPT "Enter user name = "
ACCEPT Y CHAR PROMPT "Enter password = "
ACCEPT Z NUMBER PROMPT "Enter Menu Type : 1 for Chinese, 2 for Drinks, 3 for Ice Cream = "


DECLARE 

	userName varchar2(15):= '&X';
	password varchar2(15):= '&Y';
	menuValue Number:= &Z;
	customers_name customer2.customer_name%TYPE:='default';
	customer_type customer2.customer_type%TYPE:='default';

BEGIN
	
	select customer_name, customer_type into customers_name, customer_type from customer2 where customer_userName = userName and customer_password = password;
	update customer2 set customer_slog = 1 where customer_name=customers_name;
	
	DBMS_OUTPUT.PUT_LINE(LOWER(customers_name));
	DBMS_OUTPUT.PUT_LINE(customer_type);
		
	
	DBMS_OUTPUT.PUT_LINE('MenuList: ');
	MenuList(menuValue);
		
	
	
	
	EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE('No student name found');
	DBMS_OUTPUT.PUT_LINE('Do you want to insert you name and password?');
	

	
	
END;

/

ACCEPT S CHAR PROMPT "What do you want to eat/drink?  "
ACCEPT Q NUMBER PROMPT "Enter Quantity = "
DECLARE


SelectedItem varchar2(30):='&S';
Quantity Number:=&Q;
cid Number;
userName varchar2(15);
password varchar2(15);


BEGIN
	select customer_id into cid from customer2 where customer_slog=1;
	
	chooseItem(cid,SelectedItem,Quantity);

END;
/