DELIMITER $$

CREATE TRIGGER trig_cliente
AFTER INSERT ON clients FOR EACH ROW
BEGIN

    INSERT INTO logclientes VALUES (DEFAULT, USER(), CURDATE(), CURTIME(), "INSERT" );

END 
$$ 

--------------------------------------------------------------------------------------------------------------------------------

DELIMITER $$

CREATE TRIGGER trig_products
BEFORE DELETE ON products FOR EACH ROW
BEGIN

    INSERT INTO log_productos VALUES ( default,old.prod_name, CURDATE(),  "delete" );

END
$$
