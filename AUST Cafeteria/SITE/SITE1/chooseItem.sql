SET SERVEROUTPUT ON;


CREATE or REPLACE PROCEDURE chooseItem(cid Number, selectedItem CHAR, Quantity Number)

IS
	n number;
	a number;
	d DATE;
	m varchar2(20);
	BEGIN
	
		
			FOR i IN (SELECT * FROM menu1 WHERE menu_name=selectedItem)LOOP
				i.price:=i.price*Quantity;
				a:=i.price;
				m:=i.menu_name;
				DBMS_OUTPUT.PUT_LINE(i.menu_name || ' ' || i.price || ' '|| 'Taka');
				checkQuantity(m,Quantity);
				
			END LOOP;
		
			FOR j IN (SELECT * FROM menu3 WHERE menu_name=selectedItem)LOOP
				j.price:=j.price*Quantity;
				a:=j.price;
				m:=j.menu_name;
				DBMS_OUTPUT.PUT_LINE(j.menu_name || ' ' || j.price || ' '|| 'Taka');
				checkQuantity(m,Quantity);
	
			END LOOP;
		
			FOR k IN (SELECT * FROM menu5 WHERE menu_name=selectedItem)LOOP
				k.price:=k.price*Quantity;
				a:=k.price;
				m:=k.menu_name;
				DBMS_OUTPUT.PUT_LINE(k.menu_name || ' ' || k.price || ' '|| 'Taka');
				checkQuantity(m,Quantity);
	
			END LOOP;
			select count (order_id) into n from orderr;
			
			n:=n+1;
			
			d :=TO_DATE(sysdate, 'YYYY-MM-DD');
			insert into orderr values(n,Quantity,a,d,cid,m);
			
			DBMS_OUTPUT.PUT_LINE('Order Id' || ' ' || 'Order Quantity' || ' ' || 'Amount' || ' ' || 'Order Date' || ' ' || 'Customer Id' || ' ' || 'Order Item');
			
			FOR i IN (SELECT * FROM orderr) LOOP
			
			
			DBMS_OUTPUT.PUT_LINE(i.order_id || ' ' || ' ' || ' ' || ' ' || ' ' ||  ' ' || ' ' || ' ' || ' ' || ' ' || ' ' || i.order_quantity ||' ' || ' ' || ' ' || ' ' || ' ' ||  ' ' || ' ' || ' ' || ' ' || ' ' || ' ' || ' ' || i.amount || ' ' || ' ' ||  ' ' || i.order_date || ' ' || ' ' || ' ' || ' ' || ' ' || i.customer_id || ' ' || ' ' || ' ' || ' ' || ' ' ||' ' || ' ' || ' ' || i.order_item);
			
			
			END LOOP;
			
			update customer1 set customer_slog = 0 where customer_id=cid;
			
			commit;
			
				
	
END chooseItem;
/




