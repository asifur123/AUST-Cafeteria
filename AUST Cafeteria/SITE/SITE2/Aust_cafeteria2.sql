clear screen;

drop table customer2 cascade constraints;
drop table menu2 cascade constraints;
drop table menu4 cascade constraints;
drop table menu6 cascade constraints;
drop table orderr cascade constraints;
drop table item1 cascade constraints;

CREATE TABLE customer2(
customer_id int,
customer_name varchar2(20),
customer_type varchar2(20),
customer_userName varchar2(20),
customer_password varchar2(20),
customer_slog int,
PRIMARY KEY(customer_id)
);

insert into customer2 values(1,'Ishan', 'Teacher', 'ish','111',0);
insert into customer2 values(2,'Kabir', 'Teacher', 'jam','112',0);


CREATE TABLE menu2(
menu_id int,
menu_name varchar2(20),
price number,
menu_type varchar(20),
PRIMARY KEY(menu_id)
);

insert into menu2 values(1,'Soup', 200, 'Chinese');
insert into menu2 values(2,'Wonthon', 150, 'Chine');
insert into menu2 values(3,'ChilliChicken', 100, 'Chinese');
insert into menu2 values(4,'Fried Rice', 80, 'Chinese');
insert into menu2 values(5,'Beef Majuka', 50, 'Chinese');

CREATE TABLE menu4(
menu_id int,
menu_name varchar2(20),
price number,
menu_type varchar(20),
PRIMARY KEY(menu_id)
);

insert into menu4 values(1,'Pepsi', 20, 'Drinks');
insert into menu4 values(2,'CocaCola', 25, 'Drinks');
insert into menu4 values(3,'Sprite', 20, 'Drinks');
insert into menu4 values(4,'MountainDew', 25, 'Drinks');
insert into menu4 values(5,'Mojo', 15, 'Drinks');

CREATE TABLE menu6(
menu_id int,
menu_name varchar2(20),
price number,
menu_type varchar(20),
PRIMARY KEY(menu_id)
);

insert into menu6 values(1,'Chocbar', 30, 'IceCream');
insert into menu6 values(2,'Cone', 50, 'IceCream');
insert into menu6 values(3,'DudhMalai', 15, 'IceCream');
insert into menu6 values(4,'ShellandCore', 25, 'IceCream');
insert into menu6 values(5,'Lolly', 15, 'IceCream');

CREATE TABLE orderr(
    order_id int,
	order_quantity int,
	amount int,
	order_date date,
	customer_id int,
	order_item varchar2(20),
	PRIMARY KEY(order_id),
	FOREIGN KEY(customer_id) REFERENCES customer2(customer_id)
);


CREATE TABLE item1(
	item1_id int, 
	item1_name varchar2(20),
	quantity int,
	available int,
	PRIMARY KEY(item1_id)
);

insert into item1 values(1,'Soup',100,0);
insert into item1 values(2,'Wonthon',90,0);
insert into item1 values(3,'ChilliChicken',150,0);
insert into item1 values(4,'Fried Rice',30,0);
insert into item1 values(5,'Beef Majuka',40,0);
		
insert into item1 values(6,'Pepsi',300,0);
insert into item1 values(7,'CocaCola',250,0);
insert into item1 values(8,'Sprite',50,0);
insert into item1 values(9,'MountainDew',60,0);
insert into item1 values(10,'Mojo',55,0);
		
insert into item1 values(11,'Chocbar',100,0);
insert into item1 values(12,'Cone',60,0);
insert into item1 values(13,'DudhMalai',40,0);
insert into item1 values(14,'ShellandCore',25,0);
insert into item1 values(15,'Lolly',20,0);


commit;