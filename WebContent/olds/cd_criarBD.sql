create database carifpi;

create table carro{
idcarro BIGINT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(100),
marca VARCHAR(22),
placa VARCHAR(8),
foto VARCHAR(255),
preco_ven DECIMAL(8,2),
data_registro DATE,
PRIMARY KEY(idcarro)
};