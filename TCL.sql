START TRANSACTION;
    DELETE FROM
        clients
    WHERE client_id = 5;

ROLLBACK;

--------------------------------------------------------------------------------------------------------------

START TRANSACTION;
INSERT INTO clients VALUES(
    6,
    "Bil Arc",
    39252267,
    "ay.saldivar@latinmail.com",
    "Avenida Armenta, 1113, Bajo 2º",
    676991752,
    "honor shard pouch(M)"
);
INSERT INTO clients VALUES(
    7,
    "Bil Arc",
    39252267,
    "ay.saldivar@latinmail.com",
    "Avenida Armenta, 1113, Bajo 2º",
    676991753,
    "honor shard pouch(M)"
);

SAVEPOINT mitad;

INSERT INTO clients VALUES(
    8,
    "Bill Arco",
    39252267,
    "arco.saldivar@latinmail.com",
    "Avenida San Martin, 1113, Bajo 2º",
    676991744,
    "honor shard pouch(M)"
);

SAVEPOINT mitad2;

Select * from clients;

ROLLBACK TO mitad;
