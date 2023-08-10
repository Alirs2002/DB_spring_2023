

--inserting harry kane
INSERT INTO customer VALUES('123456781011','Harry','Kane','london,london,Baker Street','+44796268462');


--updating his number

UPDATE customer set phone='+447342780080' WHERE national_id='123456781011';



--removing khasis customers

DELETE FROM customer WHERE customer.national_id NOT IN(SELECT customer_id FROM orders);


