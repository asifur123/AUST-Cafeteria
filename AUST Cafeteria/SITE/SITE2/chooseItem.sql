SET SERVEROUTPUT ON;


CREATE or REPLACE PROCEDURE chooseItem(cid Number, selectedItem CHAR, Quantity item1.quantity%TYPE)

IS
	n number;
	a number;
	d DATE;
	m varchar2(20);
	BEGIN
	
		
			FOR i IN (SELECT * FROM menu2 WHERE menu_name=selectedItem)LOOP
				i.price:=i.price*Quantity;
				a:=i.price;
				m:=i.menu_name;
				DBMS_OUTPUT.PUT_LINE(i.menu_name || ' ' || i.price || ' '|| 'Taka');
				--checkQuantity(m,Quantity);
				
			END LOOP;
		
			FOR i IN (SELECT * FROM menu4 WHERE menu_name=selectedItem)LOOP
				i.price:=i.price*Quantity;
				a:=i.price;
				m:=i.menu_name;
				DBMS_OUTPUT.PUT_LINE(i.menu_name || ' ' || i.price || ' '|| 'Taka');
				--checkQuantity(m,Quantity);
	
			END LOOP;
		
			FOR i IN (SELECT * FROM menu6 WHERE menu_name=selectedItem)LOOP
				i.price:=i.price*Quantity;
				a:=i.price;
				m:=i.menu_name;
				DBMS_OUTPUT.PUT_LINE(i.menu_name || ' ' || i.price || ' '|| 'Taka');
				--checkQuantity(m,Quantity);
	
			END LOOP;
			select count (order_id) into n from orderr;
			
			n:=n+1;
			
			d :=TO_DATE(sysdate, 'YYYY-MM-DD');
			insert into orderr values(n,Quantity,a,d,cid,m);
			
			DBMS_OUTPUT.PUT_LINE('order_id' || ' ' || 'order_quantity' || ' ' || 'amount' || ' ' || 'order_date' || ' ' || 'customer_id' || ' ' || 'order_item');
			
			FOR i IN (SELECT * FROM orderr) LOOP
			
			
			DBMS_OUTPUT.PUT_LINE(i.order_id || ' ' || ' ' || ' ' || ' ' || ' ' ||  ' ' || ' ' || ' ' || ' ' || ' ' || ' ' || i.order_quantity ||' ' || ' ' || ' ' || ' ' || ' ' ||  ' ' || ' ' || ' ' || ' ' || ' ' || ' ' || ' ' || i.amount || ' ' || ' ' ||  ' ' || i.order_date || ' ' || ' ' || ' ' || ' ' || ' ' || i.customer_id || ' ' || ' ' || ' ' || ' ' || ' ' ||' ' || ' ' || ' ' || i.order_item);
			
			
			END LOOP;
			
			update customer2 set customer_slog = 0 where customer_id=cid;
			
			commit;
			
				
	
END chooseItem;
/




