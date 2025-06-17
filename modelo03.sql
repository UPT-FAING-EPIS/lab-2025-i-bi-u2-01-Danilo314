CREATE TABLE HECHO_PAQUETE_TRABAJO (
  id_paquete INT PRIMARY KEY,
  fecha DATE,
  costos DECIMAL(10,2),
  id_proyecto INT,
  id_responsable INT,
  id_localidad INT
);

CREATE TABLE DIM_PROYECTO (
  id_proyecto INT PRIMARY KEY,
  proyecto VARCHAR(100)
);

CREATE TABLE DIM_RESPONSABLE (
  id_responsable INT PRIMARY KEY,
  responsable VARCHAR(100),
  id_empresa INT
);

CREATE TABLE DIM_EMPRESA (
  id_empresa INT PRIMARY KEY,
  empresa VARCHAR(100)
);

CREATE TABLE DIM_LOCALIDAD (
  id_localidad INT PRIMARY KEY,
  localidad VARCHAR(100),
  id_pais INT
);

CREATE TABLE DIM_PAIS (
  id_pais INT PRIMARY KEY,
  pais VARCHAR(100)
);

CREATE TABLE DIM_CLIENTE (
  id_cliente INT PRIMARY KEY,
  cliente VARCHAR(100),
  telefono VARCHAR(20)
);