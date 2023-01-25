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