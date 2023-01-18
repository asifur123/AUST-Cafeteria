SET SERVEROUTPUT ON;
SET VERIFY OFF;


DECLARE
a customer1.customer_id%TYPE:=&cid;
b customer1.customer_name%TYPE:='&name';
c customer1.customer_type%TYPE:='&type';
d customer1.customer_userName%TYPE:='&userName';
e customer1.customer_password%TYPE:='&password';

BEGIN


INSERT INTO customer1 VALUES(a,b,c,d,e,0);


END;
/
commit;

