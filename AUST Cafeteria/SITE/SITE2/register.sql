SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
a customer2.customer_id%TYPE:=&aid;
b customer2.customer_name%TYPE:='&name';
c customer2.customer_type%TYPE:='&type';
d customer2.customer_userName%TYPE:='&UserName';
e customer2.customer_password%TYPE:='&Password';


BEGIN


INSERT INTO customer2 VALUES(a,b,c,d,e,0);

END;
/
commit;

