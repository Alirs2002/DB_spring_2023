
SELECT dis_name, product_id, order_count as num_sold 
FROM orders 
GROUP BY dis_name, product_id 
ORDER BY dis_name, order_count DESC 
LIMIT 10;


SELECT c.address, o.product_id, o.order_count as num_sold 
FROM orders o
JOIN customer c ON o.customer_id = c.national_id
GROUP BY c.address, o.product_id 
ORDER BY c.address, order_count DESC 
LIMIT 10;




SELECT dis_name FROM orders

GROUP BY dis_name
ORDER BY COUNT(order_count) DESC
LIMIT 5;




SELECT COUNT(*) AS cou

FROM orders AS ord,orders AS ordd

WHERE ord.dis_name=ordd.dis_name AND ord.product_id=117 AND ordd.product_id=113 AND ord.order_count>ordd.order_count;







