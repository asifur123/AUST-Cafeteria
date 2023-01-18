SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT X CHAR PROMPT "Enter user name = "
ACCEPT Y CHAR PROMPT "Enter password = "
ACCEPT Z NUMBER PROMPT "Enter Menu Type : 1 for Bangla, 2 for Snacks, 3 for Coffee = "


DECLARE 

	userName varchar2(15):= '&X';
	password varchar2(15):= '&Y';
	menuValue Number:= &Z;
	a int;
	cname customer1.customer_name%TYPE:='default';
	ctype customer1.customer_type%TYPE:='default';

BEGIN
	
	select customer_name, customer_type into cname, ctype from customer1 where customer_userName = userName and customer_password = password;
	update customer1 set customer_slog = 1 where customer_userName=userName;
	
	DBMS_OUTPUT.PUT_LINE(LOWER(cname));
	DBMS_OUTPUT.PUT_LINE(ctype);
	
	select customer_slog into a from customer1 where customer_userName = userName and customer_password = password;
	DBMS_OUTPUT.PUT_LINE('Current Slog:' ||' ' || a);
	
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
	select customer_id into cid from customer1 where customer_slog=1;
	
	chooseItem(cid,SelectedItem,Quantity);

END;
/

select * from item1;


select * from customer1 UNION select * from customer2@ishan;


