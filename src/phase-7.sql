ALTER TABLE product ADD COLUMN is_sold BOOLEAN DEFAULT FALSE;


UPDATE product SET is_sold=True WHERE product_id IN (SELECT product_id FROM orders);
UPDATE product SET is_sold=False WHERE product_id =113;


START TRANSACTION;

INSERT INTO orders
SELECT 214,'45678',113,'volvo_drivers',NOW(),1,1*(SELECT price FROM dis_product WHERE (dis_product.product_id,dis_product.dis_name)=(113,'volvo_drivers'))
FROM product
WHERE product_id=113 AND is_sold=0;
    
UPDATE product SET is_sold=1 WHERE product_id=113 AND is_sold=0;

UPDATE dis_product SET count=count-1;


ROLLBACK;