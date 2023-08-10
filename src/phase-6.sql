
CREATE VIEW distributor_distributes AS
SELECT distributor.dis_name,distributor.address,product.namee
FROM distributor
NATURAL JOIN dis_product INNER JOIN product
ON dis_product.product_id=product.product_id

;



CREATE VIEW customer_orders AS

SELECT * FROM orders

INNER JOIN customer ON orders.customer_id=customer.national_id
;





DROP VIEW IF EXISTS product_type_brand_company;
CREATE VIEW product_type_brand_company AS 
SELECT ALL product.product_id,product.namee AS prodact_name,brand.namee AS brand_named,company.namee as company_name 
FROM product 
INNER JOIN typess ON product.type_id=typess.type_id 
INNER JOIN brand ON product.brand_id=brand.brand_id 
INNER JOIN company ON company.license_number=brand.company_id;

select * from product_type_brand_company;





