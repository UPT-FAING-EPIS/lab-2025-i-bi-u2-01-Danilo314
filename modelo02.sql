CREATE TABLE DIM_PAIS (
  id_pais INT PRIMARY KEY,
  pais VARCHAR(100)
);

CREATE TABLE DIM_DESTINO (
  id_destino INT PRIMARY KEY,
  destino VARCHAR(100),
  id_pais INT,
  FOREIGN KEY (id_pais) REFERENCES DIM_PAIS(id_pais)
);

CREATE TABLE DIM_TIPO (
  id_tipo INT PRIMARY KEY,
  tipo VARCHAR(100)
);

CREATE TABLE DIM_CLIENTE (
  id_cliente INT PRIMARY KEY,
  cliente VARCHAR(100),
  direccion VARCHAR(255),
  id_tipo INT,
  FOREIGN KEY (id_tipo) REFERENCES DIM_TIPO(id_tipo)
);

CREATE TABLE DIM_OPERADOR (
  id_operador INT PRIMARY KEY,
  operador VARCHAR(100)
);

CREATE TABLE DIM_AGENCIA (
  id_agencia INT PRIMARY KEY,
  agencia VARCHAR(100),
  id_operador INT,
  FOREIGN KEY (id_operador) REFERENCES DIM_OPERADOR(id_operador)
);

CREATE TABLE DIM_VIAJE (
  id_viaje INT PRIMARY KEY,
  descripcion VARCHAR(255),
  id_destino INT,
  FOREIGN KEY (id_destino) REFERENCES DIM_DESTINO(id_destino)
);

CREATE TABLE HECHO_RESERVA (
  id_reserva INT PRIMARY KEY,
  fecha DATE,
  id_cliente INT,
  id_viaje INT,
  id_agencia INT,
  FOREIGN KEY (id_cliente) REFERENCES DIM_CLIENTE(id_cliente),
  FOREIGN KEY (id_viaje) REFERENCES DIM_VIAJE(id_viaje),
  FOREIGN KEY (id_agencia) REFERENCES DIM_AGENCIA(id_agencia)
);