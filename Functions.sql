DELIMITER $$
CREATE FUNCTION `obtener_nombre` (f_client_id INT) RETURNS Varchar(60)
deterministic
BEGIN
	DECLARE f_name varchar(60);
    
    SELECT client_name
    INTO f_name
    FROM clients
    WHERE
		client_id = f_client_id;
	RETURN f_name;

END
$$;

DELIMITER $$
CREATE FUNCTION `obtener_id` (f_client_name varchar(60)) RETURNS INT
deterministic
BEGIN
	DECLARE f_id INT;
    
    SELECT client_id
    INTO f_id
    FROM clients
    WHERE
		client_name = f_client_name;
	RETURN f_id;

END
$$ ;