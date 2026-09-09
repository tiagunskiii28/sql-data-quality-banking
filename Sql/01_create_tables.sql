
CREATE OR REPLACE DATABASE sqlQualityBanking;

USE sqlQualityBanking;

/* cliente_id, nombre, apellido, email, fecha_alta, pais */
CREATE OR REPLACE TABLE clientes(
   cliente_id int PRIMARY KEY,
   nombre varchar(255),
   apellido varchar(255),
   email varchar(255),
   fecha_alta date,
   pais varchar(255)
);

/* Transaccion_id, cliente_id, fecha, tipo, importe, moneda */
CREATE TABLE sqlQualityBanking.transacciones(
    transaccion_id int PRIMARY KEY,
    cliente_id int,
    fecha date,
    tipo varchar(255),
    importe decimal,
    moneda varchar(10),
    Constraint fk_cliente
    FOREIGN KEY (cliente_id)
    REFERENCES clientes(cliente_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);