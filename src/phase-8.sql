DELIMITER //
CREATE TRIGGER chk_insert
BEFORE INSERT ON product
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT * FROM product p 
        WHERE p.product_id = NEW.product_id AND p.brand_id <> NEW.brand_id
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Conflicting values';
    END IF;
END//
CREATE TRIGGER chk_update
BEFORE UPDATE ON product
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT * FROM product p 
        WHERE p.product_id = NEW.product_id AND p.brand_id <> NEW.brand_id
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Conflicting values';
    END IF;
END//
DELIMITER ;



ALTER TABLE orders ADD CONSTRAINT uc_product_id UNIQUE (product_id);
