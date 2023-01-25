DELIMITER //
Create Procedure `SelectCustom`(campo varchar(60), orden varchar(1))
BEGIN

CASE 
WHEN campo='client_name' THEN
    CASE 
    WHEN orden='A' THEN SELECT * FROM clients ORDER BY client_name;    
    WHEN orden='D' THEN SELECT * FROM clients ORDER BY client_name DESC;    
    ELSE SELECT 'Orden incorrecto.';
    END CASE;
WHEN campo='client_id' THEN
    CASE 
    WHEN orden='A' THEN SELECT * FROM clients ORDER BY client_id;    
    WHEN orden='D' THEN SELECT * FROM clients ORDER BY client_id DESC;    
    ELSE SELECT 'Orden incorrecto.';
    END CASE;
ELSE
    SELECT 'Campo incorrecto.';
END CASE;

END
//

--------------------------------------------------------------------------------------------------------------

DELIMITER //
Create Procedure `alterTables`
(
id_prod INT,
code_prod INT,
name_prod VARCHAR(60),
stock_prod INT,
cat_prod VARCHAR(30),
operacion Varchar(20)
)

BEGIN
IF operacion = "Insert" THEN
	BEGIN
		INSERT INTO products
					(prod_id,
                    prod_code,
                    prod_name,
                    prod_stock,
                    prod_cat)
                    
		VALUES		(id_prod,
					code_prod,
                    name_prod,
                    stock_prod,
                    cat_prod);
	END;
    
ELSEIF operacion = 'Select' THEN
        BEGIN
            SELECT *
            FROM   products;
        END;

ELSEIF operacion = 'Update' THEN
        BEGIN
            UPDATE products
            SET    prod_code = code_prod,
                   prod_name = name_prod,
                   prod_stock = stock_prod,
                   prod_cat = cat_prod
            WHERE  prod_id = id_prod;
        END;
ELSEIF operacion = 'Delete' THEN
        BEGIN
            DELETE FROM products
            WHERE  prod_id = id_prod;
        END;
END IF;
END 
//