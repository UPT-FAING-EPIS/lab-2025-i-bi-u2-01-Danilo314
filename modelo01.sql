CREATE TABLE HECHO_RESERVA (
  id_reserva INT PRIMARY KEY,
  fecha DATE,
  id_cliente INT,
  id_viaje INT,
  id_agencia INT
);


CREATE TABLE DIM_CLIENTE (
  id_cliente INT PRIMARY KEY,
  cliente VARCHAR(100),
  direccion VARCHAR(200),
  id_tipo INT
);

CREATE TABLE DIM_TIPO (
  id_tipo INT PRIMARY KEY,
  tipo VARCHAR(50)
);

CREATE TABLE DIM_VIAJE (
  id_viaje INT PRIMARY KEY,
  descripcion TEXT,
  id_destino INT
);

CREATE TABLE DIM_DESTINO (
  id_destino INT PRIMARY KEY,
  destino VARCHAR(100),
  id_pais INT
);

CREATE TABLE DIM_PAIS (
  id_pais INT PRIMARY KEY,
  pais VARCHAR(100)
);

CREATE TABLE DIM_AGENCIA (
  id_agencia INT PRIMARY KEY,
  agencia VARCHAR(100),
  id_operador INT
);

CREATE TABLE DIM_OPERADOR (
  id_operador INT PRIMARY KEY,
  operador VARCHAR(100)
);