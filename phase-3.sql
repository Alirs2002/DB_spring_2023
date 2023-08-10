--inserting costumers

INSERT INTO customer VALUES(12345,'ali','roohy','tehran,hafez street',01234567);

INSERT INTO customer VALUES(23456,'kobe','bryant','los angles',12345678);

INSERT INTO customer VALUES(34567,'dwight','howard','houston,texas',23456789);

INSERT INTO customer VALUES(45678,'kevin','durant','nasheville',34567891);

INSERT INTO customer VALUES(56789,'james','harden','brooklyn,new york',45678901);


--inserting company

INSERT INTO company VALUES(12345,'benz','1926-5-21','berlin');

INSERT INTO company VALUES(234,'volkswagon','1937-5-21','berlin');

INSERT INTO company VALUES(345,'volvo','1940-3-21','sweden');

INSERT INTO company VALUES(456,'ford','1903-5-22','detroit');

INSERT INTO company VALUES(567,'hyundai','1967-5-21','seoul');

INSERT INTO company VALUES(678,'toyota','1937-5-21','japan');


--inserting types

INSERT INTO type VALUES(1,'sedan');

INSERT INTO type VALUES(2,'suv');

INSERT INTO type VALUES(3,'crossover');

INSERT INTO type VALUES(4,'coupe');

INSERT INTO type VALUES(5,'semi truck');


--inserting brands

INSERT INTO brand VALUES(11,'BRABUS','1934-3-29',123);

 INSERT INTO brand VALUES(22,'AMG','1960-3-29',123);
 
 INSERT INTO brand VALUES(33,'MAYBACH','1944-3-29',123);
 
 INSERT INTO brand VALUES(44,'saipa_diesel','1980-3-29',345);
 
 INSERT INTO brand VALUES(55,'LEXUS','1949-3-20',678);
 
 INSERT INTO brand VALUES(66,'AUDI','1949-4-13',234);
 
 INSERT INTO brand VALUES(77,'MUSTANG','1969-3-09',456);
 
 INSERT INTO brand VALUES(88,'GENESIS','1971-9-12',567);

 --inserting products

 INSERT INTO product VALUES(110,'CLA 45',22,1,1400);

INSERT INTO product VALUES(111,'g63',11,2,2600);

INSERT INTO product VALUES(112,'s580',33,1,2200);

INSERT INTO product VALUES(113,'fh 460',44,5,16000);

INSERT INTO product VALUES(114,'NX300',55,3,1900);

INSERT INTO product VALUES(115,'RS7',66,1,1800);

INSERT INTO product VALUES(116,'shelby',77,4,2100);

INSERT INTO product VALUES(117,'coupe',88,4,1900);

INSERT INTO product VALUES(118,'s500',33,5,2000);

INSERT INTO product VALUES(119,'RS8',66,1,2000);

INSERT INTO product VALUES(120,'gwagon 6*6',22,2,2400);

INSERT INTO product VALUES(121,'gt 1969',77,4,1950);

--inserting distributors

INSERT INTO distributor 
VALUES('volvo_drivers','volvo_drivers@gmail.com','tehran,hafez street,NO 12','8:00:00','16:00:00');

INSERT INTO distributor 
VALUES('actros_drivers','actros_drivers@gmail.com','tehran,hafez street,NO 12','9:00:00','18:00:00');

INSERT INTO distributor 
VALUES('kavian_drivers','kavian_drivers@gmail.com','tehran,hafez street,NO 12','8:00:00','16:00:00');

INSERT INTO distributor
VALUES('daf_drivers','daf_drivers@gmail.com','tehran,hafez street,NO 12','8:00:00','16:00:00');

--inserting dis_product

INSERT INTO dis_product VALUES(111,'actros_drivers',110,12,400);

INSERT INTO dis_product VALUES(112,'volvo_drivers',113,10,800);

INSERT INTO dis_product VALUES(113,'actros_drivers',112,8,900);

INSERT INTO dis_product VALUES(114,'daf_drivers',111,4,100);

INSERT INTO dis_product VALUES(115,'kavian_drivers',115,50,4300);

INSERT INTO dis_product VALUES(116,'daf_drivers',116,10,4050);

INSERT INTO dis_product VALUES(117,'volvo_drivers',117,21,405);

INSERT INTO dis_product VALUES(118,'kavian_drivers',118,32,800);

INSERT INTO dis_product VALUES(119,'daf_drivers',119,18,700);

INSERT INTO dis_product VALUES(120,'actros_drivers',120,120,6070);

INSERT INTO dis_product VALUES(121,'volvo_drivers',121,100,500);

INSERT INTO dis_product VALUES(122,'kavian_drivers',111,90,200);

--inserting orders


INSERT INTO orders 
VALUES(210,12345,110,'actros_drivers',NOW(),3,
orders.count*(SELECT price FROM dis_product WHERE dis_product.product_id=orders.product_id));

INSERT INTO orders 
VALUES(211,23456,115,'kavian_drivers',NOW(),2,
orders.count*(SELECT price FROM dis_product WHERE dis_product.product_id=orders.product_id));

INSERT INTO orders 
VALUES(212,34567,119,'daf_drivers',NOW(),2,
orders.count*(SELECT price FROM dis_product WHERE dis_product.product_id=orders.product_id));

INSERT INTO orders 
VALUES(213,45678,117,'volvo_drivers',NOW(),10,
orders.count*(SELECT price FROM dis_product WHERE dis_product.product_id=orders.product_id));





