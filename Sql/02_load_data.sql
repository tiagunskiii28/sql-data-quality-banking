USE sqlQualityBanking;

/* ingesta de datos de clientes.csv a la tabla cliente */
LOAD DATA LOCAL INFILE 'data/clientes.csv'
INTO TABLE clientes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/* Ingesta de dstpod de transacciones.csv a la tabla de transacciones*/
LOAD DATA LOCAL INFILE 'data/transacciones.csv'
INTO TABLE transacciones
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED '\n'
IGNORE 1 ROWS;