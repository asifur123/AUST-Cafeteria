clear screen;

drop table customer1 cascade constraints;
drop table menu1 cascade constraints;
drop table menu3 cascade constraints;
drop table menu5 cascade constraints;
drop table orderr cascade constraints;
drop table item1 cascade constraints;
drop table OLDDATA cascade constraints;

CREATE TABLE customer1(
customer_id int,
customer_name varchar2(20),
customer_type varchar2(20),
customer_userName varchar2(20),
customer_password varchar2(20),
customer_slog int,
PRIMARY KEY(customer_id)
);

insert into customer1 values(1,'Asif', 'Student', 'asif','114',0);

CREATE TABLE menu1(
menu_id int,
menu_name varchar2(20),
price number,
menu_type varchar(20),
PRIMARY KEY(menu_id)
);

insert into menu1 values(1,'Rice', 20, 'Bangla');
insert into menu1 values(2,'Daal', 15, 'Bangla');
insert into menu1 values(3,'Vhorta', 10, 'Bangla');
insert into menu1 values(4,'Beef Vhuna', 60, 'Bangla');
insert into menu1 values(5,'Chicken Vhuna', 50, 'Bangla');

CREATE TABLE menu3(
menu_id int,
menu_name varchar2(20),
price number,
menu_type varchar(20),
PRIMARY KEY(menu_id)
);

insert into menu3 values(1,'Singara', 6, 'Snacks');
insert into menu3 values(2,'Samosa', 7, 'Snacks');
insert into menu3 values(3,'Burger', 50, 'Snacks');
insert into menu3 values(4,'Pizza', 80, 'Snacks');
insert into menu3 values(5,'Sandwich', 40, 'Snacks');

CREATE TABLE menu5(
menu_id int,
menu_name varchar2(20),
price number,
menu_type varchar(20),
PRIMARY KEY(menu_id)
);

insert into menu5 values(1,'Nescafe', 20, 'Coffee');
insert into menu5 values(2,'Cold Coffee', 50, 'Coffee');
insert into menu5 values(3,'Cappuccino', 150, 'Coffee');
insert into menu5 values(4,'Frappuccino', 200, 'Coffee');
insert into menu5 values(5,'Latte', 250, 'Coffee');

CREATE TABLE orderr(
    order_id int,
	order_quantity int,
	amount int,
	order_date date,
	customer_id int,
	order_item varchar2(20),
	PRIMARY KEY(order_id),
	FOREIGN KEY(customer_id) REFERENCES customer1(customer_id)
);


CREATE TABLE item1(
	item1_id int, 
	item1_name varchar2(20),
	available int,
	PRIMARY KEY(item1_id)
);

insert into item1 values(1,'Rice',100);
insert into item1 values(2,'Daal',90);
insert into item1 values(3,'Vhorta',150);
insert into item1 values(4,'Beef Vhuna',30);
insert into item1 values(5,'Chicken Vhuna',40);
		
insert into item1 values(6,'Singara',300);
insert into item1 values(7,'Samosa',250);
insert into item1 values(8,'Burger',50);
insert into item1 values(9,'Pizza',60);
insert into item1 values(10,'Sandwich',55);
		
insert into item1 values(11,'Nescafe',100);
insert into item1 values(12,'Cold Coffee',60);
insert into item1 values(13,'Cappuccino',40);
insert into item1 values(14,'Frappuccino',25);
insert into item1 values(15,'Latte',20);

CREATE TABLE OLDDATA(
	OLDDATA_id int, 
	OLDDATA_name varchar2(20),
	OLDDATA_available int,
	PRIMARY KEY(OLDDATA_id)
);

CREATE OR REPLACE TRIGGER OLDDATA
BEFORE UPDATE 
OF available
ON item1
FOR EACH ROW

DECLARE 
	A item1.item1_id%TYPE;
	B item1.item1_name%TYPE;
	C item1.available%TYPE;
	
	BEGIN 
		A:= :OLD.item1_id;
		B:= :OLD.item1_name;
		C:= :OLD.available;
		
		insert into OLDDATA values(A,B,C);
		END;
		/

commit;