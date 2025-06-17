CREATE TABLE DIM_PAIS (
  id_pais INT PRIMARY KEY,
  pais VARCHAR(100)
);

CREATE TABLE DIM_DESTINO (
  id_destino INT PRIMARY KEY,
  destino VARCHAR(100)
);

CREATE TABLE DIM_GRUPO_CC (
  id_grupo_cc INT PRIMARY KEY,
  grupo_de_centro_costos VARCHAR(100)
);

CREATE TABLE DIM_CENTRO_COSTO (
  id_centro_costo INT PRIMARY KEY,
  centro_costo VARCHAR(100),
  id_grupo_cc INT,
  FOREIGN KEY (id_grupo_cc) REFERENCES DIM_GRUPO_CC(id_grupo_cc)
);

CREATE TABLE DIM_MODO_TRANSPORTE (
  id_modo_transporte INT PRIMARY KEY,
  modo_transporte VARCHAR(100)
);

CREATE TABLE DIM_LOTE (
  id_lote INT PRIMARY KEY,
  peso DECIMAL(10,2),
  tarifa_importacion DECIMAL(10,2),
  tarifa_exportacion DECIMAL(10,2),
  id_pais INT,
  FOREIGN KEY (id_pais) REFERENCES DIM_PAIS(id_pais)
);

CREATE TABLE HECHO_ENVIO (
  id_envio INT PRIMARY KEY,
  fecha_envio DATE,
  costo_envio DECIMAL(10,2),
  id_lote INT,
  id_destino INT,
  id_centro_costo INT,
  id_modo_transporte INT,
  FOREIGN KEY (id_lote) REFERENCES DIM_LOTE(id_lote),
  FOREIGN KEY (id_destino) REFERENCES DIM_DESTINO(id_destino),
  FOREIGN KEY (id_centro_costo) REFERENCES DIM_CENTRO_COSTO(id_centro_costo),
  FOREIGN KEY (id_modo_transporte) REFERENCES DIM_MODO_TRANSPORTE(id_modo_transporte)
);